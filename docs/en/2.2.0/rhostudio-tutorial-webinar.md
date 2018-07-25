RhoStudio
========
This tutorial will guide you through installing and using RhoStudio in the Eclipse IDE.

Webinar Video
-------------
[Vimeo link](http://vimeo.com/22757192)

Pre-requisite Reading
---------------------
 * [Rhodes Tutorial](rhodes/rhodes-command-line)
 * [Rhodes Installation](rhodes/install)
 * [Eclipse download](http://www.eclipse.org/downloads/)

## Setup
This tutorial assumes that you have installed Eclipse version 3.6.2 (Helios) or later: a version with a Java runtime environment, such as Eclipse IDE for Java Developers. If you do not know how to do this, see [Pre-requisite Reading](). It also assumes you have Rhodes 2.4 or higher installed.

This tutorial also assumes that you have installed the SDK for your platform. Xcode (iPhone, iPad) requires a Macintosh; Windows Mobile and Blackberry require Windows.

 * [Xcode](http://developer.apple.com/xcode/index.php)
 * [Android SDK](http://developer.android.com/sdk/index.html)
 * [Windows Phone 7 SDK](http://phone.microsoftplatformready.com/Dashboard.aspx)
 * [Blackberry SDK](http://us.blackberry.com/developers/started/)

## Installing the Dynamic Languages Toolkit for Ruby

Install the Dynamic Languages Toolkit for Ruby if you have not already done so. This allows you to have well-formatted Ruby syntax in Eclipse. 

In Eclipse, select Help -> Install New Software. Enter the website http://download.eclipse.org/releases/helios. From Programming Languages, select Dynamic Languages Toolkit - Ruby, and install it.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/dltk-ruby.png" alt="Install Dynamic Languages Toolkit for Ruby" />

## Installing RhoStudio

To install RhoStudio into your Eclipse, select Help -> Install New Software. In the Install window, click the Add button. In the Add Repository window, enter RhoStudio for Name, and http://rhostudio.rhomobile.com for Location.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/rhostudio-tutorial-add-repository.png" alt="Add RhoStudio Repository" />

Check RhoStudio, click Next, and follow the instructions.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/rhostudio-tutorial-install.png" alt="Install RhoStudio" />

## Setting RhoStudio Preferences for SDK and Java

You may need to set paths for RhoStudio to work properly. For example, default paths that work on a Windows computer will not work on a Macintosh. You can edit the paths in Eclipse Preferences.

In the webinar video, this is discussed at 13:20, near the end.

### Setting the Java JDK Path

If you are on a Macintosh, you will likely need to set your path to your Java JDK, which are likely set to a default Windows path.

Select Eclipse -> Preferences. Select Rhomobile. Click the Browse buttons and set your path to your Java JDK, which is likely similar to /Library/Java/Home/bin. Click Apply, then OK.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/java-preferences-jdk.png" alt="Setting Java Path" />

### Setting the SDK Paths

When you want to run a project for Android, Windows Mobile, or Blackberry, you should check your paths to their development environments.

Select Eclipse -> Preferences. Under Rhomobile, select the platform. For Android, click the Browse buttons and set your paths to your Android SDK and NDK. Click Apply, then OK.

For Blackberry, you can set to a Blackberry version, the Blackberry JDE path, the Blackberry MDS path, and the Simulator device. For Windows Mobile, you can set your path to your Windows Mobile SDK. 

Development for Windows Mobile and Blackberry requires a Windows computer. Development for iPhone or iPad requires a Macintosh.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/android-preferences-sdk-ndk.png" alt="Setting Android SDK and NDK Paths" /> 

## Generating a Rhodes Project

This tutorial uses a store project as its example.

Select File -> New -> Project. In the New Project window, select Rhodes application from the Rhomobile folder. Click Next.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/new-project-rhodes.png" alt="New Rhodes Project" />

In the Rhodes application generator wizard window, enter store for the project name. Click Finish.

In the Eclipse Package Explorer, you see that you now have a complete Rhodes project. If you open one of its Ruby files, such as app/Product/product_controller.rb, you can see that the Dynamic Language Toolkit gives you nice Ruby syntax highlighting.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/eclipse-store-project.png" alt="Store Project" />

In the Package Explorer for the Store project, click on build.yml. The build.yml file opens in a yml editor. You can edit the Application name, and you can enter a name for an Application log file. In the Rhodes folder path, you can edit which Rhodes SDK you use for your project; the example here shows Rhodes 3.0, which happens to be the default for this example. Note that you need Rhodes 2.4 or higher to use RhoStudio.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/build-yml-editor.png" alt="yml editor" />

## Running the Rhodes Project - iPhone Simulator

Now you can run your Rhodes project. Select your Rhodes project in the Package Explorer. Select Run -> Run Configurations. From the Run Configurations window, enter the name you want for the configuration (iPhone simulate in this example), and from the Platform drop-down menu, select the platform you want to run (iPhone simulator in the example).

You can check "Clean before build" if you wish, but this will make your build take a little longer.

Click Apply to save your changes. Then click Run.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/run-configurations.png" alt="Run Configurations" />

You will see your project building in the Rhodes build console, with the usual messages that you would see if you had instead built your project from the command line. When your Rhodes project has built, and then runs (in this example, when the iPhone simulator appears), the build console switches to the Rhodes application console.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/rhodes-application-console.png" alt="Rhodes Application Console" />

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/store-iPhone-simulator.png" alt="Store in iPhone Simulator" />

## Adding a Model to Your Rhodes Project

Now you can add a model to your project. Control-click on your Rhodes project in the Package Explorer. Note that since this example uses the iPhone simulator, and therefore it is being run on a Macintosh, you use Control-click, whereas on WIndows, you would right-click.

You will see a new option called Rhomobile. Select Rhomobile -> Rhodes model.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/Rhomobile-model.png" alt="Rhomobile-Rhodes-model" />

In the Model Information window, you create a model in your Rhodes project. For the Store example, create a model called product, with attributes of name,price,quantity,sku,brand. Note that you do not put spaces between the attributes.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/model-information.png" alt="Model Information window" />

You will see the product model created in your Rhodes project, with the folder for your model and all the generated files, such as app/Product/product_controller.rb.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/model-information.png" alt="Model Information window" />

You need to add a link to this model in your top-level page. In app/index.erb, edit the list to add a link to the product model.

	:::html
	<div class="content">
	  <ul>
	    <li>
	      <!-- Edited to link with Product -->
	      <a href="Product"><span class="title">Products</span><span class="disclosure_indicator"/></a>
	    </li>
	  </ul>
	</div>

Now run your configuration again. You will see the Product link.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/products-iPhone-simulator.png" alt="Product in iPhone simulator" />

In the iPhone simulator, click the Products link, then click New. Enter the data for a new Product, such as iPhone, $199.99, 5, 12345, and Apple for name, price, quantity, sku, and brand. Then click Create. You will see your model, which is stored in the local database for Rhodes.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/product-iPhone-created.png" alt="iPhone Model Created" />

Note that this model generator works similar to the command line. It uses the command line tool to generate the models, and you can even run it from the command line, switching back and forth from Eclipse if you desire.

## Running the Rhodes Project - Android Emulator

Quit the iPhone simulator. Time to run your project in Android.

Select your Rhodes project in the Package Explorer. Select Run -> Run Configurations. From the Run Configurations window, enter the name you want for the configuration (rhoAndroid233 in the example), and from the Platform drop-down menu, select Android emulator. This example selects 2.3.3 as the version; for now, you have to have the Android simulator version already created to select it. For your Store project, enter a name, such as Android simulate, and an AVD (Android Virtual Device) name, such as rhoAndroid233. Click Run.

You will see your Rhodes project running on an Android virtual device, and it has the Product model and link that you already put into your Store project.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/products-Android-simulator.png" alt="Product in Android Emulator" height = "50%" width = "50%" />

In the Android emulator, click the Products link, then click New. Enter the data for a new Product, such as iPhone, $199.99, 3, 12345, and Apple for name, price, quantity, sku, and brand. Then click Create. You will see your model, which is stored in the local database for Rhodes.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-webinar/product-Android-created.png" alt="Android Model Created" height = "50%" width = "50%" />
