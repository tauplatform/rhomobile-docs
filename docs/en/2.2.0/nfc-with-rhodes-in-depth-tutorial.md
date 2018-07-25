Near Field Communications With Rhodes In-Depth Tutorial
========
This tutorial will guide you through running near field communications with Rhodes, both in the Android emulator and on an Android device. Near field communication is very similar to RFID, and you can even use near field communications to read RFID tags. It has features to have two devices communicate with each other, as well as act as mobile business cards.

**NOTE: As of Rhodes version 3.3.3, the [NFC](rhodes/device-caps#nfc) API is removed from Rhodes. This feature is only supported in Zebra RhoMobile Suite. If you wish to use this feature, you will need to [upgrade to RhoMobile Suite](rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](rhoelements/rhoelements2-native#enabling-motorola-device-capabilities). Additionally, a [RhoElements license](rhoelements/licensing) is required.**

Source Code
-----------
The source code for this example is located here.

 * [Rhodes Webinar Sample for nfc-rhodes](https://github.com/rhomobile/webinar-samples/tree/master/nfc-rhodes)

Webinar Video
-------------
[Vimeo link](http://vimeo.com/24748956)

Pre-requisite Reading
---------------------
 * [RhoStudio Tutorial](rhostudio.tutorial)
 * [RhoMobile Suite install](rhomobile-install)
 * [Rhodes Installation from command line](rhodes/install)
 * [Rhodes NFC](rhodes/nfc)
 * [Android SDK](http://developer.android.com/sdk/index.html)

## Setup

This tutorial assumes that you know how to edit a Rhodes application, and that you have Rhodes version 3.0.1 or higher. It assumes that you have installed Android SDK level 2.3.3, and set paths in your profile to your Android SDK and its tools folder. It also assumes that you have installed Google APIs:10 (which is based on Android 2.3.3), and that you created an AVD (Android Virtual Device) for the Google API. If you do not know how to do this, see [Pre-requisite Reading](nfc-with-rhodes-in-depth-tutorial#pre-requisite-reading).

If you have any Android SDK installed, you can check to see if it has Android 2.3.3 and Google APIs:10. Go to your tools folder in your Android SDK and run android. In the Android SDK and AVD Manager, click Installed packages. If you do not see SDK Platform Android SDK 2.3.3 and Google APIs by Google Inc., Android API 10 in the list of installed packages, click on Available Packages, find them, and install them. Also click Virtual Devices and check that you have an AVD (Android Virtual Device) set up for Google API level 10; create one if you do not.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/android-sdk-avd-manager.jpg" alt="Android SDK and AVD Manager" />

The webinar and this tutorial show Android running from the command line, rather than an IDE such as Eclipse. You can also run from Eclipse.

In the Build for Android section of the [Build Rhodes Application](rhodes/build#build-for-android), you set a path to your Android SDK. Since you will run the adb command from the NFCDemo folder, you should set a path to adb in your profile. For example, on the Macintosh, in .bash\_profile, you set a path to the Android SDK platform-tools folder.

## Preparing the NFCDemo Project

You need to build the NFCDemo project and add a Java library to it.

Note: If you already built the NFCDemo app and added the Java library, but you added timer code and commented out some original code (as is done in one of the Rhodes webinar/tutorials for NFC), you should comment out the timer code and make sure the original code is uncommented, then build that and install it into the Android emulator. This tutorial assumes that you are using the original NFCDemo application as supplied in the Android SDK.

### Building the NFCDemo Project

Navigate to the location of your Android SDK. For example, people who installed the SDK into their Eclipse on a Macintosh might navigate to /Applications/eclipse/android-sdk-mac\_86.

Within your Android SDK folder, navigate to /samples/android-10/NFCDemo.

	:::term
	$ cd samples/android-10/NFCDemo

Check the lists of Android targets that you have.

	:::term
	$ android list targets

This will show you a list of all the Android versions you have. You want Google APIs:10 (which is based on Android 2.3.3). It will look like this:

	:::term
	id: 20 or "Google Inc.:Google APIs:10"
	     Name: Google APIs
	     Type: Add-On
	     Vendor: Google Inc.
	     Revision: 1
	     Description: Android + Google APIs
	     Based on Android 2.3.3 (API level 10)
	     Libraries:
	      * com.google.android.maps (maps.jar)
	          API for Google Maps
	     Skins: WVGA854, WQVGA400, HVGA, WQVGA432, WVGA800 (default), QVGA

Now run the Android command to generate the build scripts for the NFCDemo project. Set the -t parameter to the id number for your Android with Google APIs level 10 or higher; the id is 20 in the above example. Set the -p parameter to the path to your Android SDK, samples folder, Android Google APIs level 10 folder, NFCDemo project.

	:::term
	$ android update project -s -n "NFC Demo" -t 20 -p /Applications/eclipse/android-sdk-mac_86/samples/android-10/NFCDemo

Run ant debug to try to build the application. (It will fail, but run it anyway.)

	:::term
	$ ant debug

### Installing the Java libraries into NFCDemo

You will get errors after you try ant debug because you also need some Java libraries for the NFCDemo project to work. Go to code.google.com/p/guava-libraries/downloads/list. Download the latest zip file, which is named something like guava-r09.zip. Unzip the file and copy the jar file (in this example, guava-r09.jar) into your libs folder in the NFCDemo project. (Since this libs folder is generated with the build command, you had to try to build and fail, then you have the libs folder into which you copy the guava jar file.)

### Running the NFCDemo Project

Run ant debug to build the application.

	:::term
	$ ant debug

### Running the Android Emulator

Run the Android SDK and AVD Manager: this is the app labeled "android" in your tools folder, which is within your Android SDK installation folder.

The Android SDK and AVD Manager should be set up to run an AVD for Android with Google APIs level 10 or above, which is the minimum required for near field communication. Highlight that AVD and click Start to start the Android emulator.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/android-sdk-avd-manager.jpg" alt="Android SDK and AVD Manager" />

### Installing NFCDemo into the Android Emulator

Now install your NFCDemo app into the Android emulator that you are running. From the command line, within your NFCDemo folder:

	:::term
	$ adb install bin/NFC\ Demo-debug.apk

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/NFCDemo-installed.jpg" alt="NFCDemo installed" />

In the Android emulator, the NFCDemo app should be running. The NFCDemo app lets you generate NFC tags that you can receive in a Rhodes Android application.

## Getting the nfc-rhodes Application

You can go to the source code for the [Rhodes Webinar Sample for nfc-rhodes](https://github.com/rhomobile/webinar-samples/tree/master/nfc-rhodes), a Rhodes project which receives nfc tags, is stored. You can copy this project to your local computer.

### Checking the Rhodes Application for NFC

Open the nfc-rhodes project in your text editor. In the build.yml file, make sure there is an android section which has the nfc extension, and a version of at least 2.3.3.

	:::yaml
	android:
	  version: 2.3.3
	  extensions:
	  - nfc

### Hooking and Processing the NFC Events from the nfc-rhodes app

Rhodes provides a hook called on\_activate\_app that is called every time an application using this hook launches, and when the application comes in from the background. The on\_activate\_app hook is used in the nfc-rhodes project, where it enables nfc and sets a couple of callbacks. When the nfc event occurs (set\_nfc\_callback), it will make a callback request to the controller action app/Nfc/nfc\_callback. When the app receives a tech callback (set\_nfc\_tech\_callback), it will make a callback request to the controller action app/Nfc/nfc\_tech\_callback. Also, perform\_open\_application\_event processes the event in the callback (it says, okay, Rhodes, process the nfc event).

	:::ruby
	def on_activate_app
	  Rho::NFCManager.enable
	
	  Rho::NFCManager.set_nfc_callback("/app/Nfc/nfc_callback")
	  Rho::NFCManager.set_nfc_tech_callback("/app/Nfc/nfc_tech_callback")
	
	  Rho::NFCManager.perform_open_application_event
	end

### Controlling the NFC Event

In app/Nfc, a few files that were generated by Rhodes, and that were not needed for this nfc example, are deleted; such as edit.bb.erb, edit.erb, new.bb.erb, new.erb, show.bb.erb, and show.erb (we won't be editing, creating, or showing models or their attributes). Also, the actions for these in app/Nfc/nfc\_controller.rb are deleted also (show, new, edit, create, update, delete), leaving the index action.

The index action has been edited so when the page first launches, it displays the status of Nfc, to see if nfc is turned on or not.

### Displaying the NFC Event in the View

We need to display information in the view for the nfc-rhodes application: app/Nfc/index.erb.

In app/Nfc/index.erb, the top toolbar that was generated by Rhodes \<div class="toolbar"\> is removed. In the content div, the generated code to show the list items is replaced by a couple of list items: one shows the nfc status (enabled or not), and another list item displays a log that shows the content of the nfc tag once it is read in the callback.

	:::html
	<div class="content">
	  <ul>
	    <!-- show the nfc status -->
	    <li>
		NFC Enabled: <span class="title"><%= @nfc_status %></span>
		</li>
		<!-- show the log information, content of nfc tag -->
		<li>Log:</li>
		<input type="text" style="font-style: bold" id="id_log" value="" />  
	  	<input type="button" value="Clear" onClick="onLogClear();"/>
	  </ul>
	</div>

Then a couple of JavaScript functions replace the text. The first function sets the log, which is called from the nfc\_callback, the second function clears it when its button is pressed.

	:::html
	<script type="text/javascript">
	function setLog(log) {
	  document.getElementById("id_log").value = log;
	}
	
	function onLogClear() {
	  document.getElementById("id_log").value = "";
	}
	</script>

### Controlling the Nfc Callback

In the controller, apps/Nfc/nfc\_controller.rb, the nfc\_callback is implemented. The nfc\_callback assigns the log variable that says the nfc tag was received with a time stamp so we know when the tag was received, and it calls a helper function to update the view with that log message.

	:::ruby
	def nfc_callback
	  @log = "TAG received: #{Time.now.strftime('%H:%M:%S')}"
	  add_to_log(@log)
	end

The controller has a helper function that updates the view (index.erb). This helper function, add\_to\_log, is called from the nfc\_callback.

	:::ruby
	def add_to_log(msg)
	  WebView.execute_js('setLog("'+msg+'");')
	end

Note that the implementation for nfc\_tech\_callback will be shown later in this tutorial.

### Set the Start Path to the Correct View

In rhoconfig.txt, the start path is changed so the application goes to the correct view: the index page app/Nfc/index.erb, which has been edited to show the nfc status and log.

	:::term
	# startup page for your application
	start_path = '/app/Nfc'

### Require Nfc

In app/application.rb, a line is added to require nfc. Since nfc is an extension, this require is not generated automatically.

	:::ruby
	require 'nfc'

### Running nfc-rhodes and NFCDemo in the Android Emulator

Now use the NFCDemo application to send an nfc tag to the nfc-rhodes application in the Android emulator.

To run nfc-rhodes in the emulator, go to the command line, navigate to the nfc-rhodes folder and enter this command:

	:::term
	$ rake run:android

Once nfc-rhodes is built and running, its icon will show in the Android emulator. Check if the NFCDemo application icon is also in the emulator; if not, install NFCDemo in the emulator (the emulator has to be running to install an app in it). Build it first if you need to (ant debug).

	:::term
	ant debug
	adb install bin/NFC\ Demo-debug.apk

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/nfc-rhodes-NFCDemo.png" alt="nfc-rhodes and NFCDemo in emulator" height="75%" width="75%" />

The adb logcat command is useful for looking at the log for the emulator activity.

	:::term
	adb logcat

In the Android emulator, click on the NFCDemo icon. You get a list of ways to send an nfc tag.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/NFCDemo-tag-types-to-send.jpg" alt="NFCDemo ways to send nfc tag" />

After clicking to send the nfc tag from NFCDemo, there is a choice of running NFCDemo or nfc-rhodes. Click nfc-rhodes. 

Then switch to the nfc-rhodes application. You see that the tag is received.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/nfc-rhodes-tag-received.png" alt="nfc-rhodes tag received" height="75%" width="75%" />

In the logs on the command line, an action appears: Action = android.nfc.action.TAG\_DISCOVERED. When you are running on a device instead of an emulator, you will not see this action, because the NFCDemo application does not properly simulate the NFC tag.

### Running nfc-rhodes from an Android Device

If you have an Android device that is nfc-enabled. and a physical nfc tag, you can connect that Android device to your computer with a USB cable and run the nfc-rhodes application on it. You can then use the device to pick up an nfc tag instead of emulating a tag with NFCDemo and the Android emulator.

The webinar used software called PicMe to show the device in the webinar video; you need not do that since you can see your nfc-enabled Android device.

To install and run nfc-rhodes on the Android device, enter the following command from the nfc-rhodes directory:

	:::term
	$ rake run:android:device
	
The nfc-rhodes application should show on the Android device.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/nfc-rhodes-index.png" alt="nfc-rhodes tag index" height="75%" width="75%" />

Now you can take the physical nfc tag, bring it near your Android device (probably near the back of the device), and the nfc-rhodes application on the Android device will show that it received the nfc tag.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/nfc-rhodes-in-depth-tutorial/nfc-rhodes-tag-received.png" alt="nfc-rhodes tag received" height="75%" width="75%" />

### Showing the Text Associated with the Nfc Tag

Instead of having nfc-rhodes just show a timestamp, we can show the text associated with the nfc tag. This is done by implementing the nfc\_tech\_callback method (like the nfc\_callback method, it is called from app/application.rb and implemented in nfc\_controller.rb).

The nfc\_tech\_callback method first assigns a message saying the nfc tag was received, and it calls the helper function add\_to\_log to update the view with that log message.

Then it grabs the tag from the NFCManager. If the tag is not nil (the Android device successfully read the tag), then process the tag in the test\_ndef\_read method to get the tag's text message, then update the log with the text message.

	:::ruby
	def nfc_tech_callback
	  # assign message that nfc tag received, and update the view
	  @msg = 'Tech received! Reading tag...'
	  add_to_log(@msg)
	  
	  # get_current_tag from the [Rhodes NFC API](/rhodes/nfc)
	  tag = Rho::NFCManager.get_current_Tag
	  if tag != nil
	    @msg = test_ndef_read(tag)
	  else
	    @msg = "Tag is nil!"
	  end
	  add_to_log(@msg)
	end

The method to process the nfc tag, test\_ndef\_read, uses methods from the [Rhodes NFC API](rhodes/nfc) to process the nfc tag. The get\_tech method gets the tag technology; once you know that, you can process the tag. 

The test\_ndef\_read method assumes that the nfc tag is ndef technology. Connect to the tag with the connect method, read its ndef message with the read\_NdefMessage method, and get its records with the get\_records method. In this case, we get only one record. Make a hash from the record; the format of the hash is in the [Rhodes NFC API](rhodes/nfc). Pull the payload\_as\_string from the hash for display.

	:::ruby
	def test_ndef_read(tag)
	  result = "No records..."  # assign return in case processing does not work
	  # get the tag technology to find out how to process it; it is an ndef tag
	  ndef = tag.get_tech(Rho::NFCTagTechnology::NDEF)
	  if ndef != nil
	    # connect to the ndef tag
	    ndef.connect
	    # read the ndef tag message and get the records from it.
	    msg = ndef.read_NdefMessage
	    records = msg.get_records
      
	    # for debugging, print out
	    puts "msg: #{msg.inspect}"
	    puts "records: #{records.inspect}"
      
	    # iterate through the array of records and hash the record
	    # we know we have only one tag, so the array has only one element
	    r_a = []
	    records.each do |record|
	      r_a << record.make_hash
	    end
      
	    # assign to a variable and print it out
	    msg_hash = { 'records' => r_a }
	    puts "records after processing: #{msg_hash.inspect}"
      
	    # Assign the string payload from the hash to the result
	    # Return the result to nfc_tech_callback for display in add_to_log
	    result = "Tag Result: " + msg_hash['records'][0]['payload_as_string'] if msg_hash['records'].size > 0
	    # Close connection to the tag
	    ndef.close
	  end
	  result
	end
