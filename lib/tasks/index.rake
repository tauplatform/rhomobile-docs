desc 'Index documentation'
task :index do
  puts "indexing now:"
  client = IndexTank::Client.new(ENV['SEARCHIFY_API_URL'])
  index = client.indexes(AppConfig['index'])

  # index.delete rescue nil
  # index.add rescue nil
  print "Waiting to initialize #{AppConfig['index']}..."
  while not index.running?
    print "."
    sleep 0.5
    $stdout.flush
  end
  Topic.all_topics.each do |doc|
    if File.exist?(doc) and File.basename(doc) != 'credits.md'
      name = name_for(doc)
      version = version_for(doc)   #right now uses directory scheme and hardcoded current version
      category = category_for(name) #right now uses directory scheme need to add multi category and other methods
      categories = {
          'category' => category,
          'version' => version,
          'chunknum' => '0'
      }
      variables = {
          0 => index_variable_for(version)
      }
      puts "...indexing #{name},#{version},#{category}"
      source = File.read(doc)
      puts "#{File.size(doc)}"
      topic = Topic.load(name, source)
      topic.text_only
      maxsize = 100000
      last_commit = '1293911429'
      begin
        rest_result = RestClient.get("https://api.github.com/repos/tauplatform/rhomobile-docs/commits?path=#{doc}", :Authorization => "token #{ENV['GIT_TOKEN']}").body

        if rest_result.code != 200
          puts ('Error communicating with site')
          parsed = JSON.parse(rest_result)
          puts parsed["message"]
        else
           parsed = JSON.parse(rest_result)
           last_commit = DateTime.parse(parsed[0]['commit']['committer']['date']).strftime('%s')
           puts last_commit
        end

      rescue Exception => e
        puts "Failed to get last commit date"
      end

      if topic.body.size() > maxsize
        puts "Needs to be chunked #{topic.body.size()}"
        startPos = 0
        chunknum = 0
        loop do
          endPos = startPos + maxsize
          if endPos > topic.body.size()
            endPos = topic.body.size()
          end
          chunk = topic.body[startPos,endPos]
          categories["chunknum"] = chunknum.to_s

          chunknum += 1
          puts "Indexing chunk[#{chunknum}]: #{startPos},#{endPos}:#{chunk.size}"
          if chunk.size > maxsize
            puts "chunk size over limit WTF? - ignoring for now"
          else
            # index.document(name+chunknum.to_s).delete()
            begin
              result = indextank_document = index.document(name+chunknum.to_s).add({:title => topic.title, :text => chunk, :dockey => name, :docexternal => false, :category => category, :version => version, :timestamp => last_commit})
              puts "=> #{result}"
            rescue
              puts "Failed to add #{name} to indextank_document."
            end

            puts "Updating categories and variables..."
            index.document(name+chunknum.to_s).update_categories(categories) rescue puts "Failed to update categories of #{name}!"
            index.document(name+chunknum.to_s).update_variables(variables) rescue puts "Failed to update variables of #{name}!"
          end

          startPos = endPos + 1
          break if endPos == topic.body.size()
        end
      else
        # index.document(name).delete()
        # puts 'going to index'
        begin
          result = indextank_document = index.document(name).add({:title => topic.title, :text => topic.body, :dockey => name, :docexternal => false, :category => category, :version => version, :timestamp => last_commit})
          puts "=> #{result}"
        rescue
          puts "Failed to add #{name} to indextank_document."
        end

        puts "Updating categories and variables..."
        index.document(name).update_categories(categories) rescue puts "Failed to update categories of #{name}!"
        index.document(name).update_variables(variables) rescue puts "Failed to update variables of #{name}!"
      end
    end
  end
  puts "finished indexing"
end
