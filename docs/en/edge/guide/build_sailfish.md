# Build for Sailfish
## Setup
Follow the instructions for [setting up the development environment](nativesdksetup#setup-for-sailfish) for building Sailfish applications.

## Modification of build.yml
There are a few sections in build.yml that you should use to customize your output files

	:::yml
	sailfish:
		configuration: Release
		target: 'arm'
		target_sdk: 'SailfishOS-2.1.4.13-armv7hl'
		build_threads: 1
		enable_web_engine: true
		device:
			type: real
			device_name: INOI R7 (ARM)
			user: nemo
			key: C:/SailfishOS/vmshare/ssh/private_keys/INOI_R7_(ARM)/nemo
			password: 123
			host: '192.168.2.15'
		extensions: ["mediacapture", "barcode", "signature", "rhoconnect-client", "serialport"]
	paths:
		extensions: ["../rhoconnect-client/ext"]

* configuration - Release or Debug - makes output file built with Release or Debug libs
* target - 'arm' or 'i486' - choose a target for a build (i486 is for sailfish emulator)
* target_sdk - 'SailfishOS-2.1.4.13-armv7hl', or another, if you have one - you can choose sdk for building
* build_threads - a number between 1 and quantity of your processor cores - can make the build go faster
> Note: build_threads in some cases may be a cause of errors - please, start with one thread
* enable_web_engine - true or false. If you choose true - your application will be based on QtWebEngine, that is not a part of standard sdk. That means - you should install QtWebEngine on your computer and every device, you want to run your application. If you choose false - it will be based on standard QtWebKit.
* type - 'real' or 'vbox' - type of the target device
* device_name - device name, that you can see from Sailfish IDE
* user - nemo (standard username in a device)
* key - ssh key of your device. Usually it is placed in '<sailfishos_folder>/vmshare/ssh/private_keys/<device_name>/nemo'
* password - that you should set on your device in developer settings
* host - that is also you should set on your device in developer settings 

## Extentions 
There are some available extentions on sailfish:

	:::txt
	mediacapture
	barcode
	signature
	rhoconnect-client
	serialport

## Building and Running Your Sailfish Application from the Command Line
To build your application you should run the command:

	:::term
	$ rake device:sailfish:production

This command generates rpm file, that could be installed on the phone manualy as a production version. But if you want to run applicaion from command line, you should connect the device to your computer with a USB cable. You can verify that your device is connected by executing:

	:::term
	$ ping <device_ip>

After that you should deploy application on the device, using:

	:::term
	$ rake build:sailfish:deploy

After you can run the application by tapping the desktop icon on the device, or you can run command:

	:::term
	$ rake run:sailfish

### Setting your application name, icon and loading screen
You will need to provide a name and icon for the application that the user will see on the device. You can also customize the loading screen that is shown while your application is launching. Refer to the [Application Icon and Splash Screen](app_icon_splash) guide for detailed information.

### Turn off developer options
Update your application's configuration files to make sure developer / debug / profile options are turned off.

The below values can be used as a guide for `rhoconfig.txt`, skip any setting which is not already present.

	:::term
	MinSeverity  = 3
	LogToOutput = 0
	net_trace = 0
	log_skip_post = 0

The below values can be used as a guide for `build.yml`, skip any setting which is not already present.

	:::yml
	profiler: 0

### Creating your application package
Once your configuration is set up, you can run:

	:::term
	$ rake device:sailfish:production

The RPM file will be located in `<rhodes-app-dir>/bin/target`.
