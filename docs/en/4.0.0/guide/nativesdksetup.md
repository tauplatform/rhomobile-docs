# Native SDK Setup

This page describes how to setup the underlying native SDKs when building a RhoMobile application locally for our supported platforms: iPhone, RIM Blackberry, Windows Mobile and Android.

## Setup for iOS

In order to build an iOS application locally, it must be performed on a Macintosh computers or by using [RhoHub](http://rhohub.com) using any type of type of laptop/desktop. The instructions below describe how to do this from either the Macintosh Xcode development environment or from the command line on your local Macintosh. 

### Prerequisites

To build for iPhone/iPad using you will need the following software installed:

* Mac OS X 10.6 or greater.
* XCode 4.2 or greater
* XCode Command Line Tools (already included in versions of XCode before 4.3) should be installed manually from XCode 4.3 - see Note below.
* iPhone SDK. We recommend installing the latest XCode with the latest iOS SDK (the latest XCode is already included with the iOS SDK). The latest stable version is available from the [iPhone Dev Center](http://developer.apple.com/iphone/index.action).

** NOTE: In XCode 4.3, command line tools are not included in the installation. You should install the command line tools from XCode by using the Components tab of the Downloads preferences panel. See [New Features in Xcode 4.3](https://developer.apple.com/library/ios/#documentation/DeveloperTools/Conceptual/WhatsNewXcode/Articles/xcode_4_3.html) **

## Setup for Android


### Setting Up the Android SDK and NDK

Check that your [OS is compatible with the Android SDK](http://developer.android.com/sdk/requirements.html).

Download the [Android SDK](http://developer.android.com/sdk/index.html), and unzip it to the location of your choice.

On Macintosh and Linux, navigate to and run `<Android SDK>/tools/android sdk`. On Windows, navigate to and run <Android SDK>/SDK Manager.exe. The Android SDK Manager window appears. Then perform the following steps:

 * Select Settings, then check "check `Force https://... sources to be fetched using http://".
 * Run Android SDK Manager, check latest Android SDK Platform(s) and Google APIs, then click "Install packages" button to download and install them.

** NOTE: To use Google Map View you need to install latest Google API from Android SDK Manager **

Download and unzip the [latest Android NDK](http://developer.android.com/sdk/ndk/index.html) to the location of your choice.

** NOTE: You need to update Android SDK platforms and Android NDK to latest ones as you update to new versions of Rhodes. Android NDK version r8e is required as a minimum. **

In RhoStudio -> Preferences on the Macintosh or Windows -> Preferences on Windows, open Rhomobile->Android and set the paths to your Android SDK and NDK installations.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/preferences-android-sdk-4.0.png"/>

If you are not using RhoStudio, run rhodes-setup from the command line and set the paths to the Android SDK and NDK installations.

### Setting up the Android Maps API

In case you are planning to work with native geo mapping (the MapView interface), you must do two things:

* Retrieve the Android Maps API key from Google. Follow these [instructions](http://code.google.com/intl/en/android/add-ons/google-apis/mapkey.html) to get it. When key received, put it in your application's `build.yml` or share it across all your applications by adding it to `rhobuild.yml`. Note that the `apikey` value must match a certificate used to sign an application (the key is different for debug and production signed build and debug key cannot be shared between different build computers).

	android:
	  apikey: "GOOGLE-API-KEY-FOR-ANDROID"

* Enable 'mapping' in your application's `build.yml` (or in `<rhodes-root>/rhobuild.yml`). In RhoStudio, you can double-click on your application's build.yml and edit from the text editor; otherwise, you can edit rhobuild.yml or build.yml from another text editor.

	android:
	  mapping: yes

## Setup for Windows Mobile

Note that Windows Mobile versions of your Rhodes application must be built in a Windows environment.

### Prerequisites

Make sure you have installed the following software.

* .NET Compact Framework
* For Windows Mobile 6: Windows Mobile 6 Professional SDK Refresh
* For Windows Mobile 6.5.3: Windows Mobile 6.5.3 Professional DTK
* For Windows CE 5.0: MC3000c50b PSDK from [Zebra Support Central](http://support.symbol.com/support/supportcentral/supportcentral.do?id=m1)
* Microsoft Active Sync 4.5 for Windows XP; Windows Mobile Device Center for Windows Vista or higher
* Microsoft Device Emulator 3.0 for Windows Vista or higher
* Visual Studio 2008. 
* Software for unzipping a zip file, such as [7-zip](http://www.7-zip.org/)

NOTE: It is a good idea to install Windows Mobile 6 Professional last, since it needs to be installed after Visual Studio, and since the Windows Mobile 6 Professional install process will tell you if you forgot to install any of the other prerequisites.


## Setup for Windows Desktop

### Prerequisites

* Visual Studio 2008
* Install [Qt libraries 4.7.4 for Visual Studio 2008](ftp://ftp.qt-project.org/qt/source/qt-win-opensource-4.7.4-vs2008.exe) (235 MB)
* Create new (or update existing) system environment variable `QTDIR` and make sure it points to root folder of the installed Qt libraries, e.g. `C:\Qt\4.7.4`
* Add `bin` folder of installed Qt libraries, e.g. `C:\Qt\4.7.4\bin`, to `PATH` system environment variable

NOTE: If your application uses HTTPS protocol, then you need to build Qt libraries with OpenSSL (see [instructions below](#build-for-windows-https)).
NOTE: Qt libraries for Visual Studio 2012 binary package is incompatible with Windows XP, so if you need Windows XP compatibility, you should [follow these instructions](build_win#build-for-windows-https) to build XP-compatible binaries.


## Setup for Windows Phone 8

### Prerequisites

* Windows 8 OS
* Visual Studio 2012 installed or VS Express 2012 for Windows Phone
    * [Windows Phone SDK 8.0](http://dev.windowsphone.com/en-us/downloadsdk)
    
* Add path to `msbuild` to `rhobuild.yml` in rhodes folder. Use 32-bit version compiler to build for device.

	    env:
	      paths:
	        msbuild: C:/Windows/Microsoft.NET/Framework/v4.0.30319/MSBuild.exe


