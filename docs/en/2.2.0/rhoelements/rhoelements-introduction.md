# RhoElements Introduction

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoelements/RhodesvsRhoElements.png" width="550" />

Motorola's RhoMobile Suite provides developers the best of all worlds for building cross platform enterprise applications. Most often, there is hesitation around developing cross platform applications because of the concern that certain features will be lost or cannot replicate properly in a non-native environment.  Developers now have a choice of using Ruby, JavaScript or HTML META tags for accessing device capabilities. These cross platform applications can be delivered to the device as a native application, or existing web applications can be extended to provide RhoElements features. RhoElement applications also provide a common user exeperience through a standard enterprise enhanced Zebra Webkit that not only runs on Android, but Windows Mobile and CE as well. 


## Hybrid and Native HTML5 applications

RhoElements is the ideal deployment scenario for a developer because it enables both Hybrid (connected) as well as Native (disconnected) HTML5 applications.  A developer can build ONCE and run on many devices, many operating systems and be connected or disconnected. 

* Ability to leverage Offline Cache capabilities with HTML5 manifest files for Hybrid applications that operate in an occasionally disconnected model
* Compiled byte code for superior performance over traditional JS cross platform based applications
* SQLite support for relational data storage to deliver offline capabilities for Hybrid and Native applications
* Device integration capabilities fully enabled thru both Hybrid and Native HTML5 application models

## Consumer-like end user experience

The user experience on enterprise class devices is nowhere near as 'cool' or 'friendly' as consumer products.  This limits the end-user adoption of enterprise devices and developers are forced into a specific user-interface based on device OS and programming structure. With complete control over the user interface and user experience, developers will give end users identical application experiences across all operating systems and devices. The application will scale from screen size to screen size without the need to re-write or re-learn anything. The application will also look and feel very much like most consumer apps. 

* HTML is OS abstracted, so not bound to the UI constructs of the OS Platform. There are no limits with regards to what can be rendered
* SVG and Canvas for creating creative, highly interactive and compelling UIs with on the fly graphics capabilities
* HTML and SVG can utilize a floating UI paradigm allowing for auto sizing and scaling.
* Ability to make UI on any platform look like an iOS or Android device if the developer chooses to
* Large availability of open source HTML UI frameworks to deliver compelling UIs such as JQuery, JQueryMobile, Sencha

## Enterprise class device integration

Once a customer has decided to build cross platform applications, the next major concern is around device integration.  Customers today are concerned that if they develop cross platform, they will lose the ability to take advantage of enterprise device integration (i.e. losing the ability for bar code scanning). RhoElements will integrate the software with the hardware. The ability to integrate HTML5 with enterprise device capabilities removes the concerns related to accessing device features and functionality.

* Built in APIs for bar code scanning, RFID, signature capture, printing, file transfer, location, and interfacing with other peripherals and accessories.
* Broad set of device capabilities thru HTML, JavaScript or Ruby in a consistent API set regardless of platform
* Delivers a native extension framework that allows for device integration in scenarios where it doesn't support something.

## Shared Runtime
If you are planning on building multiple applications to be run on the same device, you can optionally choose to build your application in what is called 'shared mode'. In this scenario, a RhoElements application does not bundle common libraries along with the application specific code. These common libraries are stored in a predefined location on the device. This will result in not duplicating common code and consuming extra memory. It also significantly reduces the compilation time as well as reduce the size of each applications install package. For more information [read how to setup applications for shared mode](rhoelements2-native#applications-in-shared-mode).

## Rhodes Platform Changes

As of Rhodes version 3.3.3, the [Barcode](../rhodesapi/barcode-api), [NFC](../rhodes/device-caps#nfc), and [Signature Capture](../rhodes/device-caps#signature-capture) APIs, as well as [Rhom data encryption](../rhodes/rhom#database-encryption) are removed from Rhodes. These features are only supported in Zebra RhoMobile Suite. If you wish to use these features, you will need to [upgrade to RhoMobile Suite](../rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](rhoelements2-native#enabling-motorola-device-capabilities). Additionally, a [RhoElements license](licensing) is required.

## Supported Operating Systems

* iOS 4.0 or greater (iPhone, iPod Touch, iPad)
* Android 2.1 and greater
* Windows Mobile 6.x Professional, 6.0 Standard, Windows CE 6
* BlackBerry 4.6, 4.7, 5.0, 6.0, 7.0


NOTE: Please review Release notes that accompany the software for further remarks on supported devices and operating systems.

## Validated MSI Hardware
* <a name="_motdevices"></a>ET1, ET1 (WAN), ES400, MC2100, MC2180, MC3100, MC3100(R/S), MC3190(R/S/G), MC5574, MC5590, MC55A0, MC55N0, MC659B, MC7506, MC7598, MC7596, MC75A0, MC75A6, MC75A8, MC9190-G, MC9590, MC9596, MC9598, MC959B (WM 6.1), VC6090, VC6096
* MC3190-Z and MC9190-Z RFID Devices are supported [via a RFID plugin](rfid) that must be installed separately.
