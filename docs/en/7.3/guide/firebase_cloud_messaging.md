# Using Firebase Cloud Messaging

## Firebase Cloud Messaging (FCM)

Firebase Cloud Messaging (FCM), formerly called Google Cloud Messaging (GCM), is a free cloud service from Google that 
allows app developers to send notifications and messages to users across a variety of platforms, including Android, iOS 
and web applications. FCM is provided by Firebase, a company acquired by Google in 2014.

Using FCM, you can notify a client app that new email or other data is available to sync. You can send notification 
messages to drive user re-engagement and retention. For use cases such as instant messaging, a message can transfer a 
payload of up to 4KB to a client app. You can read [more detailed description](https://firebase.google.com/docs/cloud-messaging). 

## Rhodes Firebase Cloud Messaging Test

You can clone [our sample](https://github.com/tauplatform/rhodes-fcm-test) or build your own Rhodes app for testing FCM.

### Firebase Cloud Messaging Set Up
Go to https://console.firebase.google.com and create Firebase Project.

![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/000-create-firebase-project-step-000.png =640x)

Fill project name field

![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/002-create-firebase-project-step-002.png =640x)

Add Google analytics to your project if it you need in it

![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/003-create-firebase-project-step-003.png =640x)


#### Adding iOS App to your Firebase project

You need to get the APNs Auth key (preferred) or the SSL certificate for Apple Push Notifications service (APNs). You can find more details in the article [“Configuring APNs with FCM”](https://firebase.google.com/docs/cloud-messaging/ios/certs). Also don’t forget to obtain Apple provision profile with Push Notification capability.

Press iOS icon under the caption “Get started by adding Firebase to your app” or go to Project settings and add the “Add app” button  in General Settings. You can reach Project Settings by pressing the icon “Gear” on the right of the project title at the left top of screen. 

Adding iOS to your Firebase project steps:

  1. Register the app. <br/> Copy the build.yml >> iPhone >> bundleIdentifier into  the field iOS Bundle ID.<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-ios-app-step-1.png =640x)<br/><br/>
  2. Download config file. <br/> Download GoogleService-info.plist file and put it into the root of your Rhodes project.<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-ios-app-step-2.png =640x)<br/><br/>
  3. Add Firebase SDK. <br/> Just skip the step<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-ios-app-step-3.png =640x)<br/><br/>
  4. Add initialization code. <br/> Just skip the step<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-ios-app-step-4.png =640x)<br/><br/>
  5. Read the start guide for iOS. <br/> Go to the console.<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-ios-app-step-5.png =640x)<br/><br/>

Go to the Project Settings >>Cloud Messaging Settings and upload APNs Auth key, specify Key ID and you Apple development team ID.

#### Adding Android App to your Firebase project
Press Android icon under the caption “Get started by adding Firebase to your app” or go to Project settings and add the “Add app” button  in General Settings. You can reach Project Settings by pressing the icon “Gear” on the right of the project title at the left top of screen. 
Adding Android to your Firebase project steps:

  1. Register the app. <br/> Fill the “Android package name” field.<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-android-app-step-1.png =640x)<br/><br/>
  2. Download config file. <br/>  Download google-service.json file and put it into the root of your Rhodes project.<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-android-app-step-2.png =640x)<br/><br/>
  3. Add Firebase SDK <br/> Just skip the step<br/>
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-android-app-step-3.png =640x)<br/><br/>
  4. Read the start guide for Android <br/> Go to the console.<br />
  ![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/adding-android-app-step-4.png =640x)<br/><br/>  


Now all are ready for building the apps and install it on the devices.

### Building Rhodes App

#### iOS build
Run the following commands:

`rake build:iphone:setup_xcode_project`

`rake device:iphone:production`

Open xCode and install the .ipa file to your iOS device. Run the app and it shows the device identifier. The device identifier is required for sending the push messages. It is a long string, so it will be better to copy it from the app’s logs. You can get access to the app’s logs if start the app via xCode.

#### Android build
Run the following command:

`rake run:android:device`

Run the app and it shows the device identifier. The device identifier is required for sending the push messages. It is a long string, so it will be better to copy it from the app logs. You can get access to the app’s logs by the command:

`adb logcat -s APP`


### Send your first push notification

Go to console.firebase.google.com, open your project >> Grow >>Cloud Messaging. Press “Send your first message” button.
![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/firebase-project-cloud-messaging-page.png =640x)<br/><br/>  
 
Fill the Notification Title and Notification Text fields, then press “Send test message” button. 
![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/firebase-project-compose-notification.png =640x)<br/><br/>

Add your device identifiers for iOS app and Android App and press “Test” button. Your apps must show the received push notification.
![](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/fcm/firebase-project-compose-notification-test-on-device-dialog-1.png =640x)<br/><br/>

#### Congratulations, You Did It!
