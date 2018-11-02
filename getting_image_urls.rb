require 'uri'
require 'open-uri'
require 'fileutils'

urls = []
failed_urls = []

md_files = Dir.glob("**/*").select do |fn|
  File.extname(fn) == '.md'
end

md_files.each {|fn|
  #puts "processing #{fn}"
  content = File.read(fn)
  urls += URI.extract(content, ['http', 'https'])
}

allowed_extensions = %w(png gif jpeg jpg)

urls = urls.select do |each|
  ext1 = File.extname(each)[1..3] # png gif jpg
  ext2 = File.extname(each)[1..4] # jpeg
  (allowed_extensions.include?(ext1)) || (allowed_extensions.include?(ext2))
end

urls = urls.collect do
|each|
  idx = each.size

  ext = File.extname(each)[1..3] # png gif jpg
  if allowed_extensions.include? ext
    idx = each.rindex('.') + 3
  end

  ext = File.extname(each)[1..4] # jpeg
  if allowed_extensions.include? ext
    idx = each.rindex('.') + 4
  end

  each[0..idx]
end

urls = urls.select {|each| (each.include? 's3.amazonaws.com') || (each.include? 'https://s3.amazonaws.com/docs.tau-technologies.com/images/')}

File.open('urls.txt', 'w+') do |f|
  urls.each {|element| f.puts(element)}
end


# Must be somedomain.net instead of somedomain.net/, otherwise, it will throw exception.
urls.each {|url|
  begin
    puts "Processing url: #{url}"
    if URI(url).path != ''
      path = File.join('/Users/mva/temp/images/', URI(url).path)

      dirname = File.dirname(path)
      unless File.directory?(dirname)
        puts "directory creation #{dirname}"
        FileUtils.mkdir_p(dirname)
      end

      if !File.exist?(path)

        puts "Downloading url: #{url}"
        File.open(path, 'wb') do |saved_file|
          open(url, 'rb') do |read_file|
            saved_file.write(read_file.read)
            puts "image is saved to path #{path}"
          end
        end

      end
    else
      failed_urls.push url
    end

  rescue => e
    failed_urls.push url
    puts e
  end
}

File.open('failed_urls.txt', 'w+') do |f|
  failed_urls.each {|element| f.puts(element)}
end


puts 'Done'
