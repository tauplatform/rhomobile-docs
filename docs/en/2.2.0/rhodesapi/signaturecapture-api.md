# SignatureCapture API

Allows the device to take a signature and save it as an image. See the controller and view in the /app/SignatureUtil folder of the [System API Samples application](https://github.com/rhomobile/rhodes-system-api-samples/blob/master/app/SignatureUtil/controller.rb) for an example.

## Using JavaScript API

You can call the SignatureCapture methods from JavaScript as well as Ruby. To use the JavaScript API, add the `public/js/rho_javascript_api.js` file -- created at build time as part of the application package -- to the .html, .erb, or .js file calling the JavaScript method.

You must enable JavaScript by putting `rho-javascript` into extensions in your build.yml.

	:::yaml
	extensions: ["rho-javascript"]

You must have a [RhoElements license](../rhoelements/licensing) to use the JavaScript API.

## take

Opens a window on the device where user draws his signature. Saves the  signature as an image.

Refer to [signature capture in device capabilities](../rhodes/device-caps#signature-capture) for an example.

Ruby syntax:

	:::ruby
	Rho::SignatureCapture.take(callback_url, params)

JavaScript syntax:

	Rho.SignatureCapture.take(callback_function, params)

<table border="1">
<tr>
	<td><code>callback_url</code></td>
	<td>url to callback method called after the user enters a signature or cancels. The callback parameters are <code>status</code> - 'ok' or 'cancel', and <code>signature_uri</code> - path to the image with signature.</td>
</tr>
<tr>
	<td><code>params</code></td>
	<td>A hash containing the parameters.</td>
</tr>
</table>

### Hash parameters for take method

<table border="1">
<tr>
	<td><code>imageFormat</code></td>
	<td>“jpg”, “png” or “bmp” On Windows Mobile and CE devices, only bmp is supported. On Blackberry devices only "png" is supported.</td>
</tr>
<tr>
	<td><code>penColor</code></td>
	<td>color of pen used for drawing signature</td>
</tr>
<tr>
	<td><code>penWidth</code></td>
	<td>width of pen</td>
</tr>
<tr>
	<td><code>bgColor</code></td>
	<td>color of background</td>
</tr>
</table>

## Inline Signature API

Windows Mobile and Windows CE devices support signature capture started in window, which you can show over current page (scrolling is not supported in this case). The Inline Signature API consists of the methods `visible`, `capture`, and `clear`.

**NOTE: As of Rhodes version 3.3.3, the Inline Signature API is removed from Rhodes. This feature is only supported in Zebra RhoMobile Suite. If you wish to use this feature, you will need to [upgrade to RhoMobile Suite](../rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](../rhoelements/rhoelements2-native#enabling-motorola-device-capabilities). Additionally, a [RhoElements license](../rhoelements/licensing) is required.**

Refer to [inline signature capture in device capabilities](../rhodes/device-caps#inline-signature-ex) for examples.

## visible

Display a window for hand writing, where the user draws his signature. Windows Mobile and Windows CE devices support signature capture started in window, which you can show over current page (scrolling is not supported in this case).

Refer to [inline signature capture in device capabilities](../rhodes/device-caps#inline-signature-ex) for an example.

Ruby syntax:

	:::ruby
	Rho::SignatureCapture.visible(visibility, params)

JavaScript syntax:

	Rho.SignatureCapture.visible(visibility, params)

<table border="1">
<tr>
	<td><code>visibility</code></td>
	<td>true or false.</td>
</tr>
<tr>
	<td><code>params</code></td>
	<td>A hash containing the parameters.</td>
</tr>
</table>

### Hash parameters for visible method

<table border="1">
<tr>
	<td><code>imageFormat</code></td>
	<td>“jpg”, “png” or “bmp” On Windows Mobile and CE devices, only bmp is supported. On Blackberry devices only "png" is supported.</td>
</tr>
<tr>
	<td><code>penColor</code></td>
	<td>color of pen used for drawing signature</td>
</tr>
<tr>
	<td><code>penWidth</code></td>
	<td>width of pen</td>
</tr>
<tr>
	<td><code>bgColor</code></td>
	<td>color of background</td>
</tr>
<tr>
	<td><code>left</code></td>
	<td>Sets the top left horizontal position of the rectangular capture area in pixels</td>
</tr>
<tr>
	<td><code>top</code></td>
	<td>Sets the top left vertical position of the rectangular capture area in pixels</td>
</tr>
<tr>
	<td><code>width</code></td>
	<td>Sets the width of the rectangular capture area in pixels</td>
</tr>
<tr>
	<td><code>height</code></td>
	<td>Sets the height of the rectangular capture area in pixels</td>
</tr>
</table>

## capture

Saves signature to an image file and calls a callback. Windows Mobile and Windows CE devices support signature capture started in window, which you can show over current page (scrolling is not supported in this case).

Refer to [inline signature capture in device capabilities](../rhodes/device-caps#inline-signature-ex) for an example.

Ruby syntax:

	:::ruby
	Rho::SignatureCapture.capture(callback_url)

JavaScript syntax:

	Rho.SignatureCapture.capture(callback_function)

<table border="1">
<tr>
	<td><code>callback_url</code></td>
	<td>url to callback method called after the user enters a signature.</td>
</tr>
</table>

## clear

Clear the signature in the window. Windows Mobile and Windows CE devices support signature capture started in window, which you can show over current page (scrolling is not supported in this case).

Ruby syntax:

	:::ruby
	Rho::SignatureCapture.clear()

JavaScript syntax:

	Rho.SignatureCapture.clear()
