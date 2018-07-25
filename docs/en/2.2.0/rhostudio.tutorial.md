# RhoStudio

RhoStudio is an Eclipse installation that facilitates development of native smartphone applications. It installs all Rho products, such as Rhodes and RhoConnect. It provides an integrated development environment (IDE) for Rhodes and RhoConnect development.

Use RhoStudio to:

* Generate Rhodes application(s).
* Generate Rhodes Model(s) and associated Controllers and View templates.
* Generate RhoConnect applications.
* Generate RhoConnect source adapters.
* Manage build configuration (build.yml and rhobuild.yml) using the RhoStudio/Eclipse UI.
* Build, run, and debug your application in the RhoSimulator.
* Build and run your Rhodes application on iPhone, Android, Windows Mobile, and BlackBerry simulators and devices.
* See the build and application execution logs in the Eclipse output console.

## Installing RhoStudio

### Installing on Mac

If you're using a Mac install Java Development Kit. For Mac OS 10.6 and earlier, the JDK is already installed. For Mac OS 10.7, Java is not automatically installed. Download the Java for Mac Installer from [Apple support](http://support.apple.com/kb/DL1421) and install it.

Although Mac OS has [Ruby](http://www.ruby-lang.org/en/) installed, this version is outdated and isn't compatible with RhoStudio. Install [Ruby Version Manager](https://rvm.io//) and then install Ruby version 1.9.3.

Download the latest [RhoStudio for Mac](http://rhomobile.com/rhostudio-mac).

When the download finishes, click on the RMS_&lt;version&gt;.dmg file to open it. You will get a window similar to this:<br>
<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-devel/rhostudio-mac-install.png" alt="RhoStudioInstaller Mac" />

Run the "Install gems" to install gems into selected version of Ruby. Run "Install rhoconnect-push" to install RhoConnect Push Service.

Then drag RhoStudio to the Applications folder.

**NOTE: RhoStudio Suite has two launchers: RhoStudio 32 bits and RhoStudio 64 bits. Use one suitable for your system.**

You also have a sample folder that you can drag to where you wish on your computer. You can import these sample Rhodes and RhoConnect projects into RhoStudio.

**NOTE: RhoStudio launcher asks Ruby version before start. Point the version where Gems were installed.**

### Installing on Windows 32-bit

If you're running Windows, ensure that Java Development Kit is installed. The Sun JDK for Windows is available [here](http://java.sun.com/javase/downloads/index.jsp). Install Windows x64 JDK or x86 JDK or both.

Download the latest [RhoStudio for Windows](http://rhomobile.com/rhostudio-windows) and run the download file to install RhoStudio.

**NOTE: If you use Symantec Antivirus it can warn about "Suspicious.MLApp" security risk in rubyw.exe file during installation. It is known false positive in Symantec antivirus.<br>Ignore this warning.**

On Windows XP reduce JVM heap size:<br>
Open <tt>&lt;RhoMobileSuiteDir&gt;\rhostudio\win32.win32.x86\RhoStudio.ini</tt> file in editor.<br>
Find "<tt>-Xmx1024m</tt>" line and change it to "<tt>-Xmx512m</tt>".

**NOTE: Use Zebra RhoStudio 32-bit launcher to run RhoStudio.**

### Installing on Windows 64-bit

If you're running Windows, ensure that Java Development Kit is installed. The Sun JDK for Windows is available [here](http://java.sun.com/javase/downloads/index.jsp).

Download the latest [RhoStudio for Windows](http://rhomobile.com/rhostudio-windows) and run the download file to install RhoStudio.

**NOTE: If you use Symantec Antivirus it can warn about "Suspicious.MLApp" security risk in rubyw.exe file during installation. It is known false positive in Symantec antivirus.<br>Ignore this warning.**

**NOTE: Use Zebra RhoStudio 64-bit to run RhoStudio with x64 JDK.<br>
Use Zebra RhoStudio 32-bit to run RhoStudio with x86 JDK.**

### Setting path to the Java Development Kit

In RhoStudio Preferences, open RhoMobile and check that the path is set to your JDK installation.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/preferences-rhomobile.png"/>

## Generating a Rhodes Application

**NOTE: You also can use RhoStudio to generate a RhoConnect application and source adapter. You can see an example in the [RhoConnect tutorial](rhoconnect/tutorial).**

**NOTE: Zebra RhoMobile Suite installs into a Zebra RhoStudio folder. Old versions of RhoStudio installed into a RhoStudio folder. Check that you start from Zebra RhoStudio.**

In RhoStudio, select File->New->Project...

The New Project window opens. Select the RhoMobile application wizard and click the Next button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/new-project.png"/>

Enter the name for your Rhodes application in Project name; in this case, "storemanager". You may specify a specific folder for your destination where your project is stored, by default, the destination is your RhoStudio workspace folder. Uncheck the RhoElements checkbox if this is to be a strictly Rhodes application. Then press the Finish button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhodes-application-wizard.png"/>

After pressing the Finish button, you'll see the Rhodes app generator script output in the output console (Rhomobile build console).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhodes-app-generator-output.png"/>

## Generating a Rhodes Model

Rhodes applications support a Model-View-Controller (MVC) pattern.  To start our application, we will generate a Model. To generate a Rhodes model and create the associated Controller and View templates, right-click on the application project in the Project Explorer and select New->Rhodes model.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/menu-new-rhodes-model.png"/>

In the Model Information window, enter the name for your model: in this case, Product. Also enter the Model attributes as a string with no spaces and each attribute separated by a comma: in this case, name,brand,price,quantity,sku. (Whitespaces at the field name beginning and end will be trimmed and whitespaces in the middle of the field name will be replaced with an underscore character.)

Click the Finish button to create the model.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/model-information.png"/>

After pressing the Finish button, you'll see the Rhodes model generator script output in the output console (Rhodes build log console).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhodes-model-generator-output.png"/>

You should now see a 'Product' folder below the 'app' folder in your storemanager application. These files constitute the Model, Views and Controller file for the Product Model we just created. The files are organized as follows:

* product.rb -> This is the Model file which contains the Model definition.  Since we are using the default PropertyBag definition, we don't need to modify this file any further.
* product_controller.rb -> This file contains the business logic which relates to our Model.
* *.erb -> The .erb files are the html view template files. We'll be modifying them in the next section.

## Editing Rhodes Views

You may edit the generated ERB files to customize the HTML as you see fit. Typically you will provide links to the model index page from the home screen. In order to accomplish this, a modification needs to be made to the default view for the application, called index.erb. Below is the content for the StoreManager app's generated top level index.erb file (app/index.erb). Open this file for editing.

    :::html
    <div data-role="page" data-url="<%= Rho::RhoConfig.start_path %>/">
	
	  <div data-role="header" data-position="inline">
	    <h1>Storemanager</h1>
	    <% if SyncEngine::logged_in > 0 %>
	    <a href="<%= url_for :controller => :Settings, :action => :do_sync %>" class="ui-btn-left" data-icon="refresh">
	      Sync
	    </a>
	    <a href="<%= url_for :controller => :Settings, :action => :logout %>" class="ui-btn-right" data-icon="star">
	    Logout
		  </a>
	    <% else %>
	        <a href="<%= url_for :controller => :Settings, :action => :login %>" class="ui-btn-right" data-icon="star">Login</a>
	    <% end %>
	  </div>
	
	  <div data-role="content">
	    <ul data-role="listview">
	      <li><a href="#">Add link here...</a></li>
	    </ul>
	  </div>
	
	</div>

To provide a link to the Product model’s index page and templates, replace the list item with the title 'Add link here' with the following:

	:::html
	<li>
		<a href="Product">
			<span class="title">Products</span>
		</a>
	</li>

This change now means that when the index.erb view is displayed (the default view when the app starts), you will see a UI element called "Products" that will take you to the controller for the "Product" Model definition. Because no specific action is provided, the controller will default to displaying the Model's index page, in this case the Product model's index page. All further functionality in the app is carried out by the default scaffolding of the generated controller and view files. These generated files provide basic CRUD (Create, Read, Update, Delete) functionality for your Model.

NOTE: You can edit the top level app page or any of the other view templates with any HTML you wish. We don’t attempt to teach you HTML or Ruby here, but there are many good external references for both topics.

## Managing Your Build Configuration

The build.yml file for your application manages your Rhodes build time configuration. Double click on 'build.yml' item in your project tree to open the build.yml editor. In the editor you'll see two tabs: Rhobuild setting for the WYSIWIG editor, and build.yml for the text editor.

Rhobuild setting WYSIWIG editor:

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/buildyml-rhobuildsetting.png"/>

build.yml text editor:

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/buildyml-textedit.png"/>

You will have default values for your application name, log file (the log file will be located in your application folder after you run your application), and the path to the Rhodes gem. You can use the WYSIWIG editor to change this. For example, you might want to point to a different RHodes gem if you have more than one Rhodes gem installed.

You can add capabilities to your application, such as camera and vibrate, by pressing the Capabilities: Add button, selecting the capabilities from the popup window, and clicking the Ok button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/select-capabilities.png"/>

The selected application capabilities will appear in the Capabilities: text field in the WISIWIG editor.

## Building and Running Your Application

To start the build process, create a Run Configuration: select your project in the Project Explorer, and select Run->Run Configurations... from the menu. The Run Configurations window appears.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/run-configurations.png"/>

To create a new build configuration for your application, select Rhodes Application. Then either right-click on Rhodes Application or click the New button. A new configuration appears under Rhodes Application.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/run-config-rhodes-new-rhodes.png"/>

**NOTE: In the RhoStudio Run Configurations window, when you choose the Windows Mobile platform and any of the platform types (such as 6.0, 6.5.3, CE5.0), this platform setting overrides the SDK settings for Windows Mobile in the application build.yml file. This override does NOT affect RhoMobile Production Build, or using rake (without RhoStudio) to build and run a Windows Mobile app; these options use the Windows Mobile SDK settings in the build.yml file.**

### Building and Running with RhoSimulator

You can run your project in RhoSimulator, a simulator type available only in RhoStudio. RhoSimulator allows you to build and run your project on the platform of your choice without having to install the SDK for that platform. Instead, RhoSImulator will mimic the platform. RhoSimulator builds and runs your application quickly, making it useful for testing and debugging.

**NOTE: Once you have done your application development and debugging, you will need to install the SDK to create a build for that device. Or you can upload your project to RhoHub, and use RhoHub to create the build for your device.**

To run RhoSimulator for the iPhone platform, select your project from the Project Explorer (in this case, we use the storemanager project created earlier). Then select Run -> Run Configurations from the main menu.  The Run Configurations window appears.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/run-config-rhosim-iphone.png"/>

In the Run Configurations window, select RhoSimulator for the Simulator type, and select your desired platform type. For example, if you select iPhone, RhoSimulator will mimic an iPhone. The calls to the system will return as though the application was running on an actual iPhone.

Click Run to start the simulator.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhosimulator.png"/>

In the storemanager example, we can add a couple of products. Click the Products link, then click New, enter the product attributes, and click Create.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhosim-new-product.png"/>

### Using the Web Inspector

The RhoSimulator also brings up a Webkit Inspector window, allowing you to inspect the web interface for your application.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/web-inspector.png"/>

For example, you can see the web code for the listview. Here is the listview of the products for the storemanager example. You can see the link for the iPhone URL, and you could change the border color and thickness for the iPhone product (changing from 1px to 3px and solid #CCC to #111 would give the iPhone link a thicker, darker border).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhosim-product-list-dark.png"/>

## Using the Debugger

You can use the RhoStudio debugger to debug the Ruby code in your RHodes or Rhoconnect application. 

### Debugging a Rhodes Application

To run the RhoSimulator debugger for the iPhone platform, select your Rhodes project from the Project Explorer (in this case, we use the storemanager project created earlier). Then select Run -> Debug Configurations from the main menu.  The Debug Configurations window appears.

Click Debug to start the debugger.

You will again get a RhoSimulator showing your device, and the Web Inspector window. And you get a Debug view in your workspace.

To debug your Ruby code in your Rhodes application, click the RhoStudio tab in your workspace, then open the Ruby file in your Rhodes application that you wish to debug.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/debug-rhostudio-ruby.png"/>

Now click the Debug tab. You will see the Ruby file opened in the debugger. 

### Debugging a RhoConnect Application

To run the debugger for RhoConnect, select your RhoConnect project from the Project Explorer. Then select Run -> Debug Configurations from the main menu.  The Debug Configurations window appears.

Click Debug to start the debugger.

You will see your RhoConnect project in the debugger; there will be a console window with redis server information messages. (You will not get a RhoSimulator or a Web Inspector, as you do with the Rhodes debugger.)

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/debugger-rhoconnect.png"/>

To debug your Ruby code in your RhoConnect application, you do the same as for a Rhodes application: click the RhoStudio tab in your workspace, then open the Ruby file in your RhoConnect project that you wish to debug.

### Setting a Breakpoint

You can perform operations such as setting a breakpoint: double-click in the left margin at the line of code where you want the breakpoint.

For example, in the storemanager code, there is a rendering section in product_controller.rb.

	:::ruby
	# GET /Product
	def index
	  @products = Product.find(:all)
	  render :back => '/app'
	end

You can set a breakpoint on the line `render :back => '/app'`, then you can go to the RhoSimulator and click on Product. The simulator will stop at the point of rendering.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/debugger-breakpoint.png"/>

NOTE: If you set a breakpoint on a function definition string (the first line of a function definition), as in the following line of Ruby code, that breakpoint will always be disabled. You should not set breakpoints there.

	def some_method(value='default', arr=[])

### Inspecting the Variables

You can also inspect the variables. When you click "Products" In the debugger simulator, and you have a breakpoint as set earlier in the product_controller.rb on the rendering line, the application will pause just before the rendering of the product listing page. You can then inspect the variables in the variable window. The storemanager example shows that at this point int he app, the local database has been read, showing that a couple of products have been created (an iPhone and an iPhone4S).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/debugger-variables.png"/>

### Debugger Support for Extensions

The RhoStudio debugger supports extensions, but only pure Ruby extensions or the Ruby part of a native extension.

### Debugging Ruby Framework Code

The debugger supports debugging Ruby framework code. With an older project, you may need to recreate the project in RhoStudio in order to enable the debugger. A good way to do this is as follows.

1. Delete the project in the Project Explorer view without deleting the project content.
2. Create a new project by creating from existing sources in the RhoMobile application wizard.
3. Use your old project content as the existing source.

## Importing a Rhodes Project from a non-RhoStudio Source

You can have a Rhodes project that you wish to import into RhoStudio. For example, you might have created a project using RhoHub and you have a local repository of that project on your computer). Or you might want to import the sample projects that came with the RhoStudio installer. The import process is similar to importing external projects with standard Eclipse.

Select File -> New -> Project...

From the New Project window, select Rhomobile -> Rhoconnect application or Rhomobile -> Rhodes application. THen click the Next button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/new-project.png"/>

From the Rhodes (or Rhoconnect) application generator wizard window, click the "Create application from existing sources" checkbox.

Click the Browse button, then navigate to and select the folder containing your project. The Project name will change to the name of your project folder.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhodes-application-wizard-exist.png"/>

Click the Finish button. Your project will appear in the Project Explorer.

## Creating a Device Build in RhoStudio

Once you have developed your application using the RhoSimulator and debugger, you will need to create a device build of your application. To do this with RhoStudio, you can do this by installing SDKs. 

To create a device build with RhoStudio, you need to do the following:

 * Install the SDK for your application's platform.
 * Set RhoStudio Preferences to that platform's SDK.
 * In Run Configurations, set to that device, then do the device build and run.

**NOTE: You can do the device build with RhoHub if you wish to avoid installing the SDKs on your computer. To do your device build on RhoHub, upload your application into RhoHub, then use RhoHub to create the device build. Instructions for using RhoHub are in the [Rhohub tutorial](rhohub/tutorial).**

### Installing the SDK

On Mac OS, once you have installed Xcode, RhoStudio will know the location of the iOS SDK. You do not set any locations.

On other platforms, such as Android, you need to install the SDK, and then set RhoStudio Preferences for that platform's SDK. For example, on an Android device, you must download and install:

* The [Android SDK Package](http://developer.android.com/sdk/index.html).
* The [Android NDK package](http://developer.android.com/sdk/ndk/index.html).

### Set RhoStudio SDK Preferences

Once you have the SDK for your platform installed, set RhoStudio Preferences for that SDK. For example, to do Android device builds:

 1. In the Preferences window, open the Rhomobile item and select Android.

 2. Click the Browse button and navigate to the locations where you installed your Android SDK and NDK.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/preferences-android-sdk.png"/>

### Set Run Configurations to the Device Build and Run

To start the device build process, create a Run Configuration: select your project in the Project Explorer, and select Run->Run Configurations... from the menu. The Run Configurations window appears. Set Run Configurations as follows:

 * Set the Platform to Android.
 * Set the Simulator type to either device to run on the device, or simulator to run on the simulator provided with the Android SDK.
 * If you set the Simulator type to simulator, set the Platform version number and set the AVD name for Android.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/run-config-android-device.png"/>

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/run-config-android-simulator.png"/>

Press the Run button to build and run your application. The build output will appear in the Rhodes build output console. The application log will be available in the Rhodes application output console, and will be written into your application folder.

For complete instructions on setting up the SDKs in RhoStudio for each platform, refer to [the Build instructions for Rhodes](rhodes/build).

### Editing the SDK Locations in rhobuild.yml

Use RhoStudio preferences to edit the rhobuild.yml file, which manages the location(s) of the platform SDKs/JDKs that are used to build your Rhodes application. The rhobuild.yml file is located in the Rhodes gem folder (or, if you copied Rhodes from git, in the Rhodes source code folder).

## Using Intellisense for Autocompletion

IntelliSense is Microsoft's implementation of autocompletion, best known for its use in the Microsoft Visual Studio integrated development environment. In addition to completing the symbol names the programmer is typing, IntelliSense serves as documentation and disambiguation for variable names, functions and methods using reflection.

The RhoStudio DLTK implementation supports aspects of Intellisense, such as Ruby keyword completion and block argument name completion. You can use Intellisense in RhoStudio to autocomplete your Ruby code by setting the cursor at a location in your code and pressing Ctrl+Space.

For example, to complete a Ruby keyword beginning with "re", perform these steps.

1. Enter "re".
2. Press Ctrl+Space. The completion list includes "rescue" and "return".

## Checking Progress and Canceling an Operation

You can check the progress of an operation in RhoStudio, and cancel it if you wish. Open the Progress view to see the progress bar on the left, and click the red square on the right to cancel the operation.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhostudio-progress-cancel.png"/>

The following RhoStudio operations can have their progress checked and be canceled from the Progress view.

* Main menu: RhoMobile -> Production build
* Main menu: Project -> Clean...
* RhoMobile Application in Project Explorer: Run Configurations, RhoMobile Application
* RhoMobile Application in Project Explorer: Run Configurations, RhoMobile Application Test
* RhoConnect Application in Project Explorer: Run Configurations, RhoConnect Application

You can also check progress and perform a cancel for the following operations on existing applications.

* Create a new project, and then select RhoMobile->RhoMobile application from the New Project window.
* Create a new project, and then select RhoMobile->RhoConnect application from the New Project window.
* Select a RhoMobile application in the Project Explorer, and create a New->RhoMobile model.
* Select a RhoMobile application in the Project Explorer, and create a New->RhoMobile extension.
* Select a RhoConnect application in the Project Explorer, and create a New->RhoConnect source adapter.

## Creating a Production Build in RhoStudio

To create a production build for your application, perform these steps.

1. Select your application in the Project Explorer.
2. Select RhoMobile->Production Build from the main menu.
3. From the Select platform pop-up box, select the platform to which you wish to build and click "Ok".

## Running a Unit Test in RhoStudio

When you generate a model for your RhoMobile application, you will have a spec.rb file generated along with your controller. For example, if you have a model named product, your RhoMobile application's app folder will contain a test folder containing the spec.rb file for the product model.

	app/test/product_spec.rb

This file is a template of a test for the controller. This template always returns false, so you should write a more extensive test.

	:::ruby
	describe "Product" do
	  #this test always fails, you really should have tests!
	
	  it "should have tests" do
	    true.should == false
	  end
	end

The [Rhodes testing](rhodes/test-log-debug#testing) chapter contains this [link  to our specs for the core framework](https://github.com/rhomobile/rhodes/tree/1.4.0/spec/framework_spec/app/spec/). You can use these as examples for writing your own test.

Once you have written your test, you need to generate a testing framework to run the test. To generate the testing framework, right-click on your application in the Project Explorer and select RhoMobile spec.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhomobile-spec.png"/>

This will create the following files in your app folder.

	app/SpecRunner/controller.rb
	app/SpecRunner/index.erb
	app/mspec.rb
	app/spec_runner.rb

**NOTE: When you generate this test framework from RhoStudio, you do not need to set "fileutils" or "mspec" in build.yml extensions.**

To create a run configuration and run the test for your application, perform these steps.

1. Select your application in the Project Explorer.
2. Select Run->Debug Configurations...-> from the main menu. The Debug Configurations window appears.
3. Right-click RhoMobile applications test and select New.
4. Create the run configuration you want for this test. Choose the platform, and if needed, the simulator type. Click the Apply button when done.
5. Click the Debug button to run the test.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/debug-config-test.png"/>
