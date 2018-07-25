# RhoElements Licensing

Running Zebra Technologies RhoElements applications requires a license. There are a number of licensing options available depending on the specific customer need or deployment. RhoElements applications which are not licensed will display a message on startup; unlicensed Zebra Technologies devices will also display a periodic nag screen, although unlicensed devices are fully functional for the purposes of evaluation, development, and testing.

The same license key will work across any operating system. The name associated with the license is stored in the log file when the application is started.

## Features Requiring a License

If you have included any of the following features in your application, your application will require a RhoElements license to run. Applications not using any of these features will be able to run license-free.

* [Mobile APIs](apicompatibility) indicated with <span class="label label-inverse">RHOELEMENTS</span> application type
* [Zebra Technologies WebKit](rhoelements2-native#enabling-motorola-webkit)
* [Barcode extension](../rhodesapi/barcode-api)
* [NFC extension](../rhodes/device-caps#nfc)
* [Database Encryption](../rhodes/rhom#database-encryption)
* [Inline Signature Capture](../rhodes/device-caps#signature-capture)
* [Windows Desktop](../rhodes/build#build-for-windows)

**NOTE: that the "shared runtime" requires a license to run since it uses Zebra Technologies WebKit and RhoElements APIs.**

## Obtaining a License

To obtain a license for RhoElements, you should contact us or your resell partner. You can find our contact details on the [product page](http://www.motorola.com/Business/US-EN/Business+Product+and+Services/Software+and+Applications/RhoMobile+Suite/RhoElements).

## Application Licensing

An application license is a completely separate concept from a device license and should be used when you only want to license a single RhoElements application without wanting to license RhoElements across the entire device.  Application licenses take precedence over device licenses and will prevent the splash screen from being displayed.

Application licenses are currently only applicable for Android, iPhone, Windows Mobile, Windows CE and Windows Embedded Handheld devices, but will be extended to other platforms in the future.

When you get an application license from Zebra Technologies for a hybrid application, you will need to provide Zebra Technologies with the following information.

* Your company name.
* The name of your application.
* The version of RhoElements for which you want the license.

Application Licenses are encoded by the Zebra Technologies Software License team on allocation but an unencrypted license will look like the following:

	Company Name: Zebra Technologies
	PackageName: Warehouse Picking	//  As defined in the build.yml file
	For Version: 2.*.*			//  Application licenses can be version specific, this one is valid for any 2.x version of RhoElements

### Applying an Application License

There are two ways to apply an application license.

For native applications, you should define your application license in your build.yml file as follows:

	motorola_license: '@1J/9V\WEqG7gr8DH.kcKuK_V@:P%Vd_KVDd`2ODQkL2/gFK=51X)7^nOgwJ\o'b?m@rfVFb9gmM:u;PNF`iVR4K|tn6|0BC|hlJWwpJB0+29AaMV.vJq'

**NOTE: Do not include `motorola_license_company` in build.yml, otherwise the application license will not be used.**

For hybrid applications, you should define your application license and application name in your config.xml file as follows. Define your application name in the configuration file under the General section, this must match the application name you provided when you applied for your license.

	  <Applications>
	    <Application >
	       <LicenseKey value="@1J/9V\WEqG7gr8DH.kcKuK_V@:P%Vd_KVDd`2ODQkL2/gFK=51X)7^nOgwJ\o'b?m@rfVFb9gmM:u;PNF`iVR4K|tn6|0BC|hlJWwpJB0+29AaMV.vJq"/>
           <General>
              <Name value="Menu"/> set to the application name you applied for.
              <StartPage value="file://%INSTALLDIR%\HTML\Menu.htm" />
           </General>

	       ...
	    </Application >
	  </Applications>

**NOTE: Android is a case-sensitive operating system, as such be sure the case matches on all parameters. Otherwise the application will not launch.**

## Device Licensing

A device license allows you to run multiple RhoElements applications on the same device and places no limits on the number of applications allowed. 

A device license consists of:

* The company name.
* A hexadecimal key.

There are two types of device license, both of which are applied in the same way.

* Device specific licenses are tied to the specific device and only apply to that device, trying to apply a device specific license to another device will fail.

* Deployment licenses are not tied to a specific device, a single deployment license will work across an entire deployment and is most useful when including the license file in your device deployment or licensing non-Zebra Technologies devices.

Once your device is licensed, a splash screen will be displayed briefly each time the application is run saying who RhoElements has been licensed to.

## Applying a Device License via the Wizard

Devices running Windows Mobile and Windows CE as well as Zebra Technologies Android devices present the user with a licensing Wizard to guide the user through licensing.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/imagesrhoelements/rhoe-license.png">

The first page of the licensing wizard has a "Cancel" button. Clicking it allows you to evaluate the software. While you are evaluating the software, the functionality is not restricted.

The licensing wizard assumes you have already obtained a license via the [Zebra Technologies software licensing website](https://softwarelicensing.motorolasolutions.com). The wizard will guide you through applying your license. There are two options available.

* Internet Licensing.  This only requires you to know the order number associated with your RhoElements licenses order.  Provided your device has an internet connection not obstructed by a proxy and can contact the licensing server your device will be licensed automatically.

* Manual Licensing.  You can also print off the license from the licensing website and manually key in your company name and license number. If you are using a Zebra Technologies device you will be able to scan the information rather than keying it in manually.

More verbose instructions on licensing your device and how to interact with the licensing server are available [within the Zebra Technologies software licensing website](https://softwarelicensing.motorolasolutions.com/documentation/index.html#licensingRuntime).

## Applying a Device License via a File

There are three ways to apply a device license via a file.

Via a Registry key: From the Zebra Technologies Software licensing site, after you have applied for your license you are able to download a registry key file (.reg) containing the company name and license key.  On Windows Mobile and Windows CE devices, you can license the device via this registry key.

Via a file on Android devices when developing hybrid applications: Create the file `/mnt/sdcard/keys/rhoelements`. On its first line, enter your company name associated with the license. On its second line, enter the hexadecimal license key. The easiest way to do this is to manually license one device and then the use the file `/mnt/sdcard/keys/rhoelements` that was created.

NOTE: Currently this is the recommended approach for deploying a license on the Zebra Technologies ET1 and MC40 without manual intervention.

Via build.yml for Native Applications (iOS and Non-MSI Android): If you are developing native applications for iOS or Android hardware that is not Zebra Technologies, you can provide the deployment license information in the build.yml file.

	:::term
	motorola_license_company: 'Deployment License Company name'
	motorola_license: 'Deployment License Number'

Note that since the build.yml is included in the application at build time, it only makes sense to use deployment licenses in this file when deploying your application. 

For hybrid applications, you can define your device license and company name in your config.xml file as follows:

	  <Applications>
	    <Application > 
	       <LicenseKeyCompany value="Deployment License Company name"/>
	       <LicenseKey value="Deployment License Number"/>

	       ...
	    </Application > 
	  </Applications>
