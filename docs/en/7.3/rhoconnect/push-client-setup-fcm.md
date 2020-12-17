Setting Up RhoConnect Push-Based Synchronization with Firebase Cloud Messaging
===

This chapter contains the steps you need to set up your Android Rhodes client and RhoConnect server for push messaging. After you perform the steps in this chapter, you will finish by performing the [client setup that is needed for all platforms](push-client-setup).

## Setting up Android Firebase Cloud Messaging

To set up your Android Rhodes client application and RhoConnect server application for RhoConnect Push, you need to set up Firebase Cloud Messaging (FCM).

To do so, perform the [Provide Firebase credentials manually](https://firebase.google.com/docs/cloud-messaging/auth-server#provide_credentials_manually) section.
Place credentials JSON file into the settings directory. Provide the path to it in env variable GOOGLE_APPLICATION_CREDENTIALS.

You may read common [FCM docs](https://firebase.google.com/docs/cloud-messaging) at the Google developer site.

## Setting up RhoConnect Server Application for FCM Push

To set up your RhoConnect application for Firebase Cloud Messaging (FCM), you must have first set up Firebase Google Cloud Messaging.

Update `settings/settings.yml` to include your FCM Project ID and app client package name:

	:::yaml
	:development:
	  :redis: localhost:6379
	  :syncserver: http://localhost:9292/application/
	  :licensefile: settings/license.key
	  :fcm_project_id: your_fcm_project_id_here
	  :package_name: com.your.clientApp
	  
You can use the following env variables for debugging output:

    FIREBASE_DEBUG=true
    GOOGLE_API_USE_RAILS_LOGGER=false	  

## Enabling the Rhodes Android Client for Push

Enable push in your Rhodes client application in build.yml.

	:::yaml
	capabilities:
	  - push
	extensions:
	  - fcm-push  

## Finishing Client Setup

Once you have completed the above steps for setting up push on Android client and RhoConnect server, you must still [perform the client setup that is needed for all platforms](push-client-setup).
