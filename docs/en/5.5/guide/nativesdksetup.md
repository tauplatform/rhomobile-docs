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

> Note: In XCode 4.3, command line tools are not included in the installation. You should install the command line tools from XCode by using the Components tab of the Downloads preferences panel. See [New Features in Xcode 4.3](https://developer.apple.com/library/ios/#documentation/DeveloperTools/Conceptual/WhatsNewXcode/Articles/xcode_4_3.html)

## Setup for Android
### Setting Up the Android SDK and NDK
Check that your [OS is compatible with the Android SDK](http://developer.android.com/sdk/requirements.html).

1) Download the [Android SDK](http://developer.android.com/sdk/index.html), and unzip it to the location of your choice.

> Note: A minimum Android API level 10 must be installed.

On Macintosh and Linux, navigate to and run `<Android SDK>/tools/android sdk`. On Windows, navigate to and run <Android SDK>/SDK Manager.exe. The Android SDK Manager window appears. Then perform the following steps:

 * Select Settings, then check "check `Force https://... sources to be fetched using http://".
 * Run Android SDK Manager, check latest Android SDK Platform(s) and Google APIs, then click "Install packages" button to download and install them.

> Note: To use Google Map View you need to install latest Google API from Android SDK Manager

2) Download and unzip the [latest Android NDK](http://developer.android.com/sdk/ndk/index.html) to the location of your choice.

> Note: You should update the Android SDK and NDK as you update to new versions of Rhodes. Android NDK version r8e is required as a minimum.

NOTE: RMS 5.1 does not support Android NDK r10; Android NDK r9 is current recommendation. 

Download Android NDK r9 from Google's servers:

* [for Linux](http://dl.google.com/android/ndk/android-ndk-r9-linux-x86.tar.bz2)

* [for Mac OS X](https://dl.google.com/android/ndk/android-ndk-r9d-darwin-x86_64.tar.bz2)

* [for Windows](http://dl.google.com/android/ndk/android-ndk-r9d-windows-x86_64.zip)


3) The Android Support Library must be installed using the latest version. (Minimum Rev 14). This can be installed using the Android SDK Manager under the `Extras` folder.

In RhoStudio -> Preferences on the Macintosh or Windows -> Preferences on Windows, open Rhomobile->Android and set the paths to your Android SDK and NDK installations.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/preferences-android-sdk-4.0.png)

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
Make sure you have installed the following software. Since Rhdoes builds a unified .cab file for both WM and WinCE, only the WinCE SDK is necessary for building either platform.

* .NET Compact Framework
* For Windows Mobile and Windows CE 5.0: MC3000c50b PSDK from [Zebra Support Central](https://atgsupportcentral.motorolasolutions.com/ewa/pub/getFile.do?fileName=/ssi/emb/downloads/30XXC50BxxPS010403.exe)
* Microsoft Active Sync 4.5 for Windows XP; Windows Mobile Device Center for Windows Vista or higher
* Microsoft Device Emulator 3.0 for Windows Vista or higher
* Visual Studio 2008.
* Software for unzipping a zip file, such as [7-zip](http://www.7-zip.org/)

> Note: It is a good idea to install Windows Mobile 6 Professional last, since it needs to be installed after Visual Studio, and since the Windows Mobile 6 Professional install process will tell you if you forgot to install any of the other prerequisites.

## Setup for Windows Desktop
### Prerequisites
* Visual Studio 2012 SP1 (or 2008 SP1)
  * Make sure that `VS110COMNTOOLS` (or `VS90COMNTOOLS`) environment variable is defined and points to the correct location, e.g. to `C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools`

* Install [Qt libraries 5.1.1 for Visual Studio 2012](http://download.qt-project.org/official_releases/qt/5.1/5.1.1/qt-windows-opensource-5.1.1-msvc2012-x86-offline.exe) - 511 MB (or [build Qt libraries 5.1.1 for Visual Studio 2008](build_win#build-qt5-for-vs2008))
  * The Qt binaries for Visual Studio 2012 are not compatible with Windows XP. For targeting Windows XP, please refer to the [Build for Windows](build_win) instructions.

* Create new (or update existing) system environment variable `QTDIR` and make sure it points to root folder of the installed Qt libraries, e.g. `C:\Qt\Qt5\5.1.1\msvc2012`

>Note: If the application uses HTTPS, the Qt binaries must be built against OpenSSL. Please refer to [Build for Windows](build_win) for instructions and links to Zebra's pre-built Qt binaries.

## Setup for Windows Phone 8
### Prerequisites
* Windows 8.x OS
* Visual Studio 2013 installed or VS Express 2013 for Windows Phone
    * [Windows Phone SDK 8.0](http://dev.windowsphone.com/en-us/downloadsdk)

* Add path to `msbuild` to `rhobuild.yml` in rhodes folder. Use 32-bit version compiler to build for device.

        env:
          paths:
            msbuild: C:/Program Files (x86)/MSBuild/12.0/Bin/MSBuild.exe
