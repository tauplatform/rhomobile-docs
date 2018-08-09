Rhodes Simulator and Debugger
========
This tutorial will guide you through using the Rhodes simulator and debugger in RhoStudio within Eclipse.


Webinar Video
-------------
[Vimeo link](http://vimeo.com/23564222)

Pre-requisite Reading
---------------------
 * [RhoStudio Tutorial](rhostudio.tutorial)

## Setup

This tutorial assumes that you have RhoStudio set up in Eclipse, and that you are running from a Windows computer. If you need to set up RhoStudio in Eclipse, see [Pre-requisite Reading]().

## Creating a Rhodes Project in Eclipse

You use the Rhodes simulator and debugger with Rhodes projects in Eclipse. This section tells you how to quickly set up such a project. If you have a project already that you would like to run in the simulator, you can skip to the next section, Running Your Project in the Simulator, and adapt it for your project.

Start Eclipse. Then create a new Rhodes project (0:30 in the webinar video): File -> New -> Project, and select Rhomobile:Rhodes application. Name the application Store. Then click Finish to generate the application.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/Store.jpg" alt="Store project" />

### Adding a Model to the Rhodes Project

Control-click on your Store application, then select New -> Rhomobile -> Rhodes model. In the Model information window, enter product for the Model name, and name,brand,price,quantity for the Model attributes. Click Finish.

In the app folder, we now have a Product folder that contains all the Rhodes standard generated code, such as the controller (product_controller.rb), the model (product.rb), and the view (.erb) files.

### Set up for syncing, set the link in the index page, and point to the sync server.

In the model, app/Product/product.rb, set up for synchronized data by uncommenting the line `# enable :sync`.

	:::ruby
	# The model has already been created by the framework, and extends Rhom::RhomObject
	# You can add more methods here
	class Product
	  include Rhom::PropertyBag

	  # Uncomment the following line to enable sync with Product.
	  enable :sync                   # okay, it is now uncommented

	  #add model specific code here
	end

Create the link in the index page: app/index.erb.

	:::html
	<div class="content">
	  <ul>
	    <li>
	      <!-- Entered Product in href, Products for title -->
	      <a href="Product"><span class="title">Products</span><span class="disclosure_indicator"/></a>
	    </li>
	  </ul>
	</div>

In the configuration file, app/rhoconfig.txt, point to the sync server. In this example, there is a Store application in app.rhohub.com that has a URL for a sync server, so we will use that URL: rhodes-brian-3elf9886.rhosync.com. Remember to append `/application` onto the URL.

	:::text
	# sync server url, typically this will look like 'http://<hostname>:<port>/application'
	# for example: 'http://localhost:9292/application'
	syncserver = 'http://rhodes-brian-3elf9886.rhosync.com/application'

## Running Your Project in the Rhodes Simulator

Before the Rhodes simulator, you needed the SDK installed for the platform you wanted to test, such as the SDK for Android, Windows Mobile, or Blackberry. In Rhodes 3.0, we now have an integrated Rhodes simulator and debugger. You can test your application in this simulator, see how your application looks on a device, and debug your application live.

For the Store application, open Run->Run Configurations (4:25 in the webinar video). You will see the list of simulators that you can run, such as Android simulator or iPhone simulator. Select Rhodes Application, and create a new configuration for the Store project. The example below shows a configuration named Rho sim.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/run-configuration.jpg" alt="Run Configuration" />

Click Run to build and launch your application in the Rhodes simulator. You may notice that the Rhodes simulator launches much faster than other emulators.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/rhosimulator1.jpg" alt="Rho Simulator" />

You can login by pressing the Login button. (For this server, Login is Brian and Password is blank.) You can then sync by clicking Perform Sync. You can see that your application has synced its products with the backend by clicking Home and then clicking Products: you get a list of the synced products in the simulator.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/products-synced.jpg" alt="Products synced" />

## Viewing and Changing Your Project in the Web Inspector

The Rhodes simulator also has a web inspector (5:40 in the webinar video). You can click the Elements tag to see and modify your project's pages and styles. For example, in the index page, app/index.erb, you can open the div for the toolbar and see its buttons, and rename a button while your project is live in the simulator. Here, the Home button name is changed to Home2. The simulator did not need to be relaunched to see this change.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/web-inspector-home2.jpg" alt="Web Inspector - Home2 button" />

The Rhodes Simulator has a JavaScript console on the Console tab, allowing you to execute and debug your JavaScript.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/javascript-console.jpg" alt="JavaScript Console" />

The Profile tab lets you enable profiling so you can see how many scripts are being loaded, and how much is being cached. 

The Resources tab allows you to enable resource tracking so you can see the resources being loaded; in this example, when you make your product call. You can click on the Documents and Stylesheets buttons and see how long it takes them to parse.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/resources.jpg" alt="Resources" />
 
In the Resources tab, you also can click the XMR button to see the XML requests and how long they take to fetch.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/xmr.jpg" alt="XML Requests" />

## Using the Debugger

Close the web inspector and the simulator (7:58 in the webinar video). Start the debugger: Run->Debug Configurations. We want the Rho simulator platform with the Store project.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/debug-configurations.jpg" alt="Debug Configurations" />

Click Debug to enter debugging mode. The Store application launches again in the simulator and the web inspector. If we go back to Eclipse, we can now set breakpoints.  Click on the Expressions tab to see your code. 

## Setting a Breakpoint and Viewing Variables

Open the controller, app/Product/product_controller.rb, and set a breakpoint in its create method at the redirect statement (8:45 in the webinar video).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/breakpoint-set.jpg" alt="Setting a Breakpoint" />

Click on the Breakpoints tab. You will see a listing of the breakpoints that you have set.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/breakpoint-listed.jpg" alt="Breakpoints Listed" />

If you set the breakpoint on code line of function definition then on start of debugger session it breakpoint will be disabled and debugger doesn't stopped on this line.

## Setting and Viewing Local Variables

Now go to the Store application in the simulator. Click on Products and then click New to create a new product. The webinar shows the example of a iPhone product. Once you fill in the data for this product, click Create.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/product-create.jpg" alt="Product Create" />

The Create will hit the breakpoint that you set. The application stops at that breakpoint and displays the expressions. The expressions give you all the local and global variables being loaded here. You can open up the Expressions window to get a better look at the variables. We have our instance variables. @request shows all the post methods and the information that was posted. @params shows all the iPhone 4 information the you entered.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/variables.jpg" alt="Variables" />

Note that when you set a breakpoint, and you delay long enough, the web view times out. To continue (11:15 in the webinar video), select Create again in the simulator, and click the continue button in the debugger (this is a typical play button); if you click the continue button in a reasonable time, your application will continue.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhosimulator-debugger-tutorial/continue.jpg" alt="Clicking Continue" />

## Setting and Viewing Local Variables

To see some local variables, stop the debugging (click the stop button, 11:38 in the webinar video). In the product_controller.rb create method (where the breakpoint is set), set local variables for product parameters.

	:::ruby
	# POST /Product/create
	def create
	  @product = Product.create(@params['product'])
	  product_params = @params['product']   # local variables, copy of @product
	  redirect :action => :index
	end

Launch the debugger again: Run->Debug. Create another new product in the simulator: click on Products, click New, enter data, click Create.

When the application stops at the breakpoint, you can see the local variable in Expressions: Name is product_params, Value is the data you entered, such as "name"=>"iPhone","brand"=>"Apple","price"=>"599","quantity"=>"10".

## Checking Device Specific Capabilities

For various device specific capabilities, such as cameras, we are documenting them on our [documentation site](home) (14:28 in the webinar video). Under Rhodes Developer Reference, click on Device Capabilities. You will see a device support matrix that shows what release supports what device on a per device operating system basis. Along with iPhone, Android, and other devices, there is a listing for RhoSimulator in this matrix.

There is currently no iOS version of this debugger, but you can add the iPhone CSS and see how it looks on the iPhone.

## Testing with Rhodes Simulator

In conclusion, the Rhodes simulator lets you test your application in Eclipse without having all the SDK tools installed. You only need install Rhodes, Ruby, and Eclipse with Rhodes Studio. Once you finish building your application, you can either use RhoHub to create your builds, or you can use the local tools with the local installed SDKs to build for your various devices. 
