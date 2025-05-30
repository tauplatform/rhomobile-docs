#Building Highly Secure Apps

Rhomobile provides  complete and powerful security solution. This chapter introduces Rhodes and RhoConnect application security and presents a set of security techniques and recommendations which should help you to secure you application and make sure your customer data is protected.

## Delegated authentication with RhoConnect
To protect your customer data on the device in case it was lost or stolen, access to the application should be password protected. The generated Rhodes application should have a required login screen and appropriate controller actions ready to authorize access to to the application. 

To access application, the user will should provide a login and password and these credentials will be passed to the backend service through RhoConnect using delegated authentication. See how to implement [delegated authentication with RhoConnect here](rhoconnect/authentication).  

## Protect data on the device
To provide a high level of security you should consider turning on automatic encryption of all data in your Rhodes application. Implementing this option will ensure all customer data the application stores in the local database on the device will be encrypted. Please refer to [Database Encryption](rhodes/rhom#database-encryption) in the Rhodes [Local Database and Rhom](rhodes/rhom) section for more details. 

**NOTE: As of Rhodes version 3.3.3, [Rhom data encryption](rhodes/rhom#database-encryption) is removed from Rhodes. This feature are only supported in Zebra RhoMobile Suite. If you wish to use this feature, you will need to [upgrade to RhoMobile Suite](rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](rhoelements/rhoelements2-native#enabling-motorola-device-capabilities). Additionally, a [RhoElements license](rhoelements/licensing) is required.**

## Use secure connection
Protect your customer's sensitive information by connecting to your backend application using Hypertext Transfer Protocol Secure. HTTPS is a combination of the Hypertext Transfer Protocol (HTTP) with the SSL/TLS protocol to provide encrypted communication and secure identification of a network server. 

If you connecting directly to Web Services turn on use of SSL in [AsyncHttp](rhodes/connect-to-web-services#asynchttp-api):
 
	:url => "https://www.example.com"

To connect to RhoConnect via HTTPS, configure your sync server address in [rhoconfig.txt](rhodes/configuration#run-time-configuration). 

	syncserver = 'https://your-sync-server-domain/application'

## Manage your application using RhoGallery Mobile

You may control who has access to your applications by setting up the RhoGallery Security Token option before you build your application. If the was application built with a RhoGallery Security Token, then it would be possible to launch only from RhoGallery Mobile. Furthermore, access to RhoGallery Mobile is controlled from the [Rhohub.com](http://rhohub.com) Gallery management interface. See how to setup the RhoGallery Security Token [here](rhodes/configuration#build-time-configuration).
