# Geolocation

Geolocation information is available in two ways: as an asynchronous service through Ajax calls to a predefined local URL, or in a controller using Ruby calls to the GeoLocation class.

You need to enable the GPS capability to use GeoLocation. This is done by adding the following line to build.yml:

	:::yaml
	capabilities:
	  - gps

See the [Configuration](build_config) section for more details.

The GPS receiver consumes a significant amount of energy, and should be switched off most of the time in order to preserve the device's battery life.
Any call to GeoLocation method or notification call back will power up the GPS receiver.
The GPS receiver will be switched off automatically after some time (see [Configuration](build_config) for parameters) or explicitly by GeoLocation.turnoff.
Also note that it usually takes a while to acquire the device's current position; in some cases, it may take several minutes and may not work at all indoors.

Note that in old rhodes versions (up to 2.3.1) this feature uses only GPS location provider. In more recent rhodes, it also uses network based location determination. Network based location
is not as precise as GPS, but in most cases it consumes less power and returns results faster than GPS.
Rhodes will update location using network data until the GPS signal has been received; then only GPS will be used for more precise data.

There are two ways to use GeoLocation.

 * Synchronous call to GeoLocation module for particular value.
 * Set GeoLocation notification (geoLocation.set_notification) and track location by the notification callback. In this case all location values are passed to notification as parameters in a @param variable.

Note that GeoLocation is switched off automatically when the application goes into the background, and is switched on as the application goes back to foreground.
However it is possible to switch on location services as usual while the application is in background.

See the [Rhodes-System-Api-Samples example](http://github.com/rhomobile/rhodes-system-api-samples/tree/master/app/Geolocation) application for GeoLocation usage example.

### Asynchronous Ajax calls

The Rhodes framework provides a simple HTML tag for accessing Geolocation information. To use it, include the appropriate JavaScript library on your page:

* For iPhone, Android: `/public/jquery/jquery-1.6.2.min.js` and `/public/js/rhogeolocation.js`
* For Windows Mobile: `/public/js/rhogeolocation-wm.js`
* For BlackBerry: Unsupported. The BlackBerry webview control doesn't support Ajax. 

Then add one of the following tags in the appropriate location in your HTML: `<geolocation/>`, `<geolatitude/>` or `<geolongitude/>`. The included JavaScript will query a predefined URL and fill these tags with location information.

`<geolocation/>` - returns a string in the form `[formatted position];[latitude];[longitude]`. 

For example: 37.3317° North, 122.0307° West;37.331689;-122.030731

`<geolatitude/>` - returns just the latitude <br/>
`<geolongitude/>` - returns just the longitude

### GeoLocation API

Refer to the [GeoLocation API](../../2.2.0/rhodesapi/geolocation-api) for the methods to access geolocation information from your device.

 * [latitude](../../2.2.0/rhodesapi/geolocation-api#latitude) - Returns current latitude in degrees.
 * [longitude](../../2.2.0/rhodesapi/geolocation-api#longitude) - Returns current longitude in degrees.
 * [known_position?, is_known_position](../../2.2.0/rhodesapi/geolocation-api#knownposition-isknownposition) - Returns true if the location system is up and running, false otherwise, null if this feature is not supported on the device platform.
 * [set_notification}(../../2.2.0/rhodesapi/geolocation-api#setnotification) - Set callback to track location changes.
 * [haversine_distance](../../2.2.0/rhodesapi/geolocation-api#haversinedistance) - Returns the distance between two points in miles.
 * [turnoff](../../2.2.0/rhodesapi/geolocation-api#turnoff) - Turn off GeoLocation.

GeoCoding: You can use any free web service for direct and reverse geocoding. See our complete example of using Google geocoding web service in [Rhodes-System-Api-Samples example](http://github.com/rhomobile/rhodes-system-api-samples/tree/master/app/GeoCoding).

**NOTE: On iOS and Android, real GPS starts working after the first access to the GeoLocation module. Real GPS hardware is switched off after a call to GeoLocation.turnoff. But keep in mind - any call to GeoLocation, such as getting latitude, starts the hardware GPS again!**

### Testing GeoLocation

While developing your application on Windows Mobile emulator, you may find the [FakeGPS](http://msdn.microsoft.com/en-us/library/bb158722.aspx) utility useful.

Before testing on BB simulator, select menu Simulate/GPS Location and set your position.

To provide Mock Location Data on Android, see [here](http://developer.android.com/guide/topics/location/index.html)

### Samples

Here are some examples of GeoLocation Ruby code.<a id="geolocation-setnotification-ex" />

#### Tracking location all the time
You may decide to keep track of your position right after application starts. To do that, add following to your application.rb:

	:::ruby
    class AppApplication < Rho::RhoApplication
      def on_activate_app
        #start geolocation
        GeoLocation.set_notification("/app/Settings/geo_callback", "", 3)
      end
    end

Callback points to the `geo_callback` in the Settings controller.rb:
    
	:::ruby
    class SettingsController < Rho::RhoController
      def geo_callback
        puts "geo_callback : #{@params}"
		# do something on position changes
		#...
      end
    end

#### Requiring location only on a specific view

	:::ruby
    def show_location
	  # check if we know our position	
      if !GeoLocation.known_position?
		# wait till GPS receiver acquire position
        GeoLocation.set_notification( url_for(:action => :geo_callback), "")
        redirect url_for(:action => :wait)
      else
		# show position
        render
      end
    end
    
    def geo_callback
      # navigate to `show_location` page if GPS receiver acquire position  
	  if @params['known_position'].to_i != 0 && @params['status'] =='ok'
	  
	  	GeoLocation.set_notification '', '', 2
	  	WebView.navigate url_for(:action => :map_all)
	  end
    end

#### Turning off GeoLocation as soon as the app goes off the device front page

In this code sample, /GeoLocation/ has to be replaced with an appropriate regular expression to detect the controller. This code is called from geo_callback. This decision allows you to switch off GeoLocation from a single code point in case geo_callback is set.

	:::ruby
	def geo_callback
	  puts "geo_callback : #{@params}"

	  if WebView.current_location !~ /GeoLocation/
	    puts "Stopping geo location since we are away of geo page: " + WebView.current_location
	    GeoLocation.turnoff
	    return
	  end
	end

If the app does not need location updates, and GeoLocation should still remain active, you can send an empty notification.

	:::ruby
	GeoLocation.set_notification "", "", 30

### Code Sample

See controller and view in the /app/GeoLocation folder of the [System API Samples application](http://github.com/rhomobile/rhodes-system-api-samples/tree/master/app/GeoLocation/controller.rb) for more information.