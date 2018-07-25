# RhoElements-Building Native Applications

<!-- PLACEHOLDER - Block Diagram -->

## Prerequisites

In order to build a Native Application, you will need to have the SDK environments setup on your machine for each targeted mobile platform that you wish to support. In order for RhoStudio to build the final application, these environments must be setup properly and then RhoStudio will need need to know the paths to the build components. 

###1) Setup Mobile Development Environments</b>

[Windows Mobile](../rhodes/build#build-for-windows-mobile)

[iPhone/iPad](../rhodes/build#building-a-rhodes-application-for-iphoneipad)

[Android](../rhodes/build#build-for-android)

[BlackBerry](../rhodes/build#build-for-blackberry)

###2) Java Development Kit

In the [RhoMobile Suite installation instructions](../rhomobile-install), review the Java Development Kit instructions for your operating system.

###3) Install RhoMobile Suite

Follow operating specific instructions for your development machine:

[Mac OS](../rhomobile-install#mac-os)

[Windows 32-bit](../rhomobile-install#windows-32-bit)

[Windows 64-bit](../rhomobile-install#windows-64-bit)


###4) Setup RhoStudio Mobile SDK Paths

Once you have Rhodes, you will need the SDKs for the platform you want to build your app on. These instructions are found [here](../rhodes/build).

	C:\> rhodes-setup

This will prompt you for where you installed the SDKs for the various platforms.  The installation script will display its best guess as to where the SDK is. You can then enter a new location, or leave it blank to use the suggestion. If you are not building for a specific platform (for example, you can't build for the iPhone on Windows), you can leave that SDK location blank. You can find prerequisites for each platform [here](../rhodes/build#all-platforms-prerequisites).


## Generating a RhoElements Native Application

In RhoMobile Suite, select File->New->Project...

The New Project window opens. Select the RhoMobile: RhoMobile application wizard and click the Next button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/new-project.png"/>

Enter the name for your RhoElements application in Project name; in this case, "rhoelementsapp". You may specify a specific folder for your destination where your project is stored, by default, the destination is your workspace folder.

Click the checkbox for the RhoElements application type.

Then press the Finish button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoelements/rhomobile-appgen-wizard-rhoelements.png"/>

After pressing the Finish button, you'll see the RhoElements app generator script output in the output console (Rhomobile build console).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoelements/rhomobile-appgen-output-rhoelements.png"/>

### Adding a Model to a RhoElements Native Application

After you generate a RhoElements native application in RhoStudio, you can add a model to it, along with the associated Controller and View templates. You do this in the same way that you would for a Rhodes application: right-click on the application project in the Project Explorer and select New->RhoMobile model. See [Adding a Model to a Rhodes Application from RhoStudio](../rhodes/generator#adding-a-model-to-a-rhodes-application-from-rhostudio) for a more detailed discussion.

## Managing the Build Configuration from RhoStudio

The `build.yml` file for your application manages your RhoElements build time configuration. Double click on ‘build.yml’ item in your project tree to open the build.yml editor. In the editor you’ll see two tabs: Rhobuild setting for the WYSIWIG editor, and build.yml for the text editor.

Rhobuild setting WYSIWIG editor:

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoelements/buildyml-rhoelbuildsetting.png"/>

build.yml text editor:

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoelements/buildyml-rhoeltextedit.png"/>

You can add capabilities to your application, such as camera and vibrate, by pressing the Capabilities: Add button, selecting the capabilities from the popup window, and clicking the Ok button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/select-capabilities.png"/>

The selected application capabilities will appear in the Capabilities: text field in the WISIWIG editor.

## Building and Running RhoElements Native Applications in RhoStudio

You need to perform some additional steps before you build and run a RhoElements application on [Zebra Mobile devices](rhoelements2-native#building-rhoelements-native-applications-for-motorola-devices). After those additional steps, you can follow essentially the same instructions as you would for a Rhodes application, as shown below. 

You need to edit your build.yml file before you build and run a RhoElements application on [non-Zebra Mobile devices](rhoelements2-native#building-rhoelements-native-applications-for-non-motorola-devices). After those additional steps, you can follow essentially the same instructions as you would for a Rhodes application, as shown below.

To start the build process in RhoStudio, create a Run Configuration: select your project in the Project Explorer, and select Run->Run Configurations… from the menu. The Run Configurations window appears.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/run-configurations.png"/>

To create a new build configuration for your application, select RhoMobile Application. Then either right-click on RhoMobile Application or click the New button. A new configuration appears under RhoMobile Application. Select your platform and simulator type, and click Run to run your application.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoelements/new-configuration-rhoelements.png"/>

## Building RhoElements Native Applications for Zebra Devices

You can build RhoElements native applications for Zebra devices by performing some additional steps. The Zebra devices run Windows Mobile, Windows CE, and Android.

*NOTE:  RhoElements applications will not work in the case of an incorrect network setup on a Windows Mobile device, because RhoElements relies on <code>localhost</code> hostname and <code>127.0.0.1</code> IP-address presence.

In general, when connected to a PC, the device should have Internet connectivity: e.g. the user should be able to browse web with Internet Explorer from the Windows Mobile device.
In case of broken Internet connectivity, make sure that at <code>Settings</code> » <code>Connections</code> » <code>Connections</code> » <code>Advanced</code> » <code>Select Networks</code>
the value <code>My ISP</code> is selected in both select boxes.

### Building on Zebra Windows Mobile Devices

To build for Zebra Windows Mobile devices, you can create a run configuration in RhoStudio, choose Windows Mobile as the platform, and click the Run button. For detailed instructions on building and running on Windows Mobile, such as prerequisite software and setting SDK paths, refer to the Rhodes build instructions for [Windows Mobile](../rhodes/build#build-for-windows-mobile).

### Building on Zebra Windows CE Devices

To build for Zebra Windows CE devices, you can create a run configuration in RhoStudio, choose Windows Mobile as the platform, and click the Run button. For detailed instructions on building and running on Windows Mobile, such as prerequisite software and setting SDK paths, refer to the Rhodes build instructions for [Windows Mobile](../rhodes/build#build-for-windows-mobile).

Additionally, you need to install MC3000c50b PSDK from the [Symbol support site](http://support.symbol.com/support/search.do?cmd=displayKC&docType=kc&externalId=11964&sliceId=&dialogID=45371217&stateId=0%200%2045367143). 

Then add MC3000c50b to your application's build.yml file.

        wm:
          sdk: "MC3000c50b (ARMV4I)"

### Building on Zebra Android ET1 Devices

Before you build for a Zebra Android ET1 device, you need to:

* Install [Android USB drivers](http://developer.android.com/sdk/win-usb.html).
* On the ET1 device, define Symbol USB vendor ID (0x05e0) in (user_profile)/.android/adb_usb.ini.

		0x05E0

To build for Zebra Android ET1 devices, you can create a run configuration in RhoStudio, choose Android 2.3.4 as the platform, and click the Run button. For detailed instructions on building and running on Android, such as prerequisite software and setting SDK paths, refer to the Rhodes build instructions for [Android](../rhodes/build#build-for-android).

## Building RhoElements Native Applications for non-Zebra Devices

You can build RhoElements applications that will run on devices other than Zebra devices.

### Building for Non-Zebra Windows Mobile/CE and Android Devices

To build a RhoElements application for a non-Zebra device on Android, Windows CE, or Windows Mobile, add the following to your application's build.yml file. This application will use the [Rhodes device capabilities](../rhodes/device-caps) but will provide the Zebra Webkit as the rendering engine (Android, Windows Mobile, Windows CE devices only).

    app_type: rhoelements
    
    capabilities:
    - non_motorola_device

Then you can create a run configuration in RhoStudio for Windows Mobile or Android, and click the Run button. For detailed instructions, such as prerequisite software and setting SDK paths, refer to the Rhodes build instructions for [Android](../rhodes/build#build-for-android) or for [Windows Mobile](../rhodes/build#build-for-windows-mobile). 

### Building for iOS and Blackberry Devices

To build a RhoElements application for iPhone/iPad, have app_type set to rhoelements in build.yml. Then you can use the same instructions for [building a Rhodes application for iPhone/iPad](../rhodes/build#building-a-rhodes-application-for-iphoneipad).

To build a RhoElements application for Blackberry, have app_type set to rhoelements in build.yml. Then you can use the same instructions for [building a Rhodes application for BlackBerry](../rhodes/build#build-for-blackberry).

For iOS or Blackberry, you must edit your build.yml file each time you build to ensure that app_type is set to rhoelements.

## Enabling Zebra Device Capabilities

By default, when creating an application using the app generator described above, RhoElements will be the default application type. If you have a previous Rhodes application that you would like to convert to a RhoElements application or if you did not have this option checked initially, all you need to do is add the following line in the build.yml file:

    app_type: rhoelements


NOTE: After application type change in build.yml it is required to run <code>rake clean:wm</code> and/or <code>rake clean:android</code> respectively from command line in the application folder, or check 'Clean before build' option in the respective Run Configuration(s).

This indicates that your application will be a "RhoElements" application. This application type by default uses the Zebra Webkit as the rendering engine for your application interface. It also exposes [an extended set of RhoElements APIs](apicompatibility). If you build your application without this parameter, only the APIs that are indicated as <span class="label">RHODES</span> will be available and the default rendering engine will be unique to the native operating system that the application is deployed on.

## Pre Licensing Your Application

A license is required to run a RhoElements application. On Non-Zebra devices that are running Android, iOS or Blackberry operating systems, you cannot license the application from the device. You will need to include the licensing information as part of the build process.  A 'Deployment License' is needed and the following information should be provided in the application's build.yml file. 

	motorola_license_company: 'Deployment License Company name'
    motorola_license: 'Deployment License Number'

When the application is started, the license is checked for validity. If the license is invalid, the user will be notified and have to acknowledge before proceeding. You may obtain this information from the [Software Licensing Server](https://softwarelicensing.motorolasolutions.com/). After logging into the server you will see your license information on the 'Deployment License' tab.

NOTE: For Zebra devices and Non-Zebra devices that run Windows Mobile or Windows CE, the license cannot be obtained directly from the device or pre-bundled with the application. For these devices, you may either apply the license directly from the device using the licensing wizard's Manual or Internet methods.

See the [RhoElements Licensing page](licensing) for more information.

## Enabling Zebra Webkit
In conditions where you may have a traditional Rhodes application but would like to utilize the Zebra Webkit on Windows Mobile, Windows CE, or Android devices, add the Zebra browser capability to your application's build.yml file. 

    capabilities:
    - motorola_browser

**NOTE: If you use the above setting without specifying <b>app_type: rhoelements</b>, <span class="label label-important">RUBY</span> <span class="label label-inverse">RHOELEMENTS</span> APIs will not be available.**

## Applications in Shared Mode

If you are planning on building multiple applications to be run on the same device, you can optionally choose to build your application in what is called "shared mode". Common libraries from a RhoElements Runtime is stored only once on a device in a predefined location. Each application then uses this shared location for the core libraries and the application's device footprint will only include the application specific code. This will result in not duplicating common code and consuming extra memory as well as produce faster compile times for each application.

There are two steps to this setup.

1. Install the RhoElements Runtime (can be done once).
2. Build the application and indicate at build time that shared mode will be used.

**NOTE: The RhoElements Runtime is only available on [Zebra Technologies devices](rhoelements-introduction#_motdevices). This is a more complicated setup that involves coordination at build and run times. It should be meant for scenarios that have multiple RhoElements applications running on the same device where you could be concerned about memory limitations. Failure to properly build and deploy will result in a non-functioning application.**

<!-- PLACEHOLDER - DIAGRAM NEEDED -->

### Installing The RhoElements Runtime

After installing RhoMobile Suite, you will find a folder that includes an shared runtime installer for each platform

	`<RhoMobile Suite Install Folder>\RhoElements2 Shared Runtime\Windows Mobile`
	`<RhoMobile Suite Install Folder>\RhoElements2 Shared Runtime\Windows CE`
	`<RhoMobile Suite Install Folder>\RhoElements2 Shared Runtime\Windows Android`


NOTE: The runtime application <b>must</b> be installed to the primary disk partition on the Windows CE/Mobile device, i.e. it has to be installed to `\Program Files\RhoElements` only.
On Windows Mobile, the `Device` option must be selected when the installer asks for the location to install.
On Windows CE, the default path (`\Program Files\RhoElements`) must be selected.

### Enabling Shared Mode

Now that your RhoElements Runtime has been built, your main application needs to indicate that it will run in shared mode. Indicate this mode by adding `use_shared_runtime` to your application's build.yml file:

    wm:
      use_shared_runtime: yes

All RhoStudio or rake commands will then automatically build your application in shared mode.

* Windows CE and Windows Mobile: Follow the build instructions for [Windows Mobile](../rhodes/build#build-for-windows-mobile).
* Android ET1: Follow the build instructions for [Android](../rhodes/build#build-for-android).

NOTE: You <b>must</b> install your RhoElements native application that uses shared mode to the primary disk partition of the Windows CE/Mobile device, i.e. install to `\Program Files\&lt;app-name&gt;` only.
On Windows Mobile, you must select the `Device` option when the installer asks for the location to install.
On Windows CE, you must select the default path (`\Program Files\&lt;app-name&gt;`).

### Setting the Shortcut (.lnk) for Windows Mobile and CE

If a RhoElements application running in shared mode is not a hidden app (i.e. there is no `hidden_app: yes` line at `build.yml`),
then on Windows Mobile or Windows CE the shortcut (`.lnk` file) containing the complete command line and icon path is created and placed to:

* _Start Menu_ if the application is installed from the `.cab` file or by a `rake run:wm:device:cab` command.
* _application folder_ if the application is installed by a `rake run:wm:device` command.

The generated `.lnk` is a standard Windows Mobile/CE shortcut file having the following format: 
`<line-length>#"<runtime-exe>" -approot="<app-folder>"?"<icon-path>"`

The following command line parameter is used by the RhoElements Runtime (`RhoElements.exe`) for RhoElements applications:
        
    -approot='<path-to-app>': Specifies the path to the root folder
        of the RhoElements main application,
        e.g. -approot='\Program Files\app'

If the `-approot` parameter is not present, then the value from `Configuration` > `Applications` > `Application` > `General` > `StartPage` tag of the RhoElements Runtime configuration file will be used as the start page parameter (usually it points to 'Welcome to Zebra RhoElements' page).

Set the `approot` parameter in the .lnk file to point to your RhoElements main application, such as:

	81#"\Program Files\Rhoelements2\rhoelements2.exe" -approot='\Program Files\myre2app'

## Including a Customized RhoElements Configuration File

You can include a custom [RhoElements configuration file](ConfigurationSettings) `Config.xml` in your native application bundle.

**NOTE: This only works on Windows Mobile and Android with Zebra WebKit. It does not work with RhoSimulator.**

The only sections of `Config.xml` used in a native application are related to webkit and plug-in, such as specifying a user agent string. The Logger section and the startpath are ignored.

Copy the original `Config.xml` file from the RhoElements gem on your development computer: `gems\rhoelements-<version number>\libs\data\Config\Config.xml`. Place the copy into another location on your development computer, such as in your application root directory. Customize the copied `Config.xml` as needed.

Then in `build.yml` file, add a path to the customized copy of the `Config.xml` file. You must specify the path relative to your application root directory. For example, if your application is located at `c:/store/` on your development computer, and you copied Config.xml into `c:/store/Config/Config.xml`, then `build.yml` should have the following lines:

    rhoelements:
      config: Config/Config.xml

If the configuration file is the same for all supported platforms, add to the `build.yml` file:

    rhoelements:
      config: <relative-path-to-Config.xml>

If the configuration file differs for each platform, then add the following lines to the `wm` and `android` sections of `build.yml` to point to each configuration file:

    wm:
      rhoelements:
        config: <relative-path-to-Config.xml-for-WM>

    android:
      rhoelements:
        config: <relative-path-to-Config.xml-for-Android>

For example:

    wm:
      rhoelements:
        config: Config/Config.xml.wm

    android:
      rhoelements:
        config: Config/Config.xml.android


## Logging a RhoElements Native Application

The RhoElements native application log is configured via the `rhoconfig.txt`, located in the app source root folder.

By default the log file has name `rholog.txt` and placed at the following location:
* Windows Mobile/CE: `rho` folder of the application folder.
* Android: `rhodata` folder of the application folder (accessible at emulator or rooted device only).

You can use the `logserver` parameter to send the log to the host via HTTP. There is no option to store the log file on the mobile device in this case.
        
**NOTE: See [configure logging](../rhodes/configuration#run-time-configuration) using the parameters in `rhoconfig.txt`. You will be able to configure options like severity levels, log file size, etc**

If you start your application with rake, then the log file is additionally stored at the app source root folder. In this case, the name of the log file is defined in `build.yml` with the `applog` parameter (by default the log file name is `rholog.txt`).

**NOTE: See [enable HTTP-logging](../rhodes/test-log-debug#logging) with a help of `rhologurl` parameter in `rhoconfig.txt`.**

### Accessing the rhodata Folder on Non-Rooted Devices

On devices that are not rooted, like the Zebra ET1, the rhodata folder is not typically accessible through USB. You can change the location of the log file if you wish to have easy access to it.

Add the LogFilePath parameter to rhoconfig.txt (feel free to change the path).

	LogFilePath = '/mnt/sdcard/myapp.log'

Then in build.yml, add the sd card to capabilities.
 
	capabilities:
	  - sdcard

## Setting the Application Name and Icon, Upgrading the Application

You can use the Rhodes instructions for [how to set application name and icon](../rhodes/build#how-to-set-application-name-and-icon) and [upgrading an application](../rhodes/build#upgrade-application).

## Using A Different RhoElements Library

A RhoElements native application uses the Rhodes gem: by default, that is the latest Rhodes gem installed on your computer. You can use the Rhodes instructions for [setting up build.yml](../rhodes/build#setting-up-buildyml) to use a different version of the Rhodes gem.

To use a different version of the RhoElements gem - add to build.yml:

    paths:
      extensions: <RhoElements gem path>\libs


## Databases, Synchronizing, Debugging, Etc.

Some of the capabilities that a RhoElements native application Rhodes application both use:

* [local database and RHOM](../rhodes/rhom) 
* [synchronization](../rhodes/synchronization) 
* [connecting to web services](../rhodes/connect-to-web-services)
* [debugging](../rhostudio.tutorial#using-the-debugger)


