# Build for Windows Phone 8

## Setup
Follow the instructions for [setting up the development environment](nativesdksetup#setup-for-windows-phone-10) for building Windows Phone 10 applications.

### Building Remotely
Alternatively, you can create the device builds remotely with RhoMobile hosted builds. Refer to our [remote build guide](../../hosted/guide/remote-build-guide) for more info.

## Application changes
    
* Add a productid GUID to application build.yml . For example:

        uwp:
          productid: caa0300f-1021-40aa-bb98-27c5547616fa
NOTE: When you use the `rhodes app` command to generate an application, a productid is generated automatically

## Build and run using Rhodes gem

* Install Rhodes gem

* Run application simulator:

        $rake run:uwp

NOTE: You may use your computer keyboard with Windows Phone 10 emulator. By default it is disabled, but you can enable it pressing **PgUp** key. While it is enabled a device rotation simulation is not supported. To rotate device you need to disable keyboard support pressing **PgDown** key.  Look [MSDN page](https://docs.microsoft.com/en-us/windows/uwp/debug-test-perf/test-with-the-emulator) for much more details on this topic.

* load application to device:

        $rake run:uwp:device

* See log in application folder : rholog.txt

NOTE: When running on device you may need to disconnect USB cable from device to see log

* After Application code modifications, run rake commands. DO NOT close simulator!

## Build from sources
* Checkout rhodes source code from github 

## Build from IDE
### Rhodes
* Open `rhodes\platform\uwp\rhodes.sln` in VS 2015 or VS Express 2015 for Windows Phone with version 10.0.14393.
* Select Debug or Release configuration, Windows Phone 10 Emulator target and build solution.
* Run emulator by pressing Start Debugging or Start Without Debugging
* After Application code modifications , build Rhodes solution and Start Debugging. DO NOT close emulator!
* See log in VS output console (Debug mode only)

## Building the application for the Windows Phone Store

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

Once your `build.yml` is set up, you can run:

    :::term
    $ rake device:uwp:production
    
The compiled application .APPX file will be located in `<your project folder>\bin\target\uwp` and all dependencies you may need are in '<your project folder>\bin\target\uwp\Dependencies'

### Deploying application to Windows Phone 10 device

To deploy application .APPX file to UWP device:

1. Windows Phone 10 device should be [registered for development](https://docs.microsoft.com/en-us/windows/uwp/get-started/enable-your-device-for-development).
2. Connect WP10 device to your development Windows 10.x PC via USB
3. On the PC go to Start screen and search for `Application Deployment`
4. Run Application Deployment tool, specify Target=Device, select your APPX file and click Deploy.

## Publishing on Windows Phone Store

### Getting a Windows Phone Dev Center account

To publish your app on Windows Phone Store you need a [Dev Center account](http://dev.windowsphone.com/en-us/join).

### Uploading and Publishing your application

Publishing your application on Windows Phone Store is a simple two step process:

* First [create your app info](https://developer.microsoft.com/en-us/store/publish-apps). This includes information like pricing, application category (business, entertainment, etc.)

* Next [upload and describe your APPX](https://developer.microsoft.com/en-us/store/publish-apps). This includes details like the application description, icon and screenshots etc.

Refer to the [official docs](https://developer.microsoft.com/en-us/store/publish-apps) for all details about publishing to the Windows Phone Store.
