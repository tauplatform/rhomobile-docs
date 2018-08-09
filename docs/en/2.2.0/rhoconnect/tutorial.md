# RhoConnect Tutorial

## Adding Synchronized Data to Your Backend Application with RhoConnect

RhoConnect is a synchronization framework consisting of a backend application (a client component on the mobile device) and a server component (a RhoConnect application) that runs on any server capable of running Ruby. The backend application can be a Rhodes application, or another mobile application written without the use of Rhodes (such as an iOS/Objective C or Android/Java application).

RhoConnect requires that you write a small amount of code for the query, create, update and delete operations of your particular enterprise backend. You can write this code in Ruby as a RhoConnect source adapter, or you can write this code as a RhoConnect plugin application written in Java, .NET, or Ruby on Rails.

Full documentation of all capabilities of RhoConnect is in the [RhoConnect Developer Reference](introduction).

## Installing the RhoConnect Dependencies

* Install RhoConnect [from the command line](install) or by installing [RhoMobile Suite](../rhomobile-install).

* If you have a RhoConnect license that has been sent to you, you can replace the settings/license.yml file as described [here](licensing).

Now you are ready to write your RhoConnect app. You can generate an app with RhoStudio, or with the RhoConnect app command.

### Generating a RhoConnect App with RhoStudio

In RhoStudio, select File->New->Project...

The New Project window opens. Select the RhoConnect application wizard and click the Next button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/new-project-rhoconnect.png"/>

Enter the name for your RhoConnect application in Project name; in this case, "storeserver". You may specify a specific folder for your destination where your project is stored, by default, the destination is your RhoStudio workspace folder. Then press the Finish button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/rhoconnect-application-wizard.png"/>

### Generating a RhoConnect App from the Command Line

	:::term
	$ rhoconnect app storeserver
	$ cd storeserver

Next, install the application's dependencies. RhoConnect applications use [bundler](http://gembundler.com/) to manage dependencies, so you can install them with:

	:::term
	$ [sudo] bundle install

**If you are running this for the first time on Mac or Linux**, you will need to install [dtach](http://dtach.sourceforge.net/):

	:::term
	$ [sudo] rhoconnect dtach-install

Now you can run redis and your RhoConnect app:

	:::term
	$ rhoconnect redis-start
	$ rhoconnect start

If everything went well you should see:

	[01:48:15 PM 2012-08-04] Rhoconnect Server v3.3.4 started...

## Defining RhoConnect Source Adapters

Once RhoConnect is installed we're ready to build a RhoConnect source to integrate with our backend application. To define a RhoConnect source you just need to identify a handful of operations to interact with your backend data source: login, query, sync, create, update, delete and logoff. For more information please see the [RhoConnect source adapter](source-adapters) documentation.

### Generating the Source Adapter from RhoStudio

To generate a RhoConnect source adapter and create the associated Controller templates, right-click on the application project in the Project Explorer and select New->Rhoconnect Source Adapter.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/menu-new-rhoconnect_source-adapter.png"/>

In the Source Adapter Information window, enter the name for your source adapter: in this case, "product".

Click the Finish button to create the source adapter.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/source-adapter-information.png"/>

After pressing the Finish button, you'll see the RhoConnect source adapter generator script output in the output console (Rhomobile build console).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/rhoconnect-source-generator-output.png"/>

You should now have files for the source adapter in your storeserver application. The files are organized as follows:

* product.rb -> This is the source adapter file which contains the login, query, create, update, delete and logoff methods to call a backend service. You will add code to implement these methods.
* product_spec.rb -> This file contains the spec with tests which relate to our source adapter.

You can open these files for editing by clicking on them in the Project Explorer.

### Generating the Source Adapter from the Command Line

From the command line, navigate to the main folder for your RhoConnect app: in this case, storeserver.

Then run the command to generate a source adapter for the product model. The product model is used as an example for a Rhodes storemanager in the [RhoStudio tutorial](../rhostudio.tutorial) and the [documentation to generate a Rhodes application](../rhodes/generator).

	:::term
	$ rhoconnect source product

which generates two files, the product adapter and the product spec:

	Generating with source generator:
     	[ADDED]  sources/product.rb
     	[ADDED]  spec/sources/product_spec.rb

You can use the command line to navigate to the sources/product.rb file in your RhoConnect application folder.

### Understanding the Source Adapter File

The generated source adapter file (in this case, product.rb) is similar to the code listing below. It has code to raise an exception for any required method. Note that you don't need to use the source generator; you can create a Ruby file and place it into your lib directory. The class name (in this case, product) of the RhoConnect source adapter must match that of the Rhodes client model.

	:::ruby
	class Product < SourceAdapter
	  def initialize(source)
	    super(source)
	  end

	  def login
	    # TODO: Login to your data source here if necessary
	  end

	  def query
	    # TODO: Query your backend data source and assign the records
	    # to a nested hash structure called @result. For example:
	    # @result = {
	    #   "1"=>{"name"=>"Acme", "industry"=>"Electronics"},
	    #   "2"=>{"name"=>"Best", "industry"=>"Software"}
	    # }
	    raise SourceAdapterException.new("Please provide some code to read records from the backend data source")
	  end

	  def sync
	    # Manipulate @result before it is saved, or save it
	    # yourself using the Rhoconnect::Store interface.
	    # By default, super is called below which simply saves @result
	    super
	  end

	  def create(create_hash)
	    # TODO: Create a new record in your backend data source
	    # If your rhodes rhom object contains image/binary data
	    # (has the image_uri attribute), then a blob will be provided
	    raise "Please provide some code to create a single record in the backend data source using the create_hash"
	  end

	  def update(update_hash)
	    # TODO: Update an existing record in your backend data source
	    raise "Please provide some code to update a single record in the backend data source using the update_hash"
	  end

	  def delete(delete_hash)
	    # TODO: write some code here if applicable
	    # be sure to have a hash key and value for "object"
	    # for now, we'll say that its OK to not have a delete operation
	    # raise "Please provide some code to delete a single object in the backend application using the object_id"
	  end

	  def logoff
	    # TODO: Logout from the data source if necessary
	  end
	end

The generator will also edit settings/settings.yml and add the product adapter to the sources section with some default options:

	:::ruby
	#Sources
	:sources:
  	  Product:
        :poll_interval: 300

The next step is for you to fill in the login, query, create, update, delete and logoff methods with your own code to call a backend service.

## A RhoConnect Query

If you're doing a readonly non-authenticated source adapter, you can just write one method, query, to retrieve records as we describe here. The following is a sample query method to interact with a simple product catalog (available at http://rhostore.herokuapp.com) that exposes a REST interface.  Note that RhoConnect can work with any protocol. This example shows JSON over HTTP with a REST interface, since that is common. The RhoConnect source adapter is Ruby code and there are ruby libraries (aka gems) that will make it easy to connect to and parse whatever you need -- the query code would just be slightly different.

For a more complete example of rewriting the source adapter methods (such as create, update, and delete), refer to the [source adapter example](source-adapters#sample-adapter) in the RhoConnect Developer Reference.

Our sample web service for returning all products in the catalog (http://rhostore.herokuapp.com/products.json) returns data like this:

	:::json
	[
  	  {
		"product": {
		  "name": "iPhone",
		  "brand": "Apple",
		  "updated_at": "2010-05-11T02:04:57Z",
		  "price": "$299.99",
		  "quantity": "5",
		  "id": 649,
		  "sku": "1234",
		  "created_at": "2010-05-11T02:04:57Z"
		}
	  },
  	  {
	    "product": {
		  "name": "Accord",
		  "brand": "Honda",
		  "updated_at": "2010-05-13T22:24:48Z",
		  "price": "$6000",
		  "quantity": "",
		  "id": 648,
		  "sku": "123",
		  "created_at": "2010-05-11T02:04:53Z"
		}
	  }
	]

The Ruby code for parsing that data, sources.product.rb, is listed below. It uses the standard Ruby JSON library and the RestClient library for easy access to the REST web service. This example uses the id of the product record as the hash key. Note that the key for this hash must be a string and the value can be any set of name-value pairs which are represented as a Ruby hash. The instance variable @result must be set by the query method to this "hash of hashes", indexed by a unique identifier, so that the base SourceAdapter class sync method can populate Redis data store.

You can edit sources/product.rb within RhoStudio, or you can navigate to it within your RhoConnect application folder and edit it with a text editor.

We need to declare the standard libraries that we are using at the top of the sources/product.rb file:

	:::ruby
	require 'json'
	require 'rest_client'

For convenience, we'll add an instance variable @base which contains the base URL of the web service and sets the value in the constructor:

	:::ruby
  	def initialize(source)
      @base = 'http://rhostore.herokuapp.com/products'
      super(source)
    end

Then fill in the query method:

	:::ruby
  	def query
      parsed=JSON.parse(RestClient.get("#{@base}.json").body)

      @result={}
      if parsed
        parsed.each do |item|
          key = item["product"]["id"].to_s
          @result[key]=item["product"]
        end
      end
    end

**NOTE: The code above could be much more concise, but it is written to be easily readable by programmers who are unfamiliar with the Ruby language. If you are new to Ruby, you can read [Ruby from other languages](http://www.ruby-lang.org/en/documentation/ruby-from-other-languages/) for a good introduction.**

Each hash key in the inner hash represents an attribute of an individual object.  All datatypes must be strings (so the hash values need to all be strings, not integers).

For example:

	:::ruby
  	@result = {
	  "1" => {
	    "name" => "inner tube",
	    "brand" => "Michelin"
	  },
	  "2" => {
		"name" => "tire",
		"brand" => "Michelin"
	  }
	}

## Testing Sync from the Client

From RhoStudio, select your RhoConnect project in the Project Explorer, and select Run->Run Configurations… from the menu. The Run Configurations window appears.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/run-configurations-rc.png"/>

To create a new build configuration for your application, select RhoConnect Application. Then either right-click on RhoConnect Application or click the New button. A new configuration appears under RhoConnect Application. Click the Run button to run it.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/run-config-rhoconnect-new-rc.png"/>

If you are working from the command line, first make sure you are running redis. From the folder in which your app is located, run this command.

	:::term
	$ rhoconnect redis-start

Then start (or restart) your server:

	:::term
   	$ rhoconnect start

The code for the source adapter loads when the server starts. If you have a syntax error in your Ruby code, it will be reported and the server will not start; however, if you have a runtime error, that will not be reported until the source adapter is called.

Make sure your server URL is configured in the Rhodes app. If your server is running on YourIPAddress with the port 9292, the following line should be at the bottom of your corresponding Rhodes app, storemanager/rhoconfig.txt:

	syncserver = 'http://YourIPAddress:9292/application'

**NOTE: If you are using Android, syncserver cannot be set to localhost.**

Enable sync in your corresponding Rhodes app, storemanager/app/Product/product.rb model:

	:::ruby
	class Product
  	  include Rhom::PropertyBag

  	  enable :sync
	end

To get a feel for what is happening, it is helpful to watch the server log (the output of `rhoconnect start`) in one window, and tail the client log in another window. For example, on the iPhone, display the end of the client log with:

	:::term
   	$ tail -f rholog-User.txt

To sync with the RhoConnect server, the Rhodes client must log in. The Rhodes generated app includes some screens for login and other common functions, which you will typically modify to suit the design of your application.  The generated UI is useful since it allows you to focus on the core functionality of your application before implementing the important, but mundane, details of user authentication and settings.

1. From the home page in the Rhodes app, click on the login button in the upper right corner. Alternatively, you can click on the tool icon at the bottom of the screen to go to the Settings screen, and click the login button from there.
<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/storemanager-rhosimulator-home-arrows.png"/>

2. Login using any name & password. The generated code allows any login, but you can modify that in application.rb.
<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/rhosimulator-login.png"/>

3. If login is successful, you will see a Client ID in the settings screen. The ClientID is generated the first time you log in and is stored in the client database.  It serves as a unique identifier which is required for rhoconnect. (Note: this value will persist across logins, but if you reset the client database or the user re-installs the app, a new ClientID will be generated.)
4. Sync is triggered automatically. Click on the home icon and then select "Products" and you should see the list of product records from the server.

This example shows a couple of iPhone products.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/rhosimulator-product-list.png"/>

## Creating Objects with RhoConnect

For your create method, the RhoConnect server will pass you a hash containing the new record, called "create_hash". For example, it might be:

	:::ruby
	{
	  "name" => "Hovercraft",
	  "brand" => "Acme"
	}

The RhoConnect sources/product.rb create method will be called once for every object that has been created on the client since the last sync.  Your code for create (or edit or delete) needs to use this populated array to do its work.  Below is an example of a create method against the [rhostore](http://rhostore.herokuapp.com), which accepts an HTTP POST to perform a create action. The create method should return a unique id string for the object for it to be later modifiable by the client. If no id is returned, then you should treat the client object as read only, because it will not be able to be synchronized.

	:::ruby
	def create(create_hash)
      result = RestClient.post(@base, :product => create_hash)

      # after create we are redirected to the new record.
      # The URL of the new record is given in the location header
      location = "#{result.headers[:location]}.json"

      # We need to get the id of that record and return it as part of create
      # so rhoconnect can establish a link from its temporary object on the
      # client to this newly created object on the server

      new_record = RestClient.get(location).body
      JSON.parse(new_record)["product"]["id"].to_s
    end

You will need to restart RhoConnect to reload the source adapter after modifying code. Note that the object will be created on the client right away, but it will be sent to the server on the next sync.

## Authentication

The generated RhoConnect application code includes a file at the root of the directory called "application.rb" which contains a hook for authentication. The complete file looks like this:

	:::ruby
	class Application < Rhoconnect::Base
  	  class << self
        def authenticate(username,password,session)
      	  true # do some interesting authentication here...
        end

        # Add hooks for application startup here
        # Don't forget to call super at the end!
        def initializer(path)
          super
        end

        # Calling super here returns rack tempfile path:
        # i.e. /var/folders/J4/J4wGJ-r6H7S313GEZ-Xx5E+++TI
        # Note: This tempfile is removed when server stops or crashes...
        # See http://rack.rubyforge.org/doc/Multipart.html for more info
        #
        # Override this by creating a copy of the file somewhere
        # and returning the path to that file (then don't call super!):
        # i.e. /mnt/myimages/soccer.png
        def store_blob(blob)
          super #=> returns blob[:tempfile]
        end
      end
    end

    Application.initializer(ROOT_PATH)

If your back end web service requires authentication, add code to the authenticate method and return true if authentication was successful or false to deny access to the application from this client. For example:

	:::ruby
	def authenticate(username, password, session)
  	  # ... connect to backend using API and authenticate ...
  	  if success
        # save the data for later use in the source adapter
        Store.put_value("username:#{username}:token",username)
      end
      return success
    end

## Using RhoConnect from Objective C

You don't have to use Rhodes to use RhoConnect. For this scenario, we offer an [Objective C client for RhoConnect](client).
