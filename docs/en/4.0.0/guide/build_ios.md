# Building for iOS

## Setup

Follow the instructions for [setting up the development environment](nativesdksetup#setup-for-ios) for building iOS applications.

### SDK locations
The iOS SDK that is specified in your build.yml will need to be in the default XCode folder or the build process will not be able to find it.

Example:
    :::yml 
    iphone:
        SDK: iphoneos7.0
or 
    :::yml
    iphone:
        SDK: iphonesimulator7.0

With these SDKs specified, you need to make sure the SDKs are in the right folder. To find your default XCode installation directory, you can run the command `xcode-select --print-path` in your terminal. This will return something like this:

    :::term
    $ xcode-select --print-path
    /Applications/Xcode.app/Contents/Developer

This is the path that the build process will use when looking for your iOS SDKs. If you have an SDK that you will be using but, it's in another folder you'll need to move it to the appropriate folder in this directory. For Example, if I have an iphoneos6.0 SDK that I want to use but it's in my downloads folder, I'll need to move it `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/`.

The iphoneos and iphonesimulator SDKs go in two different folders:

* `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs` - iPhoneOS SDKs, for running apps on your iOS device.
* `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs` - iPhoneSimulator SDKs, for running apps in your iOS simulator.

NOTE: These paths are solely for your information, they do not need to be copied into any files to be used. These are simply the directories in which you need to store your SDKs for them to work with the RhoMobile build process.

### Using RhoHub

Alternatively, you can create the device builds with RhoHub. RhoHub is a cloud based service that integrates with RhoStudio to allow building and packaging apps for all platforms.

You can use it:

* to avoid installing SDKs locally
* to quickly get you up and running
* for building and packaging for platforms that are not supported by your development computer, for example building iPhone apps from your Windows PC.

See the [RhoHub tutorial](rhohubtutorial) for more details.

## Building and Running Your iOS Application with RhoStudio

To start the build process, create a Run Configuration: select your project in the Project Explorer, and do one of the following actions.

 * Select Run->Run Configurations... from the main menu,
 * Or right-click on your project, and select Run As->Run Configurations from the popup menu.

<img style="height:500px" src="https://s3.amazonaws.com/docs.tau-technologies.com/images/build-rhodes-app/run-configurations-menu-4.0.png"/>

The Run Configurations window appears.

To run on the iOS simulator, select iPhone in Platform, Simulator in Simulator type, and select iPhone or iPad. Then click the Run button.

<img style="height:500px" src="https://s3.amazonaws.com/docs.tau-technologies.com/images/build-rhodes-app/run-configurations-ios-4.0.png"/>

## Build an iOS App with Xcode

If you wish to run your RhoMobile application on an iOS device, you need to build and run it using an Xcode project.

Tell Rhomobile to build from your RhoMobile application. Within your RhoMobile project folder, run the following command:

    :::term
    $ rake switch_app

The switch_app command changes the rhobuild.yml in the RhoMobile source code folder to point to your application, as in the following example for a RhoMobile application named Store in the user's home folder:

    :::term
    env: 
      app: /Users/NameOfUser/Store

Note that the switch_app command is only used when you run a RhoMobile application within an IDE, such as Xcode: you run switch_app for each RhoMobile application that you run in Xcode. The switch_app command does not affect RhoMobile applications that you build and run on the command line or within RhoStudio.

Now run the following command to tell RhoMobile to set up the Xcode environment for your RhoMobile application:

    :::term
    $ rake build:iphone:setup_xcode_project

Then in the RhoMobile source code folder (the path in your RhoMobile application build.yml file), navigate to the /platform/iphone folder and open rhorunner.xcodeproj. This will open your RhoMobile application in Xcode.

In the Xcode Scheme menu, select the proper scheme before you build and run your project. Click on the Scheme menu.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/build-rhodes-app/rhorunner-xcode-scheme-4.0.png" alt="xcode scheme" />

Select the Scheme for your project under rhorunner. You can select to run in the simulator.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/build-rhodes-app/rhorunner-xcode-scheme-simulator-4.0.png" alt="xcode scheme simulator" />

Now you can build and run in Xcode to run your project in the iOS simulator.

If you are an Apple developer, you can run your RhoMobile application on your iOS device. In Xcode, select your rhorunner target, click on the Build Settings tab, and see that your code signing information that you installed as an Apple developer is set up and selected.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/build-rhodes-app/rhorunner-xcode-build-simulator-4.0.png" alt="xcode build settings" />

Plug in your iOS device. In Xcode, under Scheme, select iOS device under rhorunner. Then build and run.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/build-rhodes-app/rhorunner-xcode-scheme-device-4.0.png" alt="xcode scheme device" />

For more information on running on your iOS device from Xcode, go to the [Apple developer site](http://developer.apple.com/), go to the iOS Developer Library, and search on "managing devices", or "run applications on a device," or similar.

You can edit your RhoMobile code for your RhoMobile application in a text editor, save your changes, do a Clean in Xcode so that your changes will register in Xcode, and then rebuild and run your project from Xcode.

The resulting application package (*.app) is located in your RhoMobile source code folder under /platform/iphone/build/, in a folder named like [Debug/Release]-[iphoneos/iphonesimulator]/rhorunner.app.

## Building and Run on devices before iPhone4 and iPad

From XCode 4.2 on, Apple removed default support of the armv6 architecture. In this case there are two issues.

Your distribution build should include code for both armv6 and armv7. The XCode projects included with RhoMobile and used for build RhoMobile-based application for iOS are already fixed for this.

If you want to build/run/debug your application on devices before iPhone4/iPad (for example, on iPhone 3G), you should manually path all your native extension xcode projects used in your application for Architecture settings. In your project, under Build Settings -> Architectures, click the Debug or Release row (depending on if you are debugging or releasing), and choose "Other". In the pop-up box, modify as follows.

* Remove `$(ARCHS_STANDARD_32_BIT)` and replace by typing `armv6`.
* Use the plus button to add a new row. Type `armv7`.
* Click Done.

## Restoring rhorunner.xcodeproj

To restore the Xcode rhorunner.xcodeproj to its original state:

    :::term
    $ rake build:iphone:restore_xcode_project

## Building iPhone Application from the Command Line

Unlike building the application from the Xcode GUI, when you build the application from the command line, use the rake command from the directory of the application that you had just generated with rhogen.

From the command line, navigate to the folder for your RhoMobile application.

To run your RhoMobile application in the iPhone simulator, run this rake command:
  
    :::term
    $ rake run:iphone

## Building the Application for the iOS Device

After you have modified and debugged your RhoMobile application, you can prepare your application to install to your iOS device. 

### Modifying the build.yml

First, in your application's build.yml file, change sdk to iphoneos instead of iphonesimulator, configuration to Release instead of Debug, and add information such as codesignidentity.

  iphone:
    sdk: iphoneos4.3
    configuration: Release
    codesignidentity: "iPhone Developer"
    entitlements: ""

### build.yml settings

The default build.yml settings generated for iphone are:

  name: myapp
  version: 1.0
  iphone: 
    provisionprofile: 
    sdk: iphonesimulator3.0
    entitlements: 
    codesignidentity: 
    configuration: Debug
    emulator: 3.0
    emulatortarget: iphone
    BundleIdentifier: com.yourcompany.yourapp
    BundleURLScheme: yourapp
    entitlements_file: "./production/Entitlements.plist"
    production:
      app_plist_title: "myapp"
      app_plist_subtitle: "myapp"
      app_plist_icon_url: "www.yourcompany.com/icon.png"
      app_plist_ipa_url: "www.yourcompany.com/myapp.ipa"
      ipa_itunesartwork_image: "./production/image.jpg"  


* name: name of your application. Will show on screen (iPhone application bundle display name)
* version: version of your application. iPhone application bundle version
* provisionprofile: The UUID of your provisioning profile to use when signing. 
* sdk: The version of sdk used to build. Typically iphonesimulatorX.X or iphoneosX.X
* entitlements: propertylist file for entitlements for your build. Typically is Entitlements.plist
* codesignidentity: The name of the code signing identity to use when signing for device.
* configuration: Debug/Release/Distribution
* emulator: version of emulator for run application
* emulatortarget: device family for simulator (iphone/ipad)
* BundleIdentifier: bundle identifier - used in provisioning profile 
* BundleURLScheme: bundle URL scheme of your app (used for opening your application from another application by using custom URL scheme)
* entitlements_file: path of your custom Entitlements.plist (if you want use own instead of default) - you also can just put Entitlements.plist file into root folder of your application and it will be automatically used during build
* production: section used only for Ad Hoc distribution, contain some specific options for prepare .plist and *.ipa files etc.
* app_plist_title: title in plist file (application name by default)
* app_plist_subtitle: subtitle in plist file (application name by default)
* app_plist_icon_url: icon url written in plist file
* app_plist_ipa_url: IPA file url written in plist file
* ipa_itunesartwork_image: path to iTunesArtwork image included into IPA file (must be 512x512 JPG image) 


** NOTE: BundleIdentifier and BundleURLScheme can contain only next symbols : "a"-"z", "A"-"Z", "0"-"9", "-", "." !

Here is an example of the iPhone settings in build.yml for a finished application:

  name: JS App
  version: 1.0
  iphone: 
    provisionprofile: E5931D39-CA68-48E4-A3AF-BB538E1C8CE6 
    sdk: iphoneos4.2
    codesignidentity: "iPhone Developer: John Smith (MF99RW67WY)"
    entitlements: ""
    configuration: Release
    emulator: 4.2
    emulatortarget: ipad
    BundleIdentifier: com.johnsmithcompany.jsapp
    BundleURLScheme: jsapp

### Creating Your Application Package

Now you can create your .app file with this rake command:

    :::term
    $ rake device:iphone:production

The package named <b>your application name.app</b> will be placed to `<your application folder>/bin/target/iOS/[sdkname]/[configuration]/[your application name].app` if you are using RhoMobile from 2.2.4 version.

Result package named <b>rhorunner.app</b> will be placed to `<sdk directory>/platform/iphone/build/[Debug/Release/Distribution]-[iphoneos/iphonesimulator]/rhorunner.app` if you are using RhoMobile before 2.2.4 version.

## Installing Your Application Package to Your iOS Device
Use <b>iTunes</b> for installing your application package (your_application_name.app) to the iOS device:
 
* Open iTunes.
* Under Library, select <b>Apps</b>.
* Drag and drop your application package into the Apps screen.
* Connect your device to iTunes.
* Under Library, select your device.
* Select the <b>Apps</b> tab in your iTunes device screen.
* In the Sync Apps list, check your application.
* Perform a sync. Your application is installed to your device.

## Building the application for the Apple App Store

After you have tested your RhoMobile application on your iOS device and tweaked it as required, you can prepare your application for publishing to the App Store.

### Modifying the build.yml

Update your application's `build.yml` file, change configuration to Distribution, and make sure `sdk` is set to to iphoneos and add information such as codesignidentity.

Here is an example of the iPhone settings in build.yml for distribution:

    :::yaml
    name: JS App
    version: 1.0
    iphone: 
        provisionprofile: E5931D39-CA68-48E4-A3AF-BB538E1C8CE6 
        sdk: iphoneos4.2
        codesignidentity: "iPhone Developer: John Smith (MF99RW67WY)"
        entitlements: ""
        configuration: Distribution
        BundleIdentifier: com.johnsmithcompany.jsapp
        BundleURLScheme: jsapp                
        
### Setting your application name, icon and loading screen

You will need to provide a name and icon for the application that the user will see on the device. You can also customize the loading screen that is shown while your application is launching. Refer to the [Application Icon and Splash Screen](app_icon_splash) guide for detailed information.

### Turn off developer options

Update your application's configuration files to make sure developer / debug / profile options are turned off.

The below values can be used as a guide for `rhoconfig.txt`, skip any setting which is not already present.

    MinSeverity  = 3
    LogToOutput = 0
    net_trace = 0
    log_skip_post = 0
    
The below values can be used as a guide for `build.yml`, skip any setting which is not already present.

    profiler: 0

### Creating your application package

Once you have finished configuration, you can run:

    :::term
    $ rake device:iphone:production

The signed package named `[app-name].app` will be created in `<app-dir>/bin/target/iOS/[sdkname]/Distribution/`. 

## Publishing on the Apple App Store

When your application is ready to be distributed to other users, either for beta testing or for deployment, you have several options:

* Sending the application to users directly, also called Ad-Hoc distribution (for testing purposes only, some limitations apply)
* Uploading your application to the public App Store
* Distributing it under the iOS Enterprise Distribution program (for in-house use only)

All options require you to be enrolled in one of [Apple's iOS Developer Programs](https://developer.apple.com/programs/start/ios/) and to have created signing certificates. iOS code signing and certificate management are often a stumbling block for newcomers to the platform; refer to [About App Distribution](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/Introduction/Introduction.html) and read the instructions carefully.

### Ad-Hoc distribution

For application testing purposes, Apple allows you to designate up to 100 devices that will be able to install your application. When you have the devices signed up in iTunes Connect (Apple's app management portal), create a distribution certificate and ad-hoc provisioning profile. Together, these two files allow you to digitally sign your application and install it on the registered devices.

See the section called [Beta Testing Your iOS App](http://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/TestingYouriOSApp/TestingYouriOSApp.html#//apple_ref/doc/uid/TP40012582-CH8-SW1) in Apple's documentation for the details. 


### Getting a distribution provisioning profile

You need a "distribution provisioning profile" to sign your application before it can be submitted to the App Store. See [Creating Store Provisioning Profiles](http://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/SubmittingYourApp/SubmittingYourApp.html#//apple_ref/doc/uid/TP40012582-CH9-SW8) for steps to create and download a distribution provisioning profile.

### Prepare for App Review

To ensure that your application passes the app store approval process go through the [Guidelines](https://developer.apple.com/appstore/guidelines.html) carefully.

Many applications can benefit from using [native UI elements](native_ui_elements), like the [native tab bar](../api/NativeTabbar), to better integrate with the rest of the platform. There are plenty of [RhoMobile applications on the App Store](http://pinterest.com/motosolutions/rhomobile-apps/) available already; in general, if your application follows the [iOS Human Interface guidelines](http://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/Introduction/Introduction.html) and does not otherwise violate any App Store rule, it will be accepted.

### Submitting your application

When you are ready to submit your application, you can do it [using XCode](http://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/SubmittingYourApp/SubmittingYourApp.html#//apple_ref/doc/uid/TP40012582-CH9-SW20) or [using Application Loader](https://itunesconnect.apple.com/docs/UsingApplicationLoader.pdf)

Once your application is submitted successfully you can view its review status by referring to [these](http://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/UsingiTunesConnect/UsingiTunesConnect.html#//apple_ref/doc/uid/TP40012582-CH22-SW8) steps.

## Differences building for iOS7
### System Status Bar
<div class="row-fluid">
  <div class="span6">
    <p>
      In iOS7, the system status bar does not have a size and does not shift the application window down, because it is transparent and always drawn over the application window. This can be an issue for older applications because the system status bar is drawn over the WebView content located at the top.
    </p>
    <p>
      To resolve this issue we reserve some room at the top of the application (with a gray color fill) and shift the WebView down, as with the old status bar. In this case all applications using an SDK older that iOS7 will work without content placing/showing issues.
    </p>
    <p>
      If you want to use the whole space for the WebView you can use the following special build.yml parameter which works only for applications using the iOS 7.0 S
    </p>
    <p>To enable the new iOS7 look for the status bar, simply add <b>iphone_use_new_ios7_status_bar_style: 1</b> to your build.yml file.
  </div>
  <div class="span3" style="text-align:center">
    <b><div>enabled</div></b>
    <div>
      <img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_without_iphone_use_new_ios7_status_bar_style_4.0.png"/>
    </div>
  </div>
  <div class="span3" style="text-align:center">
    <b><div>disabled</div></b>
    <div>
      <img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_with_iphone_use_new_ios7_status_bar_style_4.0.png"/>
    </div>
  </div>
</div>

### Fullscreen Mode

We do not currently support fullscreen mode on iOS7. We are working to solve this by the RhoElements 4.1 release.

### Native Toolbar

<div class="row-fluid">
  <div class="span6">
    <h4>Background Color</h4>
    iOS7's new Toolbar has a flat design. You can setup only background color and color for icons (new iOS7 feature).
    Options for background color the same with old API; integer value.</br>
    Example for Ruby hash: `Rho::NativeToolbar.create(:buttons => toolbar, :background_color => 0xFFFF00)`
    <h4>Icon Color</h4>
    The new option for icon color is alos an integer value. This only works for applications using the iOS7 SDK.
    Example for Ruby hash: `Rho::NativeToolbar.create(toolbar, :iOS7IconColor => 0xFFFF00)`
  </div>
  <div class="span3" style="text-align:center">
    <b><div>:background_color => 0xFFFF00</div></b>
    <img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_toolbar_bg_color_4.0.png"/>
  </div>
  <div class="span3" style="text-align:center">
    <b><div>:iOS7IconColor => 0xFFFF00</div></b>
    <img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_toolbar_ios7_icon_color_4.0.png"/>
  </div>
</div>

<div class="row-fluid">
  <div class="span6">
    <h4>Colored Icon Flag</h4>
    The colored icon flag is still working as it did in earlier versions RhoElements.
    <div>Example for Ruby hash:`toolbar = {:action => :home, :icon => '/public/images/bar/colored_btn.png', :colored_icon => true}`</div>
  </div>  
  <div class="span3" style="text-align:center">
    <div><b>:colored_icon => true</b></div>
    <img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_native_toolbar_colored_icon_true_4.0.png"/>
  </div>
  <div class="span3" style="text-align:center">
    <div><b>:colored_icon => true</b></div>
    <img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_native_toolbar_colored_icon_false_4.0.png"/>
  </div> 
</div>

### Native Tabbar
<div class="row-fluid">
  <div class="span6">
    iOS7's TabBar now also has a flat design. You can setup only background color and selected color for icons (new iOS7 feature).
    Previous Rhodes API feature for selecting a color for each icon separately (selected_color property) is not supported when using the iOS7 SDK.
    <h4>Background Color</h4>
    Options for background color are the same as with the previous Rhodes API: integer value.
    Example for Ruby hash:`:background_color => 0x00004F`
    <h4>Icon Color</h4>
    New options for selected icon color: integer value. This works only for applications usinf the iOS7 SDK.
    Example for Ruby hash :`:iOS7SelectedColor => 0xFFFF00`
  </div>
  <div class="span6" style="text-align:center">
    <b><div>:background_color => 0x00004F and :iOS7SelectedColor => 0xFFFF00</div></b>
    <img style="height:480px" src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/build-rhodes-app/build_ios_ios7_changes_native_tabbar_bg_color_and_selected_icon_4.0.png"/>
  </div>
</div>
