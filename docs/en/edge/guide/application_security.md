# Data security in the development of mobile applications


## Introduction

When developing a mobile application, you should remember that the data used by this application may be of some interest to third parties.
The value of this data varies widely, however, even the most simple private information, such as an application login and password, requires elaboration of its protection. 
This is especially important for mobile applications in all areas of electronic services, including financial, banking, storage and transfer of personal data, etc.


## Mobile app security

The main types of attacks on the mobile application:


*  Decompiling the application file (.ipa-files for Apple iOS and .apk-files for Google Android) and analyzing locally stored data. 

*  Interception of data transmitted over the network (MITM-attacks). Most mobile applications are client-server apps, therefore, they constantly transmit and receive large amounts of information. 
Although modern mobile and web development are actively completing the transition to the HTTPS communication protocol, nevertheless, you should not rely on a single line of protection in the form of a secure communication channel.

*  The rooting of the device and the attack on the application and the algorithms used in it through external debugging tools.


### Major application vulnerabilities

Let's look for general vulnerabilities, without reference to a specific platform. 
We talk about critical user data, that should not be available to a third party.
This applies to both the user's personal data (date of birth, residential address, personal correspondence) and his private data (passwords, credit card data, bank account numbers, order numbers and etc).

##### Using unprotected local storages

Danger level: Very high

Details: The critical user data is stored in unprotected or poorly protected local storage specific to a particular platform. A third party can open such storages elementary. As a rule, the attacker does not require special skills.

Protection: Store critical user data only in the secure storage of the platform.


##### Storing critical user data in code.

Danger level: High

Details: The vulnerability concerns storage of critical user data within the code (in static constant strings, in application resources, etc.). Vivid examples: storing password salt (password salt) as a constant or macro that is used throughout the code to encrypt passwords; storing a private key for asymmetric algorithms; storage of passwords and logins for server nodes or databases. Easy to open by a third party with basic decompilation skills.

Protection: Do not store any critical user data in the code or resources of the app.


##### The use of algorithms with the storage of a private key.

Danger level: High

Details: the vulnerability is relevant if the algorithm's private information (private key) is stored in the code or resources of the mobile app (most often it happens). Easy to open by the app decompiling.

Protection: In mobile development, should use only modern symmetric algorithms with a generated random one-time key, which are highly resistant to brute-force attacks. 


##### Transmitting critical user data to the external environment without encryption.

Danger level: Average.

Details: The issue is expressed in the transmission critical user data without the use of encryption over any available communication channel with the external environment, be it data transmission to a third-party application or transmission to the network. It can be opened indirectly by opening not the application, but its repositories, or the target application. Hacking needs the presence of skills from the attacker.

Protection: Any critical user data should be encrypted before exiting the application. Local storages of the platform are not an application area, they should also receive only encrypted data


##### Ignoring the fact of the presence of rooted or infected devices

Danger level: Average.

Details: Rooted devices are devices with a modification for obtaining the superuser's rights for any operations originally prohibited by the manufacturer of the operating system. It is performed by the user on his device independently, and not necessarily voluntarily (the client may not be known that the device has been hacked). Installing an application on a rooted device eliminates all the standard means of protecting the operating system.

Protection: Should to prohibit the operation of the application if it is technically possible for the platform or at least to warn about it.


### The best practices

The best practices in security of the mobile  app development.


###### Protection by user code 

If an application is protected by a user password (PIN code, fingerprint scan, graphic password, etc.), when the application returns to the foreground, it should immediately display an input form for this security code, overlapping the entire screen of the application. This eliminates the possibility for the attacker to obtain private information while the application is still running in the background mode.
The user code should have a limited number of input attempts (for example, 5 times), then, in case of failure, the application should be automatically logged out or completely blocked.
Currently, it is strongly recommended to use a minimal user code length of at least 6 digits.

##### The client-server application

For client-server applications it is very useful to use a session with  limited lifetime. This avoids "idle" the application in unprotected mode, if the user simply forgot to close it and left the device in the public place. One of the successful examples of the implementation of this mechanism is to obtain the absolute value of time from the server after going through the user authorization procedure (the date and time should show exactly when the session becomes inactive). The date and time of the end of the session should not generate on the device, this reduces the security and flexibility of the application.

Working with Date and Time

When operating with dates important for the operation of the application, such as the lifetime of the session, you should not rely on the relative time. So the data transmitted from the server should not contain the date in the form of "plus N seconds / hours / days from the current moment". An attacker or an unscrupulous user can simply change the time zone on the device, thus violating the app's logic. It is always necessary to transmit only the absolute value of time.
Absolute values ​​should be transmitted without reference to the time zone of a specific user device. Suitable formats for dates and times are either the universal UNIX timestamp stored in a variable of a 64-bit integer signed type (UNIX timestamp is the number of seconds since January 1, 1970), or, in extreme cases, a string in the full ISO-8601 format with zero time zone. UNIX timestamp is preferred, it allows you to avoid potential errors and problems with converting strings to date and back on different mobile platforms.

The extra recommendations

The app should not display private user information in large, bright, well-readable fonts without needs or a separate user request, in order to exclude the possibility of reading this data from a distance from the device screen.

Don't trust open source libraries that offer some kind of protection to private user data. The exceptions are libraries, time-tested and used in large projects of corporations (for example, embedded encryption in the open engine of the Realm database). In the most of cases, protection mechanisms of the device's operating system are more than enough.

It is absolutely unacceptable to use closed-source cryptographic libraries (even if they are paid). You are not be able to check in any way how effective this library is, and also how "honest" its protection is (or even does it have a backdoor mechanism or is the "protected" data not sent to any third party).


## The Rhomobile Framework App approaches

Rhodes log properties

Rho::Log.level

Rho.Log.level

RhoConfig.txt option: MinSeverity 
The current logging level. Minimal severity level of messages that will appear in log. When level is set to 0 any messages will be logged. When level is set to 4 only fatal error messages will be logged. Default value is defined in rhoconfig.txt (MinSeverity)
*   0-trace 
*   1-info(app level)
*   2-warnings 
*   3-errors

for production set to 3

#####  Log Destination

Rho::Log.destination

Rho.Log.destination

LogToOutput = 1
List of log destinations that are being used. Destination could be set to empty (disable all logging), Logging to several destinations could be set by setting destination to comma separated list in any order (for example “stdio,file”). By default logging to console can be enabled from rhoconfig.txt (LogToOutput = 1). After Rhodes initialization logging to file is enabled automatically.


##### Log Exclude Filter

Rho::Log.excludeFilter

Rho.Log.excludeFilter

RhoConfig.txt option: log_exclude_filter
 
Define exclude parameters log filter(for security reasons) – parameter names separated by comma. It works when user tries to put in log string containing json / urls. Default value is “” (empty). For example, if user set excludeFilter=“password”, then tries to put in log this string: “{"user”:“alex”,“password”:“abcdef”,“sessionid”:123456}“, "abcdef” will not appear in log.



##### Skip content of body of POST requests  
Rho::Log.skipPost

Rho.Log.skipPost

RhoConfig.txt option: log_skip_post = 0

Skip http package body from log(for security reasons). Please note that this parameter will not take an effect in case of remote server app (and / or shared runtime), no log will appear in this case.


##### DeviceSecurity extension
API for check device securty (JailBrake for iOS, root for Android etc.)

##### Bundle encrypting extension
We use AES 256 bit encoding (“AES-256-CBC” algorithm string when using OpenSSL library). We use OpenSSL library for encoding/decoding Each file in bundle encrypted separately Developer can specify file extensions for encrypting (some file like images can stay unencrypted because it not secure issue generally) Bundle encryption supported on iOS and Android only.



ProGuard extension
ProGuard is tool that shrinks, optimizes and obfuscates Java code. It is able to optimize bytecode as well as detect and remove unused instructions.

