# Native SDK Setup
This page describes how to setup the underlying native SDKs when building a RhoMobile application locally for our supported platforms: iPhone, Android, Sailfish, RIM Blackberry and Windows Mobile.

## Setup for iOS
In order to build an iOS application locally, it must be performed on a Macintosh computers using any type of type of laptop/desktop. The instructions below describe how to do this from either the Macintosh Xcode development environment or from the command line on your local Macintosh.

### Prerequisites
To build for iPhone/iPad using you will need the following software installed:

* Mac OS X 10.6 or greater.
* XCode 4.2 or greater
* XCode Command Line Tools (already included in versions of XCode before 4.3) should be installed manually from XCode 4.3 - see Note below.
* iPhone SDK. We recommend installing the latest XCode with the latest iOS SDK (the latest XCode is already included with the iOS SDK). The latest stable version is available from the [iPhone Dev Center](http://developer.apple.com/iphone/index.action).

> Note: In XCode 4.3, command line tools are not included in the installation. You should install the command line tools from XCode by using the Components tab of the Downloads preferences panel. See [New Features in Xcode 4.3](https://developer.apple.com/library/ios/#documentation/DeveloperTools/Conceptual/WhatsNewXcode/Articles/xcode_4_3.html)

## Setup for Android
### Setting Up the Android SDK
The stand alone Android SDK is deprecated, but the SDK Manager is included with Android Studio.  Check that your [OS is compatible with Android Studio](https://developer.android.com/studio/index.html).

1) Download and install [Android Studio](https://developer.android.com/studio/index.html).  Once installed, run Android Studio and continue through the introduction screens.

2) On the "Welcome to Android Studio" screen, click "Configure" in the bottom right hand corner, then select "Android SDK".

3) Make a note of the SDK location, or (optionally) select a different location for the Android SDK repository.  This may be located on a shared network location to avoid multiple large downloads of each API level in multi-developer environments.

3) On the "SDK Platforms" tab, select the API levels required.
> Note: A minimum Android API level 19 must be installed for RhoStudio. Recommended API level is 28.

> Note: To use Google Map View you need to install latest Google API from Android SDK Manager

4) On the "SDK Tools" tab, select following items:
* Support Repository
* Google Play Services
* NDK

5) Once everything is selected, click "OK".  The SDK manager will then download all required files.  Click the "Background" to perform this in the background and continue with this setup

### Setting Up the Android NDK

Recommended NDK version is 20. Supported versions are 15c, 16b, 17c and 19. If NDK installed with SDK Manager does not work you can get supported version from Google NDK archive.
Download and unzip the [Android NDK](https://developer.android.com/ndk/downloads/older_releases.html) to the location of your choice.

> Note: You should update the Android SDK and NDK as you update to new versions of Rhodes.

### Pointing RhoStudio to the SDKs
1) Start RhoStudio

2) Open the Preferences window
* on Macintosh -> click the "Preferences" menu
* on Windows -> click the "Window" menu, then "Preferences"

3) Expand "RhoMobile" and click on "Android".  Set the locations for the SDK and NDK as above.  To find the SDK location, run the "SDK Manager" from within Android Studio.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/preferences-android-sdk-4.0.png)

If you are not using RhoStudio, run "rhodes-setup" from the command line and set the paths to the Android SDK and NDK installations.

### Setting up the Android Maps API
In case you are planning to work with native geo mapping (the MapView interface), you must do two things:

* Retrieve the Android Maps API key from Google. Follow these [instructions](https://developers.google.com/maps/documentation/embed/get-api-key) to get it. When key received, put it in your application's `build.yml` or share it across all your applications by adding it to `rhobuild.yml`. Note that the `apikey` value must match a certificate used to sign an application (the key is different for debug and production signed build and debug key cannot be shared between different build computers).

    android:
      apikey: "GOOGLE-API-KEY-FOR-ANDROID"

* Enable 'mapping' in your application's `build.yml` (or in `<rhodes-root>/rhobuild.yml`). In RhoStudio, you can double-click on your application's build.yml and edit from the text editor; otherwise, you can edit rhobuild.yml or build.yml from another text editor.

    android:
      mapping: yes

## Setup for Sailfish
### Prerequisites
Make sure you installed the following software.

* Lastest version of [Virtual Box](https://www.virtualbox.org/)
* Lastest version of sdk from [SailfishOS site](https://sailfishos.org/wiki/Application_SDK)

> Note: for now to use sailfish - you must copy rhodes folder from your ruby gems to home folder, write its path in build.yml (for example `sdk: C:\Users\UserName\rhodes`) and write in `<rhodes-root>/rhobuild.yml` path to installed sailfish sdk that kind a way:
	:::yml
	env:
		paths:
			sailfish: C:/SailfishOS

### Updating libs on target device and build machine
There is a few libraris, thats need to be installed on the build machine:
	:::term
	qt5-qtconnectivity-qtbluetooth
	qt5-qtconnectivity-qtsdpscanner
Install it, using the sailfish IDE. On the left panel - press the button "Sailfish OS", press the settings button near your target platform and find and install that libraries and it's devel versions.
If these libraries wouldn't be installed on the device automatically - you should use the following commands:

    :::term
    devel-su
    pkcon refresh
    pkcon update
    pkcon install qt5-qtconnectivity-qtbluetooth
    pkcon install qt5-qtconnectivity-qtsdpscanner

They must be entered in the terminal, connected to your device in the developer mode.
## Setup for Windows Mobile
Note that Windows Mobile versions of your Rhodes application must be built in a Windows environment.
### Prerequisites
Make sure you have installed the following software. Since Rhdoes builds a unified .cab file for both WM and WinCE, only the WinCE SDK is necessary for building either platform.

* .NET Compact Framework
* For Windows Mobile and Windows CE: MC3000c50b PSDK from [Zebra Support Central](https://atgsupportcentral.motorolasolutions.com/ewa/pub/getFile.do?fileName=/ssi/emb/downloads/30XXC50BxxPS010403.exe)
* Microsoft Active Sync 4.5 for Windows XP; Windows Mobile Device Center for Windows Vista or higher
* Microsoft Device Emulator 3.0 for Windows Vista or higher
* Visual Studio 2008.
* Software for unzipping a zip file, such as [7-zip](http://www.7-zip.org/)

> Note: It is a good idea to install Windows Mobile 6 Professional last, since it needs to be installed after Visual Studio, and since the Windows Mobile 6 Professional install process will tell you if you forgot to install any of the other prerequisites.

## Setup for Windows Desktop
### Prerequisites
* Visual Studio 2015 Community Edition UP3 or higher installed
  * Make sure that `VS140COMNTOOLS` environment variable is defined and points to the correct location, e.g. to `C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools`

* Install [Qt libraries 5.9 with QtWebEngine for Visual Studio 2015](https://download.qt.io/official_releases/qt/5.9/5.9.6/qt-opensource-windows-x86-5.9.6.exe) - 2,3 GB (or [build Qt libraries 5.1.1 for Visual Studio 2008](build_win#build-qt5-for-vs2008))
  * The Qt binaries for Visual Studio 2012 are not compatible with Windows XP. For targeting Windows XP, please refer to the [Build for Windows](build_win) instructions.

* Create new (or update existing) system environment variable `QTDIR` and make sure it points to root folder of the installed Qt libraries, e.g. `C:\Qt\Qt5.9.6\5.9.6\msvc2015`

>Note: If the application uses HTTPS, the Qt binaries must be built against OpenSSL. Please refer to [Build for Windows](build_win) for instructions and links to Zebra's pre-built Qt binaries.

## Setup for Windows 10(UWP)
### Prerequisites
* Windows 10 OS
* Visual Studio 2015 Community Edition UP3 or higher installed
* Download and install [Universal Windows App Development Tools](https://msdn.microsoft.com/en-IN/library/dn975273.aspx) 
* Add path to `msbuild` to `rhobuild.yml` in rhodes folder. Use 32-bit version compiler to build for device.

        env:
          paths:
            msbuild: C:/Program Files (x86)/MSBuild/14.0/Bin/MSBuild.exe
