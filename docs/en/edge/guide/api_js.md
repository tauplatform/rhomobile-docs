# Using RhoMobile JavaScript APIs
By default RhoMobile generates one JS file with common APIs for all core modules and modules from extensions section in build.yml. This file includes on your page with the code:

	:::html
	<script charset="utf-8" src="/public/api/rhoapi-modules.js"></script>

You may also include only the modules you intend to use, to improve page loading times. 
To do this, add option separate_js_modules to root of build.yml

	:::yaml
	separate_js_modules: true 

The Rhomobile will generate JS API for each module in separate file with name Rho.<Module Name>.js like Rho.Barcode.js

You must include the file `rhoapi.js` prior to including the specific JS modules. The `rhoapi.js` file creates the Rho name-space needed for the JavaScript APIs to function properly.


	:::html
	<script charset="utf-8" src="/public/api/rhoapi.js"></script>
	<script charset="utf-8" src="/public/api/Rho.Barcode.js"></script>

### JavaScript ORM
If you are going to be using the JS ORM API, you'll also need to include this line in any files that will be using it:

	:::html
	<script type="text/javascript" charset="utf-8" src="/public/api/rhoapi-modules-ORM.js"></script>

## JavaScript RhoMobile Application Structure
The following application structure is what is minimally required to build a JavaScript RhoMobile Application. You can still use the [App Generator](creating_a_project#creating-a-project-with-rhostudio) to create the default structure, but then remove the `app` folder that is generated for a `Ruby` MVC app.

	:::html
	- build.yml
	- rhoconfig.txt (start_path points to starting html page)
	- rakefile
	- icon (folder for application icon)
	- public (root folder for 'web application')
	
	
 You may generate js app from CLI with command	
		:::term
    	rhodes jsapp <Application Name>

## Build.yml settings
Be sure to include the extensions and capabilities that are required for the APIs that are being used. In addition, you should specify the following setting in the `build.yml` file:
	:::yaml
	javascript_application: true

When this flag is specified, the Ruby VM will not start at application start, and all ruby files will be ignored.

**NOTE: If you do not specify this parameter and remove your `app` folder then the build process will fail.**

## Using JS APIs from a Web Server Application
To load application files to the RhoMobile application from an external Web server - set `start_path` in `rhoconfig.txt` to point to http:// or https:// protocol URI
	:::ruby
	start_path='http://heroku.com/myapp/index.html'

To use Common APIs you have to copy `rhoapi-modules.js` to your web server application, so it can be loaded from your html pages. [Read More](webapps#using-rhomobile-js-apis) about using RhoMobile 6 JavaScript APIs from a web server application.

## Using your own objects
Some API classes support instance objects. This allows you to maintain your own objects and assign different properties to them.

In the following example we want to save a reference to the front facing camera of the device so that we can manipulate the front facing camera properties separate from the rear-facing camera:

	:::javascript
	var desiredCamera;
	Rho.Camera.enumerate(function (e)
		{
			if (e.type == Rho.Camera.FRONT_TYPE)
	desiredCamera = e;
	});

We can then reference instance methods on that object

	:::javascript
	var cameraProperties =
		{desiredWidth:1024, desiredHeight:768};

	desiredCamera.take_picture(cameraProperties,
		fnHandlePicture(e));


## Setting Properties
There are a few different ways you can set properties.

### Using the default instance
One way is to use the default instance of the API class. This will change the property of the object in a global sense until it is changed again (or the application is exited):

	:::javascript
	Rho.Class.Property = value;

For example the following snippet will turn of the `illuminationMode` for the default Barcode instance.

	:::javascript
	Rho.Barcode.illuminationMode='alwaysOff';

### Using special class methods
You can also use special class methods to set a property (as long as the class supports this method):

	:::javascript
	Rho.Barcode.setProperty('illuminationMode','alwaysOff');

You can also use a special class method to set multiple properties in one line of code (as long as the class supports this method):

	:::javascript
	// An object of propertyName:value is passed into the setProperties method
	Rho.Barcode.setProperties({ illuminationMode:'alwaysOff' , code128:'enabled'});

### With another method
Some methods support passing in an `propertyMap` as a parameter to a method. Like with the `setProperties` method, you would pass in an object of multiple propertyName:propertyValue

	:::javascript
	// Enable the default instance of Barcode with code128 enabled and illuminationMode off
	// the first parameter of this method is a propertyMap
	Rho.Barcode.enable({ illuminationMode:'alwaysOff' , code128:'enabled'}, bchandler());

**NOTE: In the API reference, when a parameter is of type propertyMap, all possible values are not shown in the documentation. However you may use any non read-only property listed for that object class (unless otherwise specified).**

## Getting Properties
There are a few ways to get an object's property values:

### Reading values synchronously
The following examples use a synchronous method that will be blocking.

The following example uses the `getProperty` class method. This method may not be available on all APIs.

	:::javascript
	var iMode = Rho.Barcode.getProperty('illuminationMode');

You can use the `getProperties` method for a list of propeties you wish to know about. An array of property names is passed into this method

	:::javascript
	// An object is returned by the getProperties method
	var settingsObj = Rho.Barcode.getProperties(['illuminationMode' ,'code128']);

	// The object properties will be the list of properties used
	if (settingsObj.illuminationMode == 'alwaysOff')...

You can also use the `getAllProperties` method to get all properties of an object

	:::javascript
	var settingsObj = Rho.Barcode.getAllProperties();

**NOTE: Some APIs like Barcode have many properties and there may be an undesirable performance hit for reading all properties available. Use this method sparingly.**

### Reading values Asynchronously
There are a few ways you can read properties in non-blocking asynchronously way by specifying a callback:

The following code snippet uses a self-describing autonomous function that will execute when the callback is executed

	:::javascript
	Barcode.getAllProperties(function(e)
	{
		alert(e.code128);
	});

The following code snippet also uses a self-describing anonymous function that will execute when the callback is executed. This time we are also passing in other parameters

	:::javascript
	Barcode.getProperties(["autoEnter","code128"],
	function (e)
	{
			alert(e.code128);
	});

**NOTE: For methods that support callbacks, the callback function will always be the last parameter of the method**

The following code snippet uses a function name for the callback instead of an anonymous function

	:::javascript
	Barcode.getAllProperties(fnPropertyPerser(e));

## Handling callbacks
Some methods will support a callback for returning information in an unblocking asynchronous way. This will be indicated in the documentation by a parameter named `callback`

	:::javascript
	Barcode.take(HASH propertyMap, CallbackHandler callback)

The callback parameter will either be marked as <span class="label label-info">Optional</span> or marked as <span class="label label-warning">Mandatory</span>

Be sure to check the type of object the callback will be returning as well as the list of available callback parameters for each method. Typically the callback will return an object with a pre-defined set of objects that can be accessed for information.

### Callback as anonymous function
The following code snippet takes a picture from the device's camera and will run the anonymous function

	:::javascript
	// The documentation will list the callback type as well as callback parameters that are available
	Rho.Camera.takePicture(...,function(e){
	      alert(e.status);
	};);


### Callback as a JavaScript function
The following code snippet takes a picture from the device's camera and then calls another JavaScript function `mycallbackhandler`:

	:::javascript
	Rho.Camera.takePicture(..., mycallbackHandler());

	function mycallbackHandler(params)
	{
	// The documentation will list the callback type as well as callback parameters that are available
			alert(params.status);
	}

### Callback as a ruby controller method
You may want the callback to return to a ruby controller method or a particular view. For example when a picture is taken you may want to store an object and display a view showing all images captured. Recall that accessing RhoMobile ruby controller methods/views is simply using a url string

	:::javascript
	Rho.Camera.takePicture(...,'/Images/imageTakeHandler');

	:::ruby
	def imageTakeHandler
		#callback object will be in params object

		# some code to same image in database

		render :action => :list
	end