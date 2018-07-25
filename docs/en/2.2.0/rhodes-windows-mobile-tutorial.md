Rhodes on Windows Mobile Tutorial
========
This tutorial will guide you through building and running a Rhodes application on Windows Mobile.

Pre-requisite Reading
---------------------
 * [RhoMobile Suite install](rhomobile-install)
 * [Rhodes Installation from command line](rhodes/install)
 * [Rhodes App Generator](rhodes/generator)

## Installing Rhodes

This tutorial assumes that you will use a Windows computer, or a computer running Windows in an emulator. This is necessary to create apps for Windows Mobile.

To install and setup Rhodes, follow the [Rhodes install instructions](rhodes/install).

## Installing Prerequisite Software

You must install the following software to build a Windows Mobile application.

* Microsoft Active Sync 4.5 for Windows XP; Windows Mobile Device Center for Windows Vista or higher
* Microsoft Device Emulator (if it is not installed already)
* Visual Studio 2008.
* Windows Mobile 6 Professional SDK 
* A program that can unzip files, such as [7-zip](http://www.7-zip.org/)

NOTE: It is a good idea to install Windows Mobile 6 Professional SDK last, since it needs to be installed after Visual Studio, and since the Windows Mobile 6 Professional SDK install process will tell you if you forgot to install any of the other prerequisites.

## Setting Paths

Add paths to vcbuild.exe and CabWiz.exe to your rhobuild.yml, which is in the Rhodes folder (example location: `C:/InstantRhodes/ruby/lib/ruby/gems/1.8/gems/rhodes-3.0.2`).

	env:
	  paths:
	    vcbuild: C:/Program Files/Microsoft Visual Studio 9.0/VC/vcpackages/vcbuild.exe
	    cabwiz: C:/Program Files/Windows Mobile 6 SDK/Tools/CabWiz

On 64-bit installations:

	env:
	  paths:
	    vcbuild: C:/Program Files (x86)/Microsoft Visual Studio 9.0/VC/vcpackages/vcbuild.exe
	    cabwiz: C:/Program Files (x86)/Windows Mobile 6 SDK/Tools/CabWiz

## Setting up the Mobile Device Connection

On Windows XP, open ActiveSync and open the File menu; on Windows Vista and above, open Windows Mobile Device Center and click Mobile Device Settings. 

Select Connection Settings, select the checkbox "Allow connections to one of the following," and select "DMA" from the list box.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-windows-mobile-tutorial/connection-settings.png" alt="Connection Settings" />

## Generating a Rhodes Application

To generate a Rhodes application and its base files, run this command (for example, to create :

    :::term
    $ rhodes app your-rhodes-app

This will generate an application directory called "your-rhodes-app" with the base files for the application. For detailed instructions on generating a Rhodes application and adding models to the application, follow the [Rhodes Application Generator instructions](rhodes/generator).

When you have coded your application and it is ready to build for Windows Mobile, enter your application directory, where you will run the build and run commands.

	:::term
	$ cd your-rhodes-app

There are several ways to build and run your Rhodes application: you can run it in an emulator for Windows Mobile, you can run and build the application on a Windows Mobile device, and you can generate the .cab file for Windows Mobile and manually install it on your Windows Mobile device.

## Building and Running on the Emulator

To build and run your Rhodes app in the Microsoft Device Emulator, run:

	:::term
	$ rake run:wm

Or you can build the .cab file and run:

	:::term
	$ rake run:wm:cab

Your application will appear in the emulator (give it a little time to start). This example shows the rhodes-system-api-samples application.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-windows-mobile-tutorial/device-emulator.png" alt="Device Emulator" />

## Building and Running on the Device

Connect your Windows Mobile device to your Windows computer with a USB cable. Then check that your device is connected with Active Sync on Windows XP or with Windows Mobile Device Center on Windows Vista or above.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-windows-mobile-tutorial/device-connected.png" alt="Device Connected" />

Now you can run the command to build and run your Rhodes app on your device.

	:::term 
	$ rake run:wm:device

Or you can build the .cab file and run:

	:::term 
	$ rake run:wm:device:cab 

After the build process completes, the device might ask you to install the app. Disconnect the USB cable from the device before you click install, then after the install, select Start -> Programs and select your application to run it.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-windows-mobile-tutorial/device-start-programs.png" alt="Start: Programs" />

## Building and Manually Installing an Application file on the Device

You can also build the .cab file on your Windows computer, and manually install it on your Windows Mobile device.

To build a .cab file for the device, run:

	:::term
	$ rake wm:production 

The .cab file will be located at `<your-rhodes-app>\bin\target\wm6p` on your Windows computer. 

As you did with [Building and Running on the Device](#building-and-running-on-the-device), connect your Windows Mobile device to your Windows computer via USB cable, and check that it is connected in Active Sync or Windows Mobile Device Manager.

Copy the .cab file from your Windows computer to your mobile device:

 * Navigate to `<your-rhodes-app>\bin\target\wm6p`.
 * Drag and drop the .cab file onto the icon for the Windows Mobile device; this will put the .cab file into the device's My Documents folder.

Disconnect the USB cable from your Windows Mobile device.

From your Windows Mobile device:
 * Select Programs from the main menu and click the Tools icon.
 * Click the File Explorer icon.
 * Navigate to My Device/My Documents.
 * Click on the .cab file for your application to execute it.

The application will install into Programs, where you can select it to run it.

## Signing the Application

If you want the application to be signed automatically during the build process, add the 'wmsign' key with full path to your code signing certificate to the 'build' section of rhobuild.yml file:

	wmsign: <disk:/path/MySign.pfx>

You can find more information about Windows Mobile code signing at:
[http://msdn.microsoft.com/en-us/windowsmobile/dd569132.aspx](http://msdn.microsoft.com/en-us/windowsmobile/dd569132.aspx)

## Logging Your Application

To read the log file from the emulator or your device:

* Connect to the device or emulator using ActiveSync or Windows Mobile Device Center.
* Press explore on Active Sync window, File Management on Windows Mobile Device Center.
* Navigate to `My Device\Program Files\<your-rhodes-app>\rho\rholog.txt`
