#KeyCapture
<div class="btn-group"><a href="#Methods" class="btn"><i class="icon-cog"></i> Methods<sup>&nbsp;3</sub></a><a class="btn dropdown-toggle" data-toggle="dropdown" data-target="#" href="#Methods" >  <span class="caret"></span>&nbsp;</a><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li class="disabled"><a tabindex="-1" href="#"><b><i>Methods - Class</i></b></a><li><a href="#mcaptureKey" data-target="cMethodcaptureKey" class="autouncollapse">captureKey</a></li><li><a href="#mcaptureTrigger" data-target="cMethodcaptureTrigger" class="autouncollapse">captureTrigger</a></li><li><a href="#mremapKey" data-target="cMethodremapKey" class="autouncollapse">remapKey</a></li></li></ul></div><div class="btn-group"><a href="#Properties" class="btn"><i class="icon-list"></i> Properties<sup>&nbsp;1</sup></a><button href="#" class="btn dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span>&nbsp;</button><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li class="disabled"><a tabindex="-1" href="#"><b><i>Class Properties</i></b></a><li><a href="#phomeKeyValue" data-target="cPropertyhomeKeyValue" class="autouncollapse">homeKeyValue</a></li></li></ul></div><div class="btn-group"><a href="#Constants" class="btn"><i class="icon-warning-sign"></i> Constants<sup>&nbsp;2</sup></a><button href="#" class="btn dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span>&nbsp;</button><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li><a href="#c0" data-target="rConstant0" class="autouncollapse">IPHONE_VOLUME_UP</a></li><li><a href="#c1" data-target="rConstant1" class="autouncollapse">IPHONE_VOLUME_DOWN</a></li></ul></div><div class="btn-group"><a href="#Examples" class="btn"><i class="icon-edit"></i> Examples<sup>&nbsp;6</sup></a><button href="#" class="btn dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span>&nbsp;</button><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li><a href="#e0" data-target="eExample0" class="autouncollapse">Disabling all keys</a></li><li><a href="#e1" data-target="eExample1" class="autouncollapse">Capturing all keys</a></li><li><a href="#e2" data-target="eExample2" class="autouncollapse">Remapping ET1 P keys to arrow keys</a></li><li><a href="#e3" data-target="eExample3" class="autouncollapse">Trigger capture</a></li><li><a href="#e4" data-target="eExample4" class="autouncollapse">HomeKeyValue</a></li><li><a href="#e5" data-target="eExample5" class="autouncollapse">iPhoneVolume</a></li></ul></div><div class="btn-group"><a href="#Remarks" class="btn"><i class="icon-warning-sign"></i> Remarks<sup>&nbsp;14</sup></a><button href="#" class="btn dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span>&nbsp;</button><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li><a href="#r0" data-target="rRemark0" class="autouncollapse">Keys which can not be captured</a></li><li><a href="#r1" data-target="rRemark1" class="autouncollapse">Precedence of APIs using the same keyValue</a></li><li><a href="#r2" data-target="rRemark2" class="autouncollapse">Precedence of captureKey events</a></li><li><a href="#r3" data-target="rRemark3" class="autouncollapse">Device Lockdown on Motorola Solutions Android devices</a></li><li><a href="#r4" data-target="rRemark4" class="autouncollapse">Capturable keys on iOS devices</a></li><li><a href="#r5" data-target="rRemark5" class="autouncollapse">Capturing Function</a></li><li><a href="#r6" data-target="rRemark6" class="autouncollapse">VC70 Hardware Keys</a></li><li><a href="#r7" data-target="rRemark7" class="autouncollapse">ES400 Application Keys</a></li><li><a href="#r8" data-target="rRemark8" class="autouncollapse">F5 Key</a></li><li><a href="#r9" data-target="rRemark9" class="autouncollapse">Accelerator Keys</a></li><li><a href="#r10" data-target="rRemark10" class="autouncollapse">Remapping a key to itself</a></li><li><a href="#r11" data-target="rRemark11" class="autouncollapse">Special characters</a></li><li><a href="#r12" data-target="rRemark12" class="autouncollapse">Device Specific Exceptions</a></li><li><a href="#r13" data-target="rRemark13" class="autouncollapse">Use of Key Capture module on Localized Operating Systems</a></li></ul></div><div class="btn-group"><a href="#License" class="btn"><i class="icon-shopping-cart"></i> Licensing</a></div><div class="btn-group pull-right"><button class="btn dropdown-toggle" id="apiFilterBtn" data-toggle="dropdown" href="#" title="Filter Properties and Methods"><i class="icon-filter "></i>Show</button><select id="apiFilter" class="dropdown-menu apiFilter"><option value="all">All</option><option value="js">JavaScript</option><option value="ruby">Ruby</option><option value="android">Android</option><option value="ios">iOS</option><option value="wm">Windows Mobile</option><option value="wp8">Windows Phone 8</option><option value="w32">Windows Desktop</option><option value="msi">MSI Only</option></select></div><div  id="apibody" style="overflow:auto;padding-right: 5px;">
<p>The KeyCapture module is used to intercept or override hardware keys. It is typically used to provide certain application functions through the use of the device&rsquo;s physical keyboard or other hardware enabled buttons.</p>
<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code></p>

<pre><code>:::ruby
extensions: ["hardwarekeys"]
</code></pre>

<p>The <code>hardwarekeys</code> extension is also included automatically if you specify the following in your <code>build.yml</code></p>

<pre><code>:::ruby
app_type: "rhoelements"
</code></pre>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby</p>


<a name='Methods'></a>
<h2><i class='icon-cog'></i>Methods</h2>

<div class="accordion" id="accordion"><a name ='mcaptureKey'/><div class=' method  js ruby android ios' id='mcaptureKey'><h3><strong  >captureKey</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">BOOLEAN</span> dispatch, <span class="text-info">STRING</span> keyValue, <span class='text-info'>CallBackHandler</span> callback)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mcaptureKey1" data-toggle="tab">Description</a></li><li ><a href="#mcaptureKey2" data-toggle="tab">Parameters</a></li><li ><a href="#mcaptureKey3" data-toggle="tab">Callback</a></li><li ><a href="#mcaptureKey4" data-toggle="tab">Return</a></li><li ><a href="#mcaptureKey6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-captureKey'><div class="tab-pane fade active in" id="mcaptureKey1"><p>Notifies the user when a specified physical key is pressed. The key event can also be absorbed so that it isnt delivered to the web view. If the callback is not set then the capture setting for the given key will be cleared.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mcaptureKey2"><div><p><strong>Parameters</strong></p><ul><li>dispatch : <span class='text-info'>BOOLEAN</span><p>After a key has been intercepted this parameter will determine whether or not it will still be received by the Web View. For example if you have focus in a text box and are intercepting keys set this to 'False' to avoid having the keys appear in the box. For iOS devices this parameter has no effect. If any of volume keys are captured, real sound volume wlll not be changed. </p></li><li>keyValue : <span class='text-info'>STRING</span><p>Specifies the identifier of the key to capture. This this value is the operating system's identifier for the key, not the ASCII representation of the key (for example, the 'a' key on Windows Mobile devices has a keyValue of 101). Alternatively, this parameter can be set to 'all'. This value will capture all hardware key presses. This parameter needs to be passed as a string (for example '101' or '0x65' or 'all'). </p></li><li>callback : <span class='text-info'>CallBackHandler</span> <span class='label label-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="mcaptureKey3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>keyValue : <span class='text-info'>INTEGER</span><p>The internal representation of the key expressed in decimal, e.g. 13 is the return key Platforms:WM, Android </p></li></ul></ul></div></div><div class="tab-pane fade" id="mcaptureKey4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mcaptureKey6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.KeyCapture.captureKey(<span class="text-info">BOOLEAN</span> dispatch, <span class="text-info">STRING</span> keyValue, <span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::KeyCapture.captureKey(<span class="text-info">BOOLEAN</span> dispatch, <span class="text-info">STRING</span> keyValue, <span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mcaptureTrigger'/><div class=' method  js ruby android msi' id='mcaptureTrigger'><h3><strong  >captureTrigger</strong><span style='font-size:.7em;font-weight:normal;'>(<span class='text-info'>CallBackHandler</span> callback)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mcaptureTrigger1" data-toggle="tab">Description</a></li><li ><a href="#mcaptureTrigger2" data-toggle="tab">Parameters</a></li><li ><a href="#mcaptureTrigger3" data-toggle="tab">Callback</a></li><li ><a href="#mcaptureTrigger4" data-toggle="tab">Return</a></li><li ><a href="#mcaptureTrigger6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-captureTrigger'><div class="tab-pane fade active in" id="mcaptureTrigger1"><p>Captures the event whenever a device hardware trigger is pressed or released. If the callback is not set then the capture setting for the trigger will be cleared. The trigger presses cannot be absorbed. All trigger presses will propagate to RhoElements.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/motowebkit.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Motorola Devices Only"></p></div></p></div><div class="tab-pane fade" id="mcaptureTrigger2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='label label-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="mcaptureTrigger3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>triggerFlag : <span class='text-info'>INTEGER</span><p>The combination of the triggers pressed and the state of the triggers. Older devices may report duplicate values for different triggers on the device due to a platform issue, this has been resolved in newer devices. </p></li></ul></ul></div></div><div class="tab-pane fade" id="mcaptureTrigger4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mcaptureTrigger6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.KeyCapture.captureTrigger(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::KeyCapture.captureTrigger(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mremapKey'/><div class=' method  js ruby android' id='mremapKey'><h3><strong  >remapKey</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">STRING</span> keyValue, <span class="text-info">STRING</span> remapTo)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mremapKey1" data-toggle="tab">Description</a></li><li ><a href="#mremapKey2" data-toggle="tab">Parameters</a></li><li ><a href="#mremapKey4" data-toggle="tab">Return</a></li><li ><a href="#mremapKey6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-remapKey'><div class="tab-pane fade active in" id="mremapKey1"><p>Captures and consumes a specific key value and spawns a new key event with the remapped key code. If remapTo is empty or null, the remapping for this key value will be cleared</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mremapKey2"><div><p><strong>Parameters</strong></p><ul><li>keyValue : <span class='text-info'>STRING</span><p>Specifies the identifier of the key to capture. This this value is the operating system's identifier for the key, not the ASCII representation of the key (for example, the 'a' key on Windows Mobile devices has a keyValue of 101). This parameter needs to be passed as a string (for example '101' or '0x65'). </p></li><li>remapTo : <span class='text-info'>STRING</span><p>The operating system's identifier of the key press event to generate when the keyValue is captured. </p></li></ul></div></div><div class="tab-pane fade" id="mremapKey3"></div><div class="tab-pane fade" id="mremapKey4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mremapKey6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.KeyCapture.remapKey(<span class="text-info">STRING</span> keyValue, <span class="text-info">STRING</span> remapTo)</code> </li><li>Ruby: <code>Rho::KeyCapture.remapKey(<span class="text-info">STRING</span> keyValue, <span class="text-info">STRING</span> remapTo)</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Properties'></a>
<h2><i class='icon-list'></i>Properties</h2>

<a name='phomeKeyValue'></a><div class=' method  js ruby' id='phomeKeyValue'><h3><strong  >homeKeyValue</strong><span style='font-size:.7em;font-weight:normal;'> : <span class='text-info'>STRING</span>  </span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#phomeKeyValue1" data-toggle="tab">Description</a></li><li ><a href="#phomeKeyValue2" data-toggle="tab">Params</a></li><li ><a href="#phomeKeyValue6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-homeKeyValue'><div class="tab-pane fade active in" id="phomeKeyValue1">Specifies a key which, when pressed, will navigate to the start page as defined in the RhoElements configuration. Set to 'Disabled' to prevent this behavior.<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"> </p></div></p></div><div class="tab-pane fade" id="phomeKeyValue2"><p><strong>Default:</strong> Disabled</p></div><div class="tab-pane fade" id="phomeKeyValue5"></div><div class="tab-pane fade" id="phomeKeyValue6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-book"></i>Class: This property can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.KeyCapture.homeKeyValue</code> </li><li>Ruby: <code>Rho::KeyCapture.homeKeyValue</code></li></ul></li></ul></div></div></div>  </div>
<a name='Constants'></a>
<h2><i class='icon-tag'></i>Constants</h2>

<div><dl  ><a name='c0'></a><dt>IPHONE_VOLUME_UP</dt><dd><p>iPhone volume up keyCode. Used to capture the volume up key when it is pressed</p>
</dd><a name='c1'></a><dt>IPHONE_VOLUME_DOWN</dt><dd><p>iPhone volume down keyCode. Used to capture the volume down key when it is pressed</p>
</dd></dl></div>
<a name='Examples'></a>
<h2><i class='icon-edit'></i>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Disabling all keys</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">

							This shows how to capture all hardware keys so that they are not propagated through to the page
						<ul class='nav nav-tabs' id='exI0-S0Tab'><li class='active'><a href='#exI0-S0JS' data-toggle='tab'>JavaScript</a></li><li ><a href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript

					
	Rho.KeyCapture.captureKey(false, "ALL", callback);
							
							</code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby

					
	Rho::KeyCapture.captureKey false, 'ALL',  url_for(:action =&gt; :keyCallback)
							
							</code></pre></div></div>  </div></div></div></div><a name='e1'></a><div class=' example' id='e1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample1"><strong>Capturing all keys</strong></div><div id="cExample1" class="accordion-body">  <div class="accordion-inner">

							This shows how to get notified when any hardware key is pressed (except trigger keys). In this example, the keys will pass through to the web page.
						<ul class='nav nav-tabs' id='exI1-S0Tab'><li class='active'><a href='#exI1-S0JS' data-toggle='tab'>JavaScript</a></li><li ><a href='#exI1-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI1-S0JS'><pre class='CodeRay'><code>:::javascript

					
	function keyCallback(result)
	{
		alert("this key has just been pressed!: " + result.keyValue);
	}

	Rho.KeyCapture.captureKey(true, "ALL", keyCallback);
							
							</code></pre></div><div class='tab-pane' id='exI1-S0RUBY'><pre class='CodeRay'><code>:::ruby

					
	def keyCallback

		Rho::Log("this key has just been pressed!: " + @params["keyValue"],"APP")
	end

	Rho::KeyCapture.captureKey true, 'ALL', url_for(:action =&gt; :keyCallback)
							
							</code></pre></div></div>  </div></div></div></div><a name='e2'></a><div class=' example' id='e2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample2"><strong>Remapping ET1 P keys to arrow keys</strong></div><div id="cExample2" class="accordion-body">  <div class="accordion-inner">

						In this example, the P1 and P2 keys of the ET1 tablet are remapped to the left key and right key respectively
					<ul class='nav nav-tabs' id='exI2-S0Tab'><li class='active'><a href='#exI2-S0JS' data-toggle='tab'>JavaScript</a></li><li ><a href='#exI2-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI2-S0JS'><pre class='CodeRay'><code>:::javascript

				
function remap()
{
	Rho.KeyCapture.remapKey('0x19','0x15'); //P1, left
	Rho.KeyCapture.remapKey('0x18','0x16'); //P2, right
}
						
						</code></pre></div><div class='tab-pane' id='exI2-S0RUBY'><pre class='CodeRay'><code>:::ruby

				
def remap

	Rho::KeyCapture.remapKey('0x19','0x15') #P1, left
	Rho::KeyCapture.remapKey('0x18','0x16') #P2, right
end
						
						</code></pre></div></div>  </div></div></div></div><a name='e3'></a><div class=' example' id='e3'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample3"><strong>Trigger capture</strong></div><div id="cExample3" class="accordion-body">  <div class="accordion-inner">

						This example notifies the user when a trigger key is pressed:
						
					<ul class='nav nav-tabs' id='exI3-S0Tab'><li class='active'><a href='#exI3-S0JS' data-toggle='tab'>JavaScript</a></li><li ><a href='#exI3-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI3-S0JS'><pre class='CodeRay'><code>:::javascript

				
function trigger()
{
	Rho.KeyCapture.captureTrigger(triggerCallback);
}

function triggerCallback(result)
{
	alert("this trigger event has just been received!: " + result.triggerFlag);
}
						
						</code></pre></div><div class='tab-pane' id='exI3-S0RUBY'><pre class='CodeRay'><code>:::ruby

				
def trigger()

	Rho::KeyCapture.captureTrigger(url_for(:action =&gt; :callbackTrig))
end

def callbackTrig

	Rho::Log("this key has just been pressed!: " + @params["triggerFlag"],"APP")
end
						
						</code></pre></div></div>  </div></div></div></div><a name='e4'></a><div class=' example' id='e4'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample4"><strong>HomeKeyValue</strong></div><div id="cExample4" class="accordion-body">  <div class="accordion-inner">

						The following example will navigate to the RhoElements start page when return is pressed:
					<ul class='nav nav-tabs' id='exI4-S0Tab'><li class='active'><a href='#exI4-S0JS' data-toggle='tab'>JavaScript</a></li><li ><a href='#exI4-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI4-S0JS'><pre class='CodeRay'><code>:::javascript

				
function goHome()
{
	Rho.KeyCapture.homeKeyValue = '0x0D';
}
						
						</code></pre></div><div class='tab-pane' id='exI4-S0RUBY'><pre class='CodeRay'><code>:::ruby

				
def goHome

	Rho::KeyCapture.homeKeyValue = '0x0D'
end
						
						</code></pre></div></div>  </div></div></div></div><a name='e5'></a><div class=' example' id='e5'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample5"><strong>iPhoneVolume</strong></div><div id="cExample5" class="accordion-body">  <div class="accordion-inner">

						The following example shows how to capture the iPhone Volume Up trigger:
					<ul class='nav nav-tabs' id='exI5-S0Tab'><li class='active'><a href='#exI5-S0JS' data-toggle='tab'>JavaScript</a></li><li ><a href='#exI5-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI5-S0JS'><pre class='CodeRay'><code>:::javascript

				
	function keyCallback(result)
	{
		if(result.keyValue == Rho.KeyCapture.IPHONE_VOLUME_UP){
			//do something
		}
	}

	Rho.KeyCapture.captureKey(true, Rho.KeyCapture.IPHONE_VOLUME_UP, keyCallback);
						
						</code></pre></div><div class='tab-pane' id='exI5-S0RUBY'><pre class='CodeRay'><code>:::ruby

				
	def keyCallback
	{
		if(@params["keyValue"] == Rho::KeyCapture.IPHONE_VOLUME_UP){
			//do something
		}
	}

	Rho::KeyCapture.captureKey true, Rho::KeyCapture.IPHONE_VOLUME_UP, url_for(:action =&gt; :key_Callback)
						
						</code></pre></div></div>  </div></div></div></div>
<a name='Remarks'></a>
<h2><i class='icon-warning-sign'></i>Remarks</h2>

<a name='r0'></a><div class=' remarks' id='r0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark0"><strong>Keys which can not be captured</strong></div><div id="cRemark0" class="accordion-body">  <div class="accordion-inner"><p>It is not possible to capture the following types of keys:</p>

<ol>
<li>Keyboard modifiers such as SHIFT, ALT, ORANGE button, BLUE button etc.</li>
<li>Device Keys such as the screen backlight or keyboard backlight.</li>
<li>Hot keys such as phone keys or &lsquo;soft&rsquo; buttons, those whose function changes based on the running application.</li>
<li>The Home key and the power key on Android and iOS devices.</li>
<li>On Android devices, keys reserved for use by the &ldquo;PTT&rdquo; apps (such as the left trigger button), if a &ldquo;PTT&rdquo; app has been enabled.</li>
<li>On consumer Jelly Bean (Android) devices, the search button cannot be captured, as it has been reserved for the sole use of &ldquo;Google Now&rdquo;.</li>
</ol>


<p>Although on some device configurations pressing the SHIFT key twice generates CAPS LOCK which can be captured with a key value of 16</p>
  </div></div></div></div><a name='r1'></a><div class=' remarks' id='r1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark1"><strong>Precedence of APIs using the same keyValue</strong></div><div id="cRemark1" class="accordion-body">  <div class="accordion-inner"><p>If captureKey and remapKey have been called with the same keyValue, the remapKey will take precedence. In this case this means that the keyEvent for the inputted key will not be fired as the remapping will occur and consume the key event.</p>
  </div></div></div></div><a name='r2'></a><div class=' remarks' id='r2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark2"><strong>Precedence of captureKey events</strong></div><div id="cRemark2" class="accordion-body">  <div class="accordion-inner"><p>Any captureKey calls set with a specific key will take precedence over any captureKey calls with value &lsquo;all&rsquo;. This means that the &lsquo;all&rsquo; callback will not be called when individual keys that have been registered with captureKey are pressed. This also goes for dispatch values. If captureKey &lsquo;all&rsquo; has a dispatch value of false, and captureKey with an individual keyCode value has a dispatch value of true, then this individual key will be dispatched to the app when pressed.</p>
  </div></div></div></div><a name='r3'></a><div class=' remarks' id='r3'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark3"><strong>Device Lockdown on Motorola Solutions Android devices</strong></div><div id="cRemark3" class="accordion-body">  <div class="accordion-inner"><p>Because the Home key cannot be captured on the ET1 and MC40 it is possible for users to return to the system home page by pressing it. If you need to prevent this then please consult the Motorola Solutions Android documentation for other device lockdown options.</p>
  </div></div></div></div><a name='r4'></a><div class=' remarks' id='r4'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark4"><strong>Capturable keys on iOS devices</strong></div><div id="cRemark4" class="accordion-body">  <div class="accordion-inner"><p>Only the volume up and volume down keys can be caught on iOS devices</p>
  </div></div></div></div><a name='r5'></a><div class=' remarks' id='r5'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark5"><strong>Capturing Function</strong></div><div id="cRemark5" class="accordion-body">  <div class="accordion-inner"><p>If you have enabled the function key in the configuration settings and that function key has some special behaviour in the Operating system the key will not be capturable unless you also set the &lsquo;FunctionKeysCapturable&rsquo; option (see RhoElements Configuration Settings). An example of special behaviour is the F6 and F7 keys on the MC75a (non QWERTY) which control the volume up and volume down. Although &lsquo;InterceptAllKeys&rsquo; will allow you to capture Function keys it will also disable the special Function key behaviour. Which buttons map to which function keys will differ from device to device, some devices such as the MC9500 have dedicated, labelled function keys whereas other devices such as the MC75a do not label the fact that their volume / red phone / green phone keys all behave as function keys internally.</p>
  </div></div></div></div><a name='r6'></a><div class=' remarks' id='r6'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark6"><strong>VC70 Hardware Keys</strong></div><div id="cRemark6" class="accordion-body">  <div class="accordion-inner"><p>The VC70 has a hardware keys (P1, P2, P3 and P4 as well as a brightness button) which are not capturable by the KeyCapture module. Additionally the the default Operating system behaviour (like volumeup/down) of hardware keys can not be blocked when RhoElements is running in fullscreen mode.</p>
  </div></div></div></div><a name='r7'></a><div class=' remarks' id='r7'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark7"><strong>ES400 Application Keys</strong></div><div id="cRemark7" class="accordion-body">  <div class="accordion-inner"><p>The ES400 has a hardware messaging key with an envelope icon on it that does not function like a standard Applicaiton Key. To disable this key go to &lsquo;Settings&rsquo; on the device, then &lsquo;Personal&rsquo;, then &lsquo;KeyRemap&rsquo; and remap it to a key not in use. Also note that the &lsquo;Sym&rsquo; key on the ES400 is not capturable.</p>
  </div></div></div></div><a name='r8'></a><div class=' remarks' id='r8'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark8"><strong>F5 Key</strong></div><div id="cRemark8" class="accordion-body">  <div class="accordion-inner"><p>In Internet Explorer the F5 key is used to refresh the current page. It is not recommended to rely on this functionality on Windows Mobile and it is not supported</p>
  </div></div></div></div><a name='r9'></a><div class=' remarks' id='r9'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark9"><strong>Accelerator Keys</strong></div><div id="cRemark9" class="accordion-body">  <div class="accordion-inner"><p>The following keys will be affected by the &lsquo;AccelerateKeys&rsquo; tag, see the Key Capture Overview for a more detailed explanation of Accelerator Keys. Accelerator Keys are only applicable when RhoElements is run with the Internet Explorer engine on a Windows CE device.</p>

<p>Key           Code    Usual Behaviour               Special behaviour in Internet Explorer</p>

<p>Left Arrow    0x25    Cursor left                   Scroll window left
Right Arrow   0x27    Cursor right                  Scroll window right
Up Arrow      0x26    Cursor up                     Scroll window up
Down Arrow    0x28    Cursor down                   Scroll window down
Backspace     0x08    Delete previous character.    Navigate to previous page
Enter         0x0D    Cursor line feed              Submit form
Tab           0x09    Advance to next control       Advance to next control</p>
  </div></div></div></div><a name='r10'></a><div class=' remarks' id='r10'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark10"><strong>Remapping a key to itself</strong></div><div id="cRemark10" class="accordion-body">  <div class="accordion-inner"><p>If a key is remapped to itself then RhoElements will appear to hang because if that key is pressed it will generate another press of the same key, and so on forever. The same will happen if for instance key 1 is remapped to key 2, which in turn is remapped to key 1.</p>
  </div></div></div></div><a name='r11'></a><div class=' remarks' id='r11'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark11"><strong>Special characters</strong></div><div id="cRemark11" class="accordion-body">  <div class="accordion-inner"><p>On some devices certain keys containing special characters trigger two separate key events. This happens because such characters are translated by the platform into the combination of a Shift and a Base Key. Characters behaving in such way are $, %, &amp;, &ldquo;, (, ), !, :, ?, #, _, @.</p>
  </div></div></div></div><a name='r12'></a><div class=' remarks' id='r12'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark12"><strong>Device Specific Exceptions</strong></div><div id="cRemark12" class="accordion-body">  <div class="accordion-inner"><p>Certain devices may map their function keys to apparently normal keys, for example the VC6090 maps the &lsquo;{&rsquo; key to F12 and the &lsquo;}&rsquo; key to F14. In order to capture those two keys it is necessary to enable F12 and F14 in the Configuration Settings. You may also find on some devices special keys like &lsquo;OK&rsquo; return the same code as a function key, depending on your keyboard layout.</p>
  </div></div></div></div><a name='r13'></a><div class=' remarks' id='r13'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark13"><strong>Use of Key Capture module on Localized Operating Systems</strong></div><div id="cRemark13" class="accordion-body">  <div class="accordion-inner"><p>Users of the key capture module with Chinese, Korean and Japanese operating systems should bear the following in mind: Internally the KeyCapture module stores key representations as VK codes, therefore the key event will always return VK_PROCESSKEY (229) and keys can not be individually specified. In JavaScript the DOM element&rsquo;s keyup event can be used as an indication of which key has been pressed.</p>
  </div></div></div></div>
<a name='License'></a>
<h2><i class='icon-shopping-cart'></i>Licensing</h2>

<div class="accordion" id="accordion">You can fully use all features of this API during evaluation, development or testing without obtaining a license. A message will be displayed on application startup and will also display a nag screen periodically. Before deploying an application to a production environment, you must obtain a license key. <a href='/guide/licensing'>Read more about licensing</a>.</div></div>