Image Uploading
========
This tutorial will guide you through how to add mapping to your application. You should have a backend that provides the image upload location.


Source Code
-----------
The source code for this example is located here.

 * [Rhodes Application](https://github.com/rhomobile/webinar-samples/tree/master/imageupload)

Pre-requisite Reading
---------------------
 * [Rhodes Tutorial](https://github.com/rhomobile/webinar-samples/tree/master/contact)
 * [Rhosync Tutorial](https://github.com/rhomobile/webinar-samples/tree/master/contact-server)
 * [Webinar Video](http://vimeo.com/13281215)

## Setup
This tutorial assumes that you know how to generate a Rhodes app and can successfully sync with a backend system. If you do not know how to do this, see [Pre-requisite Reading]().

To prepare for this demo you should set up a Rhodes app and model:

 * Your model should have the field image\_uri.

Enter the following commands to create an app named imageupload, and a model named image with the parameter image\_uri.

	:::term
	$ rhogen app imageuplaod
	$ cd imageupload
	$ rhogen model image image_uri

## Specifying your data
### Specifying your image as a blob

Open your rhodes project -- in this case, the contents of the imageupdoad folder -- in your text editor.

In your model, specify that the image is a blob. In app/Image/image.rb, enter the code to enable syncing. This line might already be there as a comment -- `#enable :sync` -- and you need only uncomment it. After the comment `#add model specific code here`, add the code to specify that anything stored as image\_uri is a blob.

	:::ruby
	enable :sync                   # enable syncing

	property :image_uri, :blob     # the image is a blob

### Specifying camera capability

You will specify camera capability for your mobile device. At the end of app/build.yml -- this yml being where the mobile device types are defined -- add the following code:

	:::yaml
	capabilities:
	- camera

### Specifying the sync server

In the configuration file, rhoconfig.txt, specify the url of a sync server. That means filling in the blanks for `syncserver = ''`. We can use a server that is already set up for this application to capture the images.

	syncserver = 'http://rhodes-samples-server.heroku.com/application'

## Adding list items to display and delete photos

Now edit the views to add new list items. In app/Image/index.erb, there is a list containing a loop that goes though each image: `<% @images.each do |image| %>`. (Note: You may need to change this code statement to `<% @images.each do |obj| %>` to have the application work properly.) The loop contains one list item containing one href link to image\_uri; a menu link type. Change the link to a link that displays the image. Then add an href link in that list so that we can delete that image; get the correct classes for this link (title and disclosure\_indicator) from app/index.erb.

	:::html
	<li>
	  <img src="<%= obj.image_uri %> width="300px"></img>   # display the image
	</li>
	<li>
	  <a href="<%=url_for(:action => :delete, :id => obj.object)%>">   # link to delete the image
	     <span class="title">Delete</span>        # get these classes from app/index.erb
 	     <span class="disclosure_indicator"/>
	  </a>
	</li>

## Adding links to create images, and to check the device for a camera and take a picture

Before the loop containing the display in=mage and the delete link, add a link to let us create images. Also add a check in the system properties to see if the mobile device has a camera, and a link that allows up to take a picture with the camera. (Note: In the webinar video, a slight error was made: `href="<` was used instead of `href="<%`. This slight error is corrected later in the video at 16:22.)

	:::html
	<li>
	  <a href="<%=url_for(:action => :edit)%>">
	     <span class="title">Choose picture</span>
 	     <span class="disclosure_indicator"/>
	  </a>
	</li>

	<% if System::get_property('has_camera') %>
	<li>
	  <a href="<%=url_for(:action => :new)%>">
	     <span class="title">Take picture</span>
 	     <span class="disclosure_indicator"/>
	  </a>
	</li>
	<% end %>

## Linking to the image model

In the main index, app/index.erb, within the div for the content class, there is a blank href link. Edit that link to link to the Image model.

	:::html
	<li>
	  <a href="Image">
	    <span class="title">Images</span>
 	    <span class="disclosure_indicator"/>
	  </a>
	</li>

## Test run the app

From the command line, run the application to make sure it works and is ready for you to begin plugging in controls (in the webinar video, this happens at 10:07). The command `rake run::iphone` runs the application on the iPhone simulator. Your imageupload application should show the Images link, and clicking on that link should show the Choose picture link. Note that the Take picture link does not show up in the simulator because the simulator does not have a camera.

## Entering the controls to take a picture and choose a picture

Edit the controller file, app/Image/image\_controller.rb.

Delete the Show method, which starts with the lines `# GET /Image, def show`.

Edit the new method code to take a picture, render nothing, and callback. Then add code to choose a picture, render nothing, and callback. Take picture opens the camera, and Choose picture opens the image picker.

	:::ruby
	# GET /Image/new
	def new
	  Camera::take_picture(url_for :action => :camera_callback)  # take a picture
	  ""               # render nothing
	end

	def edit
	  Camera::choose_picture(url_for :action => :camera_callback)   # choose a picture
	  ""
	end

Enter the code for the camera callback. If the status is ok, then create the image\_uri in the database and save the image. Then go to the index page with WebView.navigate to display the lists.

	:::ruby
	def camera_callback
	  if @params['status'] == 'ok'
	    image = Image.new({'image_uri' => @params['image_uri']})
	    image.save
	  end

	  WebView.navigate( url_for :action => :index )
	  ""
	end

Delete the old edit method, the create method, and the update method, which start with the lines `# GET /Image{1}/edit`, `# POST /Image/create`, and `# POST /Image{1}/update`.

Leave the delete method exactly as generated. Save your work.

## Test run the app again, add photos to the iPhone simulator, and sync

From the command line, run the application again; this happens at 16:48 in the webinar video.

	:::term
	$ rake run::iphone

You will want to add some photos to the photo album in the simulator. On the Macintosh, open Photos in the iPhone simulator, drag a photo from the Macintosh into the simulator, click and hold on the photo in the simulator until the Save button appears, and click on the Save button.

Now you can go to the Imageupload app, open it, click on Images, then on Choose picture (note that Take picture does not appear, the simulator has no camera), and you can select pictures from the thumbnails in Saved Photos. Click a picture thumbnail, and click the Choose button. The picture is now stored in the database.

You can also select Delete to delete a picture from the database.

Here is what is happening. In the code below from the index page, Image/index.erb, when you have images, the application iterates through each image\_uri and displays the images. 

	:::html
	<% @images.each do |obj| %>   # When you have images, iterate through them.

           <li>
              <img src="<%= obj.image_uri %>" width="300px"></img>             # Display the image
           </li>

	   <li>
	      <a href="<%=url_for(:action => :delete, :id => obj.object)%>">   # Delete the image
	        <span class="title">Delete</span>
	        <span class="disclosure_indicator"/>
	      </a>
	   </li>

	<% end %>

In the code below from the controller, Image/image\_controller.rb, we are saving to an image\_uri attribute on our model that we defined in the image model, Image/image/rb, as being a blob (property :image\_uri, :blob).

	:::ruby
	def camera_callback
	   if @params['status'] == 'ok'
	      image = Image.new({'image_uri' => @params['image_uri']})   # image_uri attribute in the model
	      image.save                                                 # save
	   end

In the simulator, you can do a sync. On the Images page in the imageupload app, click on Home, then on Login, then login with the username and password. In this example, username is b, password is blank. The app will log into the sample server and sync the image data. Go to the Images controller again by clicking the Home icon. There will be some pictures that are stored on the sample server. you can click Choose picture and select a photo, then go back to Home, and click sync to sync that photo also. You now have the images synced up to the sample server.

## Looking at the sample server code

The code in this section is not part of the imageupload application, and is presented only to show how imageupload interacts with a server.

Now let's quickly look at the Rhodes sample server that the imageupload app is syncing with.

In this server's setting.yml, the poll interval is only 10 seconds for the images so it will update quickly. In its image.rb, it establishes a connection with s3, takes the images being uploaded, and stores them into s3. 

Here is that code from the server's image.rb.

	:::ruby
	def initialize(source, credential)       # Establish the connection with s3.
	  AWS::S3::Base.establish_connection!(
	    :access_key_id => ENV['AMAZON_ACCESS_KEY_ID'],
	    :secret_access_key => ENV['AMAZON_SECRET_ACCESS_KEY']
	  )
	  @baseurl = 'https://s3.amazonaws.com/docs.tau-technologies.com/images/'  # Set up the base url.
	  @bucket = 'rhodes-samples-images'      # Set up the bucket.
	  super(source,credential)
	end

	def query(params=nil)
	  @result={}
	  Bucket.find(bucket).objects.each do |entry|
	    # Get the image as a blob, and give it a url for our images.
	    # image_uri is our our model attribute, -rhoblob indicates it is a blob attribute.
	    new_item = {'image_uri-rhoblob => @baseurl+@bucket+'/'+File.basename(entry.key)}
	    puts  "Found: #{entry}"
	    @result[entry.key] = new_item
	  end
	  @result
	end

	def create(name_value_list)
	  puts "Creating: #{name_value_list.inspect}"   # When you do a sync,
	  name = name_value_list["image_uri"]     # the name-value list comes in as image_uri.
	  basename = name_value_list["filename"]  # the filename is the one on the Rhosync server.
	  # Store it locally on the file system.
	  S3Object.store(
	    basename,
	    open(name),
	    @bucket,
	    :access => :public_read
	  )
	  basename
	end

In the server's application.rb, set the filename as the blob filename that just came in from the create method in image.rb.

	:::ruby
	def store_blob(obj,field_name,blob)
	  obj['filename'] = blob[:filename]
	  super
	end

## Uploading images directly off the device and uploading to your web server

Back to the imageupload application. Another way we can upload images is to grab images directly off your device. Rather than use Rhosync to sync your data, grab the file directly off the device.

Consider the difference between redirect and WebView.navigate. Redirect is used in a method to display something, while you use WebView.navigate in a callback to load a specific uri (the camera\_callback method). In a callback, you are not in the process of loading a page so if you redirect, nothing will happen because the outputs from the callback are ignored because they are not being called through the web process it is on under the thread. Therefore, you need WebView.navigate in the callback. In the upload method that you create here, you use redirect.

In app/Image/index.erb, create another link in the image loop for uploading the image.

	:::html
	<li>
	   <a href="<%=url_for(:action => :upload_image, :id => obj.object)%>">
	       <span class="title">Upload</span>
	       <span class="disclosure_indicator"/>
	   </a>
	</li>

In our application's controller, app/Image/image\_controller.rb, create a method that uploads an image. Get the real path to the image, not the blob path, with Rho::PhoApplication::get\_blob\_path. Then we can do standard file operations, like uploading it to a web service.

	:::ruby
	def upload_image
	  @image = Image.find(@params['id'])
	  realpath = Rho::RhoApplication::get_blob_path(@image.image_uri)  # loads the image_uri, the real path.
	  Rho::AsyncHttp.upload_file(                                      # upload the file
	    :url => "http://some.service.here.com/upload"),                # replace this url with yours
	    :filename => realpath
	    :callback => (url_for :action => :http_callback )
	  )
	  
	  redirect :action => :index
	  
	end

