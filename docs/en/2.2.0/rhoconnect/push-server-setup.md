Setting Up Push on RhoConnect Server
===

To set up your RhoConnect server application for delivering push messages, you need to either:

* set up to deliver push messages in your RhoConnect server application settings for the operating system of your mobile client,
* or set up the RhoConnect Push Service to broker push messages between your RhoConnect server and your mobile client.

## Setting up RhoConnect Server Push for iOS

To set up your RhoConnect application for pushing to an iOS client, you will need to update `settings/settings.yml` to include the following:

	:::yaml
	:development:
	  :redis: localhost:6379
	  :iphonecertfile: settings/apple_push_cert.pem
	  :iphonepassphrase: #=> empty or put password for your certificate
	  :iphoneserver: gateway.sandbox.push.apple.com
	  :iphoneport: 2195
	  :syncserver: http://localhost:9292/application/
	  :licensefile: settings/license.key

This is for running your application in development mode; for production, you will need all of the iphone settings, and you change the `:iphoneserver:` to:

	:::yaml
  	:iphoneserver: gateway.push.apple.com

## Setting up RhoConnect Server Push for Blackberry

To set up your RhoConnect application for pushing to a BlackBerry client, you will need to update `settings/settings.yml` to include the following:

	:::yaml
	:development:
	  :redis: localhost:6379
	  :mdsserver: 192.168.1.110
	  :mdsserverport: 8080
	  :syncserver: http://localhost:9292/application/
	  :licensefile: settings/license.key

Replace `:mdsserver:` and `:mdsserverport:` with the hostname/IP and port of your machine (default port is 8080).

## Setting up RhoConnect Server Push for Android (GCM)

To set up your RhoConnect application for Android Google Cloud Messaging (GCM), you need to obtain a GCM API key.

To do so, set up GCM developer access. Follow the [Getting Started instructions in the GCM documentation](http://developer.android.com/guide/google/gcm/gs.html#create-proj). You can optionally stop in these instructions once you complete the [Obtaining an API Key](http://developer.android.com/guide/google/gcm/gs.html#access-key) section.

Your GCM API key will be found in your [Google apis dashboard](https://code.google.com/apis/console).

Update `settings/settings.yml` to include your GCM API key:

	:::yaml
	:development:
	  :redis: localhost:6379
	  :syncserver: http://localhost:9292/application/
	  :licensefile: settings/license.key
	  :gcm_api_key: your_gcm_api_key_here

## Setting up RhoConnect Server Push for Android (C2DM)

**NOTE: Google has officially deprecated the C2DM service and requires that you now use Google Cloud Messaging (GCM). Please see [Google's announcement](https://developers.google.com/android/c2dm/) for more details. Follow the instructions at [Setting up RhoConnect Server Push for Android (GCM)](#setting-up-rhoconnect-server-push-for-android-gcm) to set up your RhoConnect Application for GCM push.**

To set up your RhoConnect application for Android C2DM push, you will need to update `settings/settings.yml` to include the following:

	:::yaml
	:development:
	  :redis: localhost:6379
	  :syncserver: http://localhost:9292/application/
	  :licensefile: settings/license.key
	  :c2dm_username: username
	  :c2dm_passwd: passwd
	  :authtoken: authtoken

In order to push messages to an Android device, your server needs to obtain Google's C2DM authentication token associated with the trusted google account.
For this purpose, you can specify C2DM Google account's username/password combo via the `:c2dm_username` and `:c2dm_passwd` settings.
At run-time, the system will use these credentials to obtain the C2DM token and store it in the Redis for the future use.
Once the token is expired, the system will automatically connect to the Google C2DM service to renew the token.

Alternatively, you can use `:authtoken` setting to specify the pre-defined authentication token. This token MUST be related to the role-based google account registered for your application. See [the Rhodes client push instructions](push-client-setup-android#setting-up-the-rhodes-client-for-android-c2dm) for more details. To retrieve this token, use sample script [c2dm.rb](http://github.com/rhomobile/rhodes/blob/master/bin/c2dm.rb). Uncomment last two lines and put your google account specific data, then run it. It will print token to stdout.
However, this approach will not allow the server to connect to the C2DM service and renew the token once it is expired.

For those who interested in what this token means, the description is [here](http://code.google.com/apis/accounts/docs/AuthForInstalledApps.html).

## Setting up RhoConnect Push Service

RhoConnect v3.3 introduces the RhoConnect Push Service (RPS) which supports efficient messaging for both Android and Windows Mobile. This service can be used instead of Google GCM or C2DM on Android.

The typical flow of a message using RPS:

	Device      RPS       	 RhoConnect        Backend App
	+           +            +                 +
	|           |            |                 |
	|           |            | POST            |
	|           | POST       |/rc/v1/users/ping|
	|           |/instanceId |<----------------+
	|           |<-----------+                 |
	|<----------+            |                 |
	|{"content"}|            |                 |
	|           |            |                 |
	+           +            +                 +

### Download and Install Nodejs

If you are using a Macintosh, go to the [Node.js website](http://nodejs.org/#), and download and install Node.js. (Zebra RhoMobile Suite for Windows includes Node.js in its installation.)

### Starting the Push Service

RhoConnect Push Service is a separate process that will run on your machine and broker push messages between your RhoConnect server and registered devices.

Assuming you've installed the latest [RhoMobile Suite](http://www.motorola.com/Business/US-EN/RhoMobile%20Suite/Downloads), start redis by runing the following command:

	:::term
	$ rhoconnect redis-start

Now start RhoConnect push by running the following command:

	:::term
	$ rhoconnect-push
	RhoConnect push server started...

You can also start the server with more verbose logging (see next section for more details):

	:::term
	$ rhoconnect-push -d 3

Next, make sure you have the following option in your RhoConnect application's `settings/settings.yml` file in the `:development:`, `:production:` and `:test:` sections:

	:::yaml
	:push_server: http://someappname@localhost:8675/

Where you edit `someappname` to be a shared secret name between your RhoConnect application and your mobile application.

**NOTE: This shared secret name ensures that only your RhoConnect application can send push messages to the RPS instance you started up in the previous step.  Use this shared secret name in your [mobile app's 'rhoconnect_push_appname' setting](push-client-setup-rps#configuring-rhoconfigtxt).**

Now setup [push notifications](push-client-setup#configuring-a-rhodes-application-to-receive-push-with-rhoconnect-push-service) in your Android or Windows Mobile RhoElements application, then start up your RhoConnect application.

#### Configuring RhoConnect Push

You can control basic settings for RhoConnect push using command line arguments.

	:::term
	$ rhoconnect-push --help

	Usage: rhoconnect-push [options]

	Available options:
	  -c, --config FILE           Path to configuration (config.json) file
	  -d, --debug LEVEL           Specify server debug level: 0 (errors) - 3 (everything)
	  -e, --rcPort PORT           Specify RhoConnect instance port
	  -h, --help                  Print this help message
	  -i, --rcHost HOST           Host for the RhoConnect instance
	  -k, --keyFile FILE          Path to private SSL keyfile (https only)
	  -p, --port                  Run the server on this port (defaults to 8675)
	  -r, --redis REDIS           Redis connection string (i.e. redis://localhost:6379)
	  -s, --httpSecure            Specify if this server is running over https or http
	  -t, --timeout TIMEOUT       Time (in ms) before timeout is sent to client
	  -T, --registrationTimeout   Expiration limit for client registration tokens
	  -v, --version               Display server version

#### Configuring and Running with config.json Advanced Options

You can also configure more advanced settings in RhoConnect push by creating a config.json file.

	:::json
	{
		"httpSecure": "n",
		"devAuthHost": "localhost",
		"devAuthUrl": "/rc/v1/app/ans_login",
		"devAuthPort": "9292",
		"userAuthHost": "localhost",
		"userAuthUrl": "/rc/v1/app/ans_login",
		"userAuthPort": "9292",
		"appAuthHost": "localhost",
		"appAuthUrl": "/rc/v1/app/ans_login",
		"appAuthPort": "9292",
		"ansResponseTimeout": "300000",
		"ansServerPort": "8675",
		"registrationTimeout": "2592000",
		"clearDataBase": "n",
		"socketPoolSize": 1,
		"debugLevel": "3"
	}

To start the server using a config.json file, run the following command.

	:::term
	$ rhoconnect-push -c /path/to/config.json

The JSON file has the following parameters.

* `httpSecure` - Specify whether the push server will be an https or http server (y/n).
* `devAuthHost` - RhoConnect instance used to handle device credentials.
* `devAuthUrl` - Path used on the RhoConnect instance to handle device credentials.
* `devAuthPort` - Port used on the RhoConnect instance to handle device credentials.
* `userAuthHost` - RhoConnect instance used to handle user credentials.
* `userAuthUrl` - Path used on the RhoConnect instance to handle user credentials.
* `userAuthPort` - Port used on the RhoConnect instance to handle user credentials.
* `appAuthHost` - RhoConnect instance used to handle application credentials.
* `appAuthUrl` - Path used on the RhoConnect instance to handle application credentials.
* `appAuthPort` - Port used on the RhoConnect instance to handle application credentials.
* `ansResponseTimeout` -  Time (in ms) that the push server will allow a message request from the client to go without a response. Upon expiration of this time, a 204 response will be issued and the request will be considered satisfied. If this parameter is set to 0, then this time limit will not be in effect - there is no limit to how long a client request will go without a response.
* `ansServerPort` - Push server listening port
* `registrationTimeout` - Expiration limit for registration tokens (in seconds), the client-side application is automatically unregistered if there is no activity related to its token for the registrationTimeout period. Activity related to its token consists of either attempted fetches of messages on its behalf by the push client or messages sent to the push server by RhoConnect.
* `clearDataBase` - Clear the redis database containing tokens, instanceIds, etc. at the start of the push server (y/n).
* `socketPoolSize` - The maximum number of sockets the push server will use when connecting to each of the authorization servers. This essentially caps the number of http requests to each authorization server that the push server can have outstanding at any given time.
* `debugLevel` -  Print additional information to console to aid in debugging:
  * 0 - print only error & warning info
  * 1 - print error & warning info and message for each invoked ANS operation
  * 2 - reserved for future use
  * 3 - print everything

## Testing Push in the RhoConnect Web Console

The [RhoConnect Web Console](web-console) includes a utility for testing push to make sure everything is wired up correctly.

First, make sure you've logged in and performed a sync on the device/simulator you are going to test.

Next, once you've logged into the web console, navigate to the user's page you used to login in the Rhodes application. For example, if you logged in as user 't', the url would be:

	http://localhost:9292/console/user?user_id=t

You should see a registered device for this user, for example: "c92e36874bc74f39a8fbd7c1a86f9e0e".  Click on the link for this device and you will see the device attributes:

  device_type: APPLE
	device_pin:	10fd92abfa8ee48155d9af6e7329086322b323fd0d18fdbd19e92d03c0fef7c8
	device_port: 100
	user_id: t
	app_id:	application

**NOTE: If you don't see all of these attributes, then something is incorrect in your Rhodes application settings. Please verify you followed the [Rhodes application push setup](push-client-setup).**

Now that the device is registered, go back to the user page and click 'Ping User'.

Here you can specify an alert message, sources array to sync, badge value (iOS only), sound file to play, and duration to vibrate.

Enter in some values or try the defaults, you should see a push message on the device when you click "Ping!".

By default, the sources list will be a comma-separated list of your RhoConnect application's sources. This sources list will be sent in the push message to trigger a sync. You can specify one or more sources, or 'all' to trigger a sync of all sources.

