# NFCTagTechnology_IsoDep API

Subclass of NFCTagTechnology.

**NOTE: As of Rhodes version 3.3.3, the [Barcode](barcode-api), [NFC](../rhodes/device-caps#nfc), and [Signature Capture](../rhodes/device-caps#signature-capture) APIs, as well as [Rhom data encryption](../rhodes/rhom#database-encryption) are removed from Rhodes. These features are only supported in Zebra RhoMobile Suite. If you wish to use these features, you will need to [upgrade to RhoMobile Suite](../rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](../rhoelements/rhoelements2-native#enabling-motorola-device-capabilities). Additionally, a [RhoElements license](..v/rhoelements/licensing) is required.**

## Enabling NFC

To use the NFC methods, you need to enable NFC on the Android device and ensure that the version is 2.3.3 or later. Do this by adding that capability to the build.yml file:

	:::yaml
	android: 
	  version 2.3.3
	  extensions:
	  - nfc

## get_hi_layer_responce

Returns a byte array containing the hi layer response.

	:::ruby
	Rho::NFCTagTechnology_IsoDep.get_hi_layer_responce

## get_historical_bytes

Returns a byte array containing the historical bytes.

	:::ruby
	Rho::NFCTagTechnology_IsoDep.get_historical_bytes

## set_timeout

Sets a timeout.

	:::ruby
	Rho::NFCTagTechnology_IsoDep.set_timeout(timeout)

<table border="1">
<tr>
	<td><code>timeout</code></td>
	<td>int. The timeout.</td>
</tr>
</table>

## transceive

Sends data in a byte array to a tag and returns the result from the tag in a byte array.

	:::ruby
	Rho::NFCTagTechnology_IsoDep.transceive(data)

<table border="1">
<tr>
	<td><code>data</code></td>
	<td>byte[] sent to the tag.</td>
</tr>
</table>