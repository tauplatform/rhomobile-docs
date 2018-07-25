Binary Objects and Blob Sync
===
Synchronizing images or binary objects between RhoSync and the client is declared by having a 'blob attribute' on the [Rhom model](../rhodes/rhom).  This instructs the client to download the blob attribute's value (in this case a url) separately from the rest of the data and save it to the device file system.

**NOTE: The example below shows how to synchronize an image created by the device's camera, but could be applied to any arbitrary files on the device.**

## Synchronizing from Device to RhoSync
Suppose you have a [Rhom model](../rhodes/rhom) called "Image" and you have a [camera callback function](../rhodes/device-caps#camera) defined in the Image model's controller:

	:::ruby
	def camera_callback
	  if @params['status'] == 'ok'
	    #create image record in the DB
	    image = Image.new({'image_uri'=>@params['image_uri']})
	    image.save
	    SyncEngine.dosync
	  end  
	  #reply on the callback
	  render :action => :ok, :layout => false
	end
	
When this is executed in a Rhodes application:

* This callback triggers a sync after saving saving an image.  

* Then Rhodes will push the image file to the RhoSync application by HTTP POST.

* `application.rb#store_blob` is called for optional pre-processing of the file.  This is useful in cases where you want to preserve the filename that Rhodes sent.  

The following example stores the `:filename` argument as another object attribute.

	:::ruby
	def store_blob(obj,field_name,blob)
      obj['filename'] = blob[:filename]
      super
    end

* The RhoSync source adapter tied to this Rhom model processes the blob in the `create` method.

The following example takes the blob and stores it in S3:

	:::ruby
	def create(create_hash,blob)
	  # this would be a blob attribute, points to a tempfile 
	  # containing the raw post data
	  name = create_hash["image_uri"] 
	  
	  # filename we saved in application.rb#store_blob method
	  basename = create_hash["filename"]
	  S3Object.store(
	    basename,
	    open(name),
	    @bucket,
	    :access => :public_read
	  )
	  basename #=> object id here is the filename
	end

In this example, we store the image blob to s3 so we can query it later.  See the "image" source adapter that comes with [the rhodes-samples-server](https://github.com/rhomobile/rhodes-samples-server/blob/master/sources/image.rb).

## Query for Blobs in the Source Adapter

In your query call, you should store the URL to images in the blob attribute so that the device can fetch the image when it synchronizes.

	:::ruby
	def query(params=nil)
	  @result={}
	  Bucket.find(@bucket).objects.each do |entry|
	    new_item = {
		  'image_uri-rhoblob' => @baseurl+@bucket+'/'+File.basename(entry.key)
	    }
	    @result[entry.key] = new_item
	  end
	  @result
	end

Here we save the image URL to an attribute `image_uri-rhoblob`.  This will correspond to the `image_uri` attribute in our Rhom model above.

**NOTE: In order for Rhodes to automatically recognize a blob attribute, the attribute name must end with "-rhoblob".  In the above example, `image_uri` was our Rhom attribute, so our source adapter assigned `image_uri-rhoblob` with the blob URL.**

A complete image source adapter that stores files in S3 might look like:

	:::ruby
	require 'aws/s3'
	class Image < SourceAdapter
	  include AWS::S3


	  def initialize(source,credential)
	    AWS::S3::Base.establish_connection!(
	      :access_key_id      => ENV['AMAZON_ACCESS_KEY_ID'],
	      :secret_access_key  => ENV['AMAZON_SECRET_ACCESS_KEY']
	    )
	    @baseurl = 'https://s3.amazonaws.com/docs.tau-technologies.com/images/'
	    @bucket = 'rhodes-samples-images'
	    super(source,credential)
	  end

	  def query(params=nil)
	    @result={}
	    Bucket.find(@bucket).objects.each do |entry|
	      new_item = {
		    'image_uri-rhoblob' => @baseurl+@bucket+'/'+File.basename(entry.key)
	      }
	      @result[entry.key] = new_item
	    end
	    @result
	  end

	  def create(create_hash)
	    puts "Creating: #{create_hash.inspect}"
	    name = create_hash["image_uri"]
	    basename = create_hash["filename"]
	    S3Object.store(
	      basename,
	      open(name),
	      @bucket,
	      :access => :public_read
	    )
	    basename
	  end

	  def delete(delete_hash)
	    puts "Removing: #{delete_hash.inspect}"
	    S3Object.delete delete_hash['id'], @bucket
	  end
	end

## Rhodes Sample Code
See controller and view in the `/app/Blob` directory of the [System API Samples application](http://github.com/rhomobile/rhodes-system-api-samples/tree/master) for a complete Rhodes code sample.
