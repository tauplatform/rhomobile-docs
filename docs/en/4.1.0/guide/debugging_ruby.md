# Debugging Ruby

## Starting a debug session
Before debugging any RhoMobile app using RhoStudio, you must first make sure your app is setup to run in a debug session.

Ensure that your application is configured properly and successfully runs in [RhoSimulator from the command line](#running-rhosimulator-from-command-line)

* In RhoStudio, select your RhoMobile project from the Project Explorer.
* Select 'Run' -> 'Debug Configurations' from the main menu. The Debug Configurations window appears.
* Find 'RhoMobile Application' section on the left and add new (or modify existing) configuration.

## Debugging Ruby with RhoSimulator
To use RhoSimulator along with RhoStudio debugger to debug the Ruby code in your RhoMobile application:

* Select the required platform.
* Select "RhoSimulator" for simulator type to debug using RhoSimulator.
* Click 'Debug' to start the debugger.

![RhoSimulator Debug Configuration](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/debug-configuration.png)

RhoStudio will, by default, switch to the 'Debug' perspective, and it will establish a connection with RhoSimulator so that you can:

* Set breakpoints.
* Step through code.
* Inspect variables when the application is stopped at a breakpoint in the Variables window.
* View log messages in the Console window.

![RhoSimulator Debugging](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/rhostudio-debug-ruby.png)

## Debugging an App on an Android Device
To use RhoStudio to debug a RhoMobile application running on your Android device you'll want to make sure that your computer can "see" your android device using the adb command. So make sure your device's USB debugging is on and run the adb command in your terminal or command prompt and confirm that your device shows up. Once you have ensured that your computer recognizes your device, follow these steps:

***NOTE: The device also needs to be on the same WiFi as the build machine. In the case where the build machine is connected to multiple networks, you may also need to put a parameter in your `rhoconfig.txt` : `debughosturl='your build machine ip address'`***

* Select "Android" for the platform.
* Select "Device" for simulator type to debug on your device using RhoSimulator.
* Click 'Debug' to start the debugger.

![Android Device Debug Configuration](https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/guide/debugging_ruby/android_device_debug_config.png)

RhoStudio will, by default, switch to the 'Debug' perspective, and it will establish a connection with RhoSimulator so that you can:

* Set breakpoints.
* Step through code.
* Inspect variables when the application is stopped at a breakpoint in the Variables window.
* View log messages in the Console window.

This is what you will see once you start to debug your app.

![Debugging Android Device](https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/guide/debugging_ruby/debug_android_device.png)

## Debug an App in the iOS Emulator
To use RhoStudio to debug a RhoMobile application running on your Android device:

* Select "iPhone" for the platform.
* Select "Simulator" for simulator type to debug in the iOS emulator using RhoSimulator.
* Click 'Debug' to start the debugger.

![Android Device Debug Configuration](https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/guide/debugging_ruby/ios_emulator_debug_config.png)

RhoStudio will, by default, switch to the 'Debug' perspective, and it will establish a connection with RhoSimulator so that you can:

* Set breakpoints.
* Step through code.
* Inspect variables when the application is stopped at a breakpoint in the Variables window.
* View log messages in the Console window.

This is what you will see once you start to debug your app.

![Debugging iOS Emulator](https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/guide/debugging_ruby/debug_ios_emulator.png)
