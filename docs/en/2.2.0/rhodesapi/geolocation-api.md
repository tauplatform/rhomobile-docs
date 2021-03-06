# GeoLocation API

Access geolocation information from your device.

See the controller and view in the [/app/GeoLocation folder of the System API Samples](https://github.com/rhomobile/rhodes-system-api-samples/blob/master/app/GeoLocation/controller.rb) application for an example.

Refer to [GeoLocation in Device Capabilites](../rhodes/device-caps#geolocation) for more discussion of GeoLocation, and for examples.

## Enabling Geolocation

To use the geolocation API, you need to enable geolocation on the device. Do this by adding that capability to the build.yml file:

	:::yaml
	capabilities:
	  - gps

**NOTE: We do not have a timeout parameter to automatically turn off the GPS system. If you want to turn off the GPS system, call GeoLocation.turnoff.**

## Using JavaScript API

You can call the GeoLocation methods from JavaScript as well as Ruby. To use the JavaScript API, add the `public/js/rho_javascript_api.js` file -- created at build time as part of the application package -- to the .html, .erb, or .js file calling the JavaScript method.

The JavaScript API methods with a return value can pass it as a parameter in jQuery-compatible continuation (deferred object, a kind of callback). Possible continuations to handle are done, fail, and complete.

	Rho.Class.method(params).done(function(handler) { /* handler... */ })

You must enable JavaScript by putting `rho-javascript` into extensions in your build.yml.

	:::yaml
	extensions: ["rho-javascript"]

You must have a [RhoElements license](../rhoelements/licensing) to use the JavaScript API.

## latitude

Returns current latitude in degrees.

Ruby syntax:

	:::ruby
	GeoLocation.latitude

JavaScript syntax:

	Rho.GeoLocation.latitude()

## longitude

Returns current longitude in degrees.

Ruby syntax:

	:::ruby
	GeoLocation.longitude

javaScript syntax:

	Rho.GeoLocation.longitude()

## known_position?, is_known_position

Returns true if the location system is up and running, false otherwise. is_known_position returns null if this feature is not supported on the device platform.

Ruby syntax:

	:::ruby
	GeoLocation.known_position?

JavaScript syntax:

	Rho.GeoLocation.is_known_position()

## set_notification

Set callback to track location changes.

**NOTE: You only need to call GeoLocation.set_notification once. The current behavior of the callback is that it will be called forever until it is stopped; you need to call `GeoLocation.turnoff` to stop it. The previous behavior was that the callback was called once and needed to be reset.**

Refer to [Device Capabilities - GeoLocation](../rhodes/device-caps#geolocation-setnotification-ex) for examples of set_notification. 

Ruby syntax:

	:::ruby
	GeoLocation.set_notification(callback_url, callback_params, ping_gpssystem_interval)

**NOTE: The `callback_url` parameter must be set in order for GeoLocation to function.**

JavaScript syntax:

	Rho.GeoLocation.set_notification(callback, callback_params, ping_gpssystem_interval)

<table border="1">
<tr>
	<td><code>callback_url</code></td>
	<td>url for the callback method called upon a location change notification or for the interval set by ping_gpssystem_interval.</td>
</tr>
<tr>
	<td><code>callback_params</code></td>
	<td>a string added to the body of the callback url. You can use it to identity who is setting up the callback, such as "my_tag=55". In general you do not set callback_param (leave it blank as in "").</td>
</tr>
<tr>
	<td><code>ping_gpssystem_interval</code></td>
	<td>(optional) If 0, the system interval is used; the callback is executed when the GPS system processes a location update (dependent on the mobile platform). If set to a number (such as 3), the callback is executed at an interval of this number of seconds (such as every three seconds).</td>
</tr>
</table>

When the GeoLocation.set_notification callback is called, it will receive a variable called @params, just like a normal Rhodes controller action. Here are the parameters included in the @params variable.

<table border="1">
<tr>
	<td><code>known_position</code></td>
	<td>1 or 0. Return from known_position? method.</td>
</tr>
<tr>
	<td><code>latitude</code></td>
	<td>Return from call to latitude method.</td>
</tr>
<tr>
	<td><code>longitude</code></td>
	<td>Return from call to longitude method.</td>
</tr>
<tr>
	<td><code>available</code></td>
	<td>1 if geolocation is available, 0 otherwise. For 1, not only does the hardware exist, but also the user can turn GPS off in phone settings, or not allow GPS activity on iPhone, etc.</td>
</tr>
<tr>
	<td><code>status</code></td>
	<td>"ok" or "error"</td>
</tr>
<tr>
	<td><code>error_code</code></td>
	<td>error code from RhoError.</td>
</tr>
<tr>
	<td><code>accuracy</code></td>
	<td>horizontal radius in meters; iOS and Android.</td>
</tr>
</table>

[Click here for the RhoError error code list.](rhoerror-api)

## haversine_distance

Returns the distance between two points in miles.

Ruby syntax:

	:::ruby
	GeoLocation.haversine_distance(latitude1, longitude1, latitude2, longitude2)

JavaScript syntax:

	Rho.GeoLocation.haversine_distance(latitude1, longitude1, latitude2, longitude2)

<table border="1">
<tr>
	<td><code>latitude1</code></td>
	<td>Latitude of the first point in degrees.</td>
</tr>
<tr>
	<td><code>longitude1</code></td>
	<td>Longitude of the first point in degrees.</td>
</tr>
<tr>
	<td><code>latitude2</code></td>
	<td>Latitude of the second point in degrees.</td>
</tr>
<tr>
	<td><code>longitude2</code></td>
	<td>Longitude of the second point in degrees.</td>
</tr>
</table>

## turnoff

Turn off GeoLocation.

**NOTE: When you call GeoLocation.turnoff, after the GPS is switched off, you might still receive a few callbacks (this depends on the platform; iOS and Android does not receive callbacks after turnoff).**

Ruby syntax:

	:::ruby
	GeoLocation.turnoff

JavaScript syntax:

	Rho.GeoLocation.turnoff()