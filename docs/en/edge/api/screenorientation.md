#ScreenOrientation
<div class="btn-group"><a href="#Methods" class="btn btn-outline-secondary">Methods<span class="badge badge-secondary ml-3">5</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Methods - Class</h6>
<a href="#mleftHanded" data-target="cMethodleftHanded" class="dropdown-item">leftHanded</a><a href="#mnormal" data-target="cMethodnormal" class="dropdown-item">normal</a><a href="#mrightHanded" data-target="cMethodrightHanded" class="dropdown-item">rightHanded</a><a href="#msetScreenOrientationEvent" data-target="cMethodsetScreenOrientationEvent" class="dropdown-item">setScreenOrientationEvent</a><a href="#mupsideDown" data-target="cMethodupsideDown" class="dropdown-item">upsideDown</a></div></div><div class="btn-group"><a href="#Properties" class="btn btn-outline-secondary">Properties<span class="badge badge-secondary ml-3">1</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Class Properties</h6>
<a href="#pautoRotate" data-target="cPropertyautoRotate" class="dropdown-item">autoRotate</a></div></div><div class="btn-group"><a href="#Examples" class="btn btn-outline-secondary">Examples<span class="badge badge-secondary ml-3">3</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#e0" data-target="eExample0" class="dropdown-item">Detect screen orientation changes</a><a href="#e1" data-target="eExample1" class="dropdown-item">Change screen orientation</a><a href="#e2" data-target="eExample2" class="dropdown-item">Enable / disable auto rotate</a></div></div><div id="apibody" class="mt-3">
<p>The ScreenOrientation Module is used to control the screen orientation / layout and register to receive an event when it changes.</p>
<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code>.</p>

<pre><code>:::ruby
extensions: ["screenorientation"]
</code></pre>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>

<h2>Persistence</h2>

<p>With the old PocketBrowser / RhoElements 1 APIs, any events, such as <code>screenOrientationEvent</code> were canceled when a full navigate was performed. The original reason for this was a limitation of the IE engine on WM5 devices. When moving to the common API this was changed so that callbacks are not canceled.</p>


<a name='Methods'></a>
<h2>Methods</h2>

<div class="accordion" id="accordion"><a name ='mleftHanded'/><div class=' method  js ruby android' id='mleftHanded'><div class="signature d-flex"><div class="name">leftHanded</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mleftHanded1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mleftHanded4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mleftHanded6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-leftHanded'><div class="tab-pane fade active show" id="mleftHanded1"><p>Sets the screen orientation to left-handed orientation. Note the webpage will not reformat in line with the new screen size automatically.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mleftHanded2"></div><div class="tab-pane fade" id="mleftHanded3"></div><div class="tab-pane fade" id="mleftHanded4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mleftHanded6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.ScreenOrientation.leftHanded()</code> </li><li>Ruby: <code>Rho::ScreenOrientation.leftHanded()</code></li></ul></li></ul></div></div></div>  </div><a name ='mnormal'/><div class=' method  js ruby android' id='mnormal'><div class="signature d-flex"><div class="name">normal</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mnormal1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mnormal4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mnormal6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-normal'><div class="tab-pane fade active show" id="mnormal1"><p>Sets the screen orientation to default device orientation.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mnormal2"></div><div class="tab-pane fade" id="mnormal3"></div><div class="tab-pane fade" id="mnormal4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mnormal6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.ScreenOrientation.normal()</code> </li><li>Ruby: <code>Rho::ScreenOrientation.normal()</code></li></ul></li></ul></div></div></div>  </div><a name ='mrightHanded'/><div class=' method  js ruby android' id='mrightHanded'><div class="signature d-flex"><div class="name">rightHanded</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mrightHanded1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mrightHanded4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mrightHanded6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-rightHanded'><div class="tab-pane fade active show" id="mrightHanded1"><p>Sets the screen orientation to right-handed orientation. Note the webpage will not reformat in line with the new screen size automatically.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mrightHanded2"></div><div class="tab-pane fade" id="mrightHanded3"></div><div class="tab-pane fade" id="mrightHanded4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mrightHanded6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.ScreenOrientation.rightHanded()</code> </li><li>Ruby: <code>Rho::ScreenOrientation.rightHanded()</code></li></ul></li></ul></div></div></div>  </div><a name ='msetScreenOrientationEvent'/><div class=' method  js ruby android ios' id='msetScreenOrientationEvent'><div class="signature d-flex"><div class="name">setScreenOrientationEvent</div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#msetScreenOrientationEvent1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#msetScreenOrientationEvent2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#msetScreenOrientationEvent3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#msetScreenOrientationEvent4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#msetScreenOrientationEvent6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-setScreenOrientationEvent'><div class="tab-pane fade active show" id="msetScreenOrientationEvent1"><p>Sets the callback to be called when a screen orientation event occurs.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="msetScreenOrientationEvent2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-warning'>Mandatory</span> </li></ul></div></div><div class="tab-pane fade" id="msetScreenOrientationEvent3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>STRING</span></strong></p><ul></ul></div></div><div class="tab-pane fade" id="msetScreenOrientationEvent4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="msetScreenOrientationEvent6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.ScreenOrientation.setScreenOrientationEvent(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::ScreenOrientation.setScreenOrientationEvent(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mupsideDown'/><div class=' method  js ruby android' id='mupsideDown'><div class="signature d-flex"><div class="name">upsideDown</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mupsideDown1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mupsideDown4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mupsideDown6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-upsideDown'><div class="tab-pane fade active show" id="mupsideDown1"><p>Sets the screen orientation to upside down, useful if presenting the device to a customer to obtain a signature.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mupsideDown2"></div><div class="tab-pane fade" id="mupsideDown3"></div><div class="tab-pane fade" id="mupsideDown4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mupsideDown6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.ScreenOrientation.upsideDown()</code> </li><li>Ruby: <code>Rho::ScreenOrientation.upsideDown()</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Properties'></a>
<h2>Properties</h2>

<a name='pautoRotate'></a><div class=' method  js ruby android ios' id='pautoRotate'><div class="signature d-flex"><div class="name">autoRotate</div><div class='return-values'> : <span class='text-info'>BOOLEAN</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#pautoRotate1" data-toggle="tab">Description</a></li><li  class='nav-item'><a  class="nav-link" href="#pautoRotate2" data-toggle="tab">Params</a></li><li class='nav-item'><a class="nav-link" href="#pautoRotate6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-autoRotate'><div class="tab-pane fade active show" id="pautoRotate1"><p>Enables or Disables auto-rotation of the screen orientation when the device is rotated. For Windows Mobile/CE devices, support is limited to only Symbol Technologies devices with IST Sensor support.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"> </p></div></p></div><div class="tab-pane fade" id="pautoRotate2"><p><strong>Default:</strong> true</p></div><div class="tab-pane fade" id="pautoRotate5"></div><div class="tab-pane fade" id="pautoRotate6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.autoRotate</code></li></ul></li></ul></div></div></div>  </div>
<a name='Examples'></a>
<h2>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Detect screen orientation changes</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">
<p>Detect when the device changes orientation.</p>
<ul class='nav nav-tabs' id='exI0-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI0-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript

function start_detecting_orientation_changes(){
  ScreenOrientation.setScreenOrientationEvent(orientation_callback)
}

function orientation_callback(){

  Alert.show_popup("The screen changed orientation")
}
                   
                            </code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby

def start_detecting_orientation_changes
  Rho::ScreenOrientation.setScreenOrientationEvent(url_for(:action =&gt; :orientation_callback))
end

def orientation_callback
  Alert.show_popup("The screen changed orientation")
end

                            </code></pre></div></div>  </div></div></div></div><a name='e1'></a><div class=' example' id='e1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample1"><strong>Change screen orientation</strong></div><div id="cExample1" class="accordion-body">  <div class="accordion-inner">
<p>Set the screen orientation programmatically. Particularly useful in a tablet: before capturing a signature, set the orientation to upside-down so that the interface will look right from the signer&rsquo;s point of view without having to physically rotate the device.</p>
<ul class='nav nav-tabs' id='exI1-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI1-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI1-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI1-S0JS'><pre class='CodeRay'><code>:::javascript

function capture_signature_with_attention_to_details() {
    // Set screen orientation to upside down
    Rho.ScreenOrientation.upsideDown();

    // At this point, offer the device to the user. You just saved the user the hassle of rotating the tablet
    // and there's less potential for the device to be dropped along the way
    Rho.Signature.takeFullScreen({}, signature_callback);
}

function signature_callback(params) {
    // do whatever we need to do with the signature
    ...
    // restore screen orientation to default
    Rho.ScreenOrientation.normal();
}
                   
                            </code></pre></div><div class='tab-pane' id='exI1-S0RUBY'><pre class='CodeRay'><code>:::ruby

def capture_signature_with_attention_to_details
    # Set screen orientation to upside down
    Rho::ScreenOrientation.upsideDown
    # At this point, offer the device to the user. You just saved the user the hassle of rotating the tablet
    # and there's less potential for the device to be dropped along the way
    Rho::Signature.takeFullScreen({}, url_for(:action =&gt; :signature_callback))
end

def signature_callback
    # do whatever we need to do with the signature
    ...
    # restore screen orientation to default
    Rho::ScreenOrientation.normal
end
                   
                            </code></pre></div></div>  </div></div></div></div><a name='e2'></a><div class=' example' id='e2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample2"><strong>Enable / disable auto rotate</strong></div><div id="cExample2" class="accordion-body">  <div class="accordion-inner">
<p>Enable / disable automatic rotation of the screen according to device orientation.</p>
<ul class='nav nav-tabs' id='exI2-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI2-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI2-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI2-S0JS'><pre class='CodeRay'><code>:::javascript

// Enable autorotate
Rho.ScreenOrientation.autoRotate=true;

// Disable autorotate
Rho.ScreenOrientation.autoRotate=false;
                   
                            </code></pre></div><div class='tab-pane' id='exI2-S0RUBY'><pre class='CodeRay'><code>:::ruby

# Enable autorotate
Rho::ScreenOrientation.autoRotate=true

# Disable autorotate
Rho::ScreenOrientation.autoRotate=false
                   
                            </code></pre></div></div>  </div></div></div></div></div>