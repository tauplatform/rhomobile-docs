#Device
<div class="btn-group"><a href="#Methods" class="btn btn-outline-secondary">Methods<span class="badge badge-secondary ml-3">6</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Methods - Class</h6>
<a href="#mcalibrate" data-target="cMethodcalibrate" class="dropdown-item">calibrate</a><a href="#midle" data-target="cMethodidle" class="dropdown-item">idle</a><a href="#mpowerOff" data-target="cMethodpowerOff" class="dropdown-item">powerOff</a><a href="#mreboot" data-target="cMethodreboot" class="dropdown-item">reboot</a><a href="#msuspend" data-target="cMethodsuspend" class="dropdown-item">suspend</a><a href="#mwake" data-target="cMethodwake" class="dropdown-item">wake</a></div></div><div class="btn-group"><a href="#Examples" class="btn btn-outline-secondary">Examples<span class="badge badge-secondary ml-3">7</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#e0" data-target="eExample0" class="dropdown-item">Setting callback</a><a href="#e1" data-target="eExample1" class="dropdown-item">Calibrating the device</a><a href="#e2" data-target="eExample2" class="dropdown-item">Suspending the device</a><a href="#e3" data-target="eExample3" class="dropdown-item">Power Off the device</a><a href="#e4" data-target="eExample4" class="dropdown-item">Switching device to idle mode</a><a href="#e5" data-target="eExample5" class="dropdown-item">Wake the device</a><a href="#e6" data-target="eExample6" class="dropdown-item">Rebooting the device</a></div></div><div class="btn-group"><a href="#Remarks" class="btn btn-outline-secondary">Remarks<span class="badge badge-secondary ml-3">5</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#r0" data-target="rRemark0" class="dropdown-item">General</a><a href="#r1" data-target="rRemark1" class="dropdown-item">Power Off</a><a href="#r2" data-target="rRemark2" class="dropdown-item">Reboot</a><a href="#r3" data-target="rRemark3" class="dropdown-item">Interaction with Unattended Method of the Push Module</a><a href="#r4" data-target="rRemark4" class="dropdown-item">wake Method</a></div></div><div id="apibody" class="mt-3">
<p>The Device API provides access to some device level functionality that is only available on Symbol devices such as suspend, calibrate, powerOff, wake, reboot etc.</p>
<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code>.
    :::ruby
    extensions: [&ldquo;symboldevice&rdquo;]</p>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>


<a name='Methods'></a>
<h2>Methods</h2>

<div class="accordion" id="accordion"><a name ='mcalibrate'/><div class=' method  js ruby' id='mcalibrate'><div class="signature d-flex"><div class="name">calibrate</div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mcalibrate1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mcalibrate2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mcalibrate3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#mcalibrate4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mcalibrate6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-calibrate'><div class="tab-pane fade active show" id="mcalibrate1"><p>Carries out the screen calibration routine.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mcalibrate2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="mcalibrate3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>Whether or not the calibration was successfully done, status will be &lsquo;success&rsquo; or &lsquo;failed&rsquo;.</p>
 </p></li><li>message : <span class='text-info'>STRING</span><p><p>If &lsquo;status&rsquo; == &lsquo;success&rsquo;, the message will contain &lsquo;Calibration was done succesfully.&rsquo; and if &lsquo;status&rsquo; == &lsquo;failed&rsquo;, the message will contain &lsquo;Calibration was failed.&rsquo;.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mcalibrate4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mcalibrate6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Device.calibrate(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::Device.calibrate(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='midle'/><div class=' method  js ruby' id='midle'><div class="signature d-flex"><div class="name">idle</div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#midle1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#midle2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#midle3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#midle4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#midle6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-idle'><div class="tab-pane fade active show" id="midle1"><p>Puts the device into idle mode. In this mode, the screen display is turned off. Callback is triggered only for &lsquo;failed&rsquo; status.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="midle2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="midle3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>If the mode of the device was not changed to idle mode, status will be &lsquo;failed&rsquo;. In all other cases, it will remain empty.</p>
 </p></li><li>message : <span class='text-info'>STRING</span><p><p>If &lsquo;status&rsquo; == &lsquo;failed&rsquo;, the message will contain an error message. In all other cases, it will remain empty.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="midle4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="midle6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Device.idle(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::Device.idle(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mpowerOff'/><div class=' method  js ruby' id='mpowerOff'><div class="signature d-flex"><div class="name">powerOff</div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mpowerOff1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mpowerOff2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mpowerOff3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#mpowerOff4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mpowerOff6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-powerOff'><div class="tab-pane fade active show" id="mpowerOff1"><p>Puts the device into power off mode. In this mode the device will draw no power. Only supported on SB1. Callback is triggered only for &lsquo;failed&rsquo; status.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mpowerOff2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="mpowerOff3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>If the powerOff was unsuccessful, status will be &lsquo;failed&rsquo;. In all other cases, it will remain empty.</p>
 </p></li><li>message : <span class='text-info'>STRING</span><p><p>If &lsquo;status&rsquo; == &lsquo;failed&rsquo;, the message will contain an error message. In all other cases, it will remain empty.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mpowerOff4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mpowerOff6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Device.powerOff(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::Device.powerOff(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mreboot'/><div class=' method  js ruby' id='mreboot'><div class="signature d-flex"><div class="name">reboot</div><div class='parameters'>(<span class="text-info">STRING</span> bootType, <span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mreboot1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mreboot2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mreboot3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#mreboot4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mreboot6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-reboot'><div class="tab-pane fade active show" id="mreboot1"><p>It reboots the terminal using either a Warm or Cold software boot (as specified). Note on CE6 devices a &ldquo;ColdCAD&rdquo; boot is required to replicate the Coldboot key sequence, e.g. 1+9+Power on an MC3000. Callback is triggered only for &lsquo;failed&rsquo; status.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mreboot2"><div><p><strong>Parameters</strong></p><ul><li>bootType : <span class='text-info'>STRING</span><p> </p></li><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="mreboot3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>If the reboot was unsuccessful, status will be &lsquo;failed&rsquo;. In all other cases, it will remain empty.</p>
 </p></li><li>message : <span class='text-info'>STRING</span><p><p>If &lsquo;status&rsquo; == &lsquo;failed&rsquo;, the message will contain an error message. In all other cases, it will remain empty.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mreboot4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mreboot6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Device.reboot(<span class="text-info">STRING</span> bootType, <span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::Device.reboot(<span class="text-info">STRING</span> bootType, <span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='msuspend'/><div class=' method  js ruby' id='msuspend'><div class="signature d-flex"><div class="name">suspend</div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#msuspend1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#msuspend2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#msuspend3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#msuspend4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#msuspend6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-suspend'><div class="tab-pane fade active show" id="msuspend1"><p>Puts the device into suspend mode. On suspend, the device goes to hibernation mode. Callback is triggered only for &lsquo;failed&rsquo; status. In some devices, the suspend doesnot happen instead it puts the device into an idle state.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="msuspend2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="msuspend3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>If the suspend was unsuccessful, status will be &lsquo;failed&rsquo;. In all other cases, it will remain empty.</p>
 </p></li><li>message : <span class='text-info'>STRING</span><p><p>If &lsquo;status&rsquo; == &lsquo;failed&rsquo;, the message will contain an error message. In all other cases, it will remain empty.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="msuspend4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="msuspend6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Device.suspend(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::Device.suspend(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mwake'/><div class=' method  js ruby android' id='mwake'><div class="signature d-flex"><div class="name">wake</div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mwake1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mwake2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mwake3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#mwake4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mwake6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-wake'><div class="tab-pane fade active show" id="mwake1"><p>In WM/CE, wakes the device from idle state to active state. Callback is triggered only for &lsquo;failed&rsquo; status. In Android, it will turn on the display, if it was off. The callback parameter is ignored in Android platform.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></p></div></p></div><div class="tab-pane fade" id="mwake2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="mwake3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>HASH</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>In WM/CE, if the wake was unsuccessful, status will be &lsquo;failed&rsquo;. In all other cases, it will remain empty.</p>
 </p></li><li>message : <span class='text-info'>STRING</span><p><p>In WM/CE, if &lsquo;status&rsquo; == &lsquo;failed&rsquo;, the message will contain an error message. In all other cases, it will remain empty.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mwake4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mwake6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Device.wake(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::Device.wake(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Examples'></a>
<h2>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Setting callback</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">
<p>Setting a callback</p>
<ul class='nav nav-tabs' id='exI0-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI0-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript
	
//Callback is optional, user can call the API with or without callback.
//User can set the callback in the below manner.							
function mycallback(data){
	var myMessage = "Status:" + data.status + "\n";
	if(data.message != ""){
		myMessage += "Message:" + data.message;
	}
	alert(myMessage);
}

							</code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby

#Callback is optional, user can call the API with or without callback.
#User can set the callback in the below manner.							
def mycallback
	myMessage = "Status:" + @params['status'] + "\n";
		if(@params['message'] != "")
			myMessage += "Message:" + @params['message']
		end		
	Alert.show_popup(myMessage)
end							

							</code></pre></div></div>  </div></div></div></div><a name='e1'></a><div class=' example' id='e1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample1"><strong>Calibrating the device</strong></div><div id="cExample1" class="accordion-body">  <div class="accordion-inner">
<p>Calibrating the device</p>
<ul class='nav nav-tabs' id='exI1-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI1-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI1-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI1-S0JS'><pre class='CodeRay'><code>:::javascript
			
//Calibrating the device with callback
Rho.Device.calibrate(mycallback);	
//On successful calibration, callback will update the 'status' as 'success' and 'message' as 'Calibration was done succesfully.'.
//On unsuccessful calibration, callback will update the 'status' as 'failed' and 'message' as 'Calibration was failed.'.
							
//Calibrating the device without callback
Rho.Device.calibrate();							

							</code></pre></div><div class='tab-pane' id='exI1-S0RUBY'><pre class='CodeRay'><code>:::ruby

#Calibrating the device with callback
Rho::Device.calibrate(mycallback);	
#On successful calibration, callback will update the 'status' as 'success' and 'message' as 'Calibration was done succesfully.'.
#On unsuccessful calibration, callback will update the 'status' as 'failed' and 'message' as 'Calibration was failed.'.

#Calibrating the device without callback
Rho::Device.calibrate();							

							</code></pre></div></div>  </div></div></div></div><a name='e2'></a><div class=' example' id='e2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample2"><strong>Suspending the device</strong></div><div id="cExample2" class="accordion-body">  <div class="accordion-inner">
<p>Suspending the device</p>
<ul class='nav nav-tabs' id='exI2-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI2-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI2-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI2-S0JS'><pre class='CodeRay'><code>:::javascript

//Suspending the device with callback
Rho.Device.suspend(mycallback);
//On successful suspend, callback will not be updated.
//On unsuccessful suspend, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
//Suspending the device without callback
Rho.Device.suspend();							

							</code></pre></div><div class='tab-pane' id='exI2-S0RUBY'><pre class='CodeRay'><code>:::ruby

#Suspending the device with callback
Rho::Device.suspend(mycallback);
#On successful suspend, callback will not be updated.
#On unsuccessful suspend, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
#Suspending the device without callback
Rho::Device.suspend();							

							</code></pre></div></div>  </div></div></div></div><a name='e3'></a><div class=' example' id='e3'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample3"><strong>Power Off the device</strong></div><div id="cExample3" class="accordion-body">  <div class="accordion-inner">
<p>Power Off the device</p>
<ul class='nav nav-tabs' id='exI3-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI3-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI3-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI3-S0JS'><pre class='CodeRay'><code>:::javascript

//Power Off the device with callback
Rho.Device.powerOff(mycallback);	
//On successful powerOff, callback will not be updated.
//On unsuccessful powerOff, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
//Power Off the device without callback
Rho.Device.powerOff();							

							</code></pre></div><div class='tab-pane' id='exI3-S0RUBY'><pre class='CodeRay'><code>:::ruby

#Power Off the device with callback
Rho::Device.powerOff(mycallback);	
#On successful powerOff, callback will not be updated.
#On unsuccessful powerOff, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
#Power Off the device without callback
Rho::Device.powerOff();							

							</code></pre></div></div>  </div></div></div></div><a name='e4'></a><div class=' example' id='e4'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample4"><strong>Switching device to idle mode</strong></div><div id="cExample4" class="accordion-body">  <div class="accordion-inner">
<p>Switching device to idle mode</p>
<ul class='nav nav-tabs' id='exI4-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI4-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI4-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI4-S0JS'><pre class='CodeRay'><code>:::javascript

//Switching device to idle mode with callback
Rho.Device.idle(mycallback);	
//On successful idle, callback will not be updated.
//On unsuccessful idle, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
//Switching device to idle mode without callback
Rho.Device.idle();							

							</code></pre></div><div class='tab-pane' id='exI4-S0RUBY'><pre class='CodeRay'><code>:::ruby

#Switching device to idle mode with callback
Rho::Device.idle(mycallback);	
#On successful idle, callback will not be updated.
#On unsuccessful idle, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
#Switching device to idle mode without callback
Rho::Device.idle();							

							</code></pre></div></div>  </div></div></div></div><a name='e5'></a><div class=' example' id='e5'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample5"><strong>Wake the device</strong></div><div id="cExample5" class="accordion-body">  <div class="accordion-inner">
<p>Wake the device</p>
<ul class='nav nav-tabs' id='exI5-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI5-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI5-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI5-S0JS'><pre class='CodeRay'><code>:::javascript

//Wake the device with callback
//Note: callback is ignored in Android platform. Hence no update will be retrieved on Android platform.
Rho.Device.wake(mycallback);	
//On successful wake, callback will not be updated.
//On unsuccessful wake, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
//Wake the device without callback
Rho.Device.wake();							

							</code></pre></div><div class='tab-pane' id='exI5-S0RUBY'><pre class='CodeRay'><code>:::ruby

#Wake the device with callback
#Note: callback is ignored in Android platform. Hence no update will be retrieved on Android platform.
Rho::Device.wake(mycallback);	
#On successful wake, callback will not be updated.
#On unsuccessful wake, callback will update the 'status' as 'failed' and 'message' will contain the error message.
							
#Wake the device without callback
Rho::Device.wake();							

							</code></pre></div></div>  </div></div></div></div><a name='e6'></a><div class=' example' id='e6'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample6"><strong>Rebooting the device</strong></div><div id="cExample6" class="accordion-body">  <div class="accordion-inner">
<p>Rebooting the device</p>
<ul class='nav nav-tabs' id='exI6-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI6-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI6-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI6-S0JS'><pre class='CodeRay'><code>:::javascript

//With callback

//The callback is updated only for failed cases as mentioned below:-
//For 'Warm' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do Warm booting.'.
//For 'Cold' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do Cold booting.'.
//For 'ColdCAD' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do ColdCAD booting.'.
//Other than 'Warm' or 'Cold' or 'ColdCAD' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do Warm booting.'.

//Rebooting the device using the string value as 'Warm'. 
Rho.Device.reboot("Warm",mycallback);

//Rebooting the device using the string value as 'Cold'. Note this feature may not be supported on all devices.
Rho.Device.reboot("Cold",mycallback);
							
//Rebooting the device using the string value as 'ColdCAD'. Note this feature may not be supported on all devices.
Rho.Device.reboot("ColdCAD",mycallback);	

//Rebooting the device with an empty string, results in warm booting of the device. 
Rho.Device.reboot("",mycallback);	

//Rebooting the device without passing any argument and only with callback, results in warm booting of the device.
Rho.Device.reboot(mycallback);	

//Rebooting the device with any string other than 'Warm' or 'Cold' or 'ColdCAD', results in warm booting of the device.
Rho.Device.reboot("XYZ",mycallback);
							
//Without callback
//Rebooting the device using the string value as 'Warm'. 
Rho.Device.reboot("Warm");

//Rebooting the device using the string value as 'Cold'. Note this feature may not be supported on all devices.
Rho.Device.reboot("Cold");
							
//Rebooting the device using the string value as 'ColdCAD'. Note this feature may not be supported on all devices.
Rho.Device.reboot("ColdCAD");	

//Rebooting the device with an empty string, results in warm booting of the device. 
Rho.Device.reboot("");	

//Rebooting the device without passing any argument, results in warm booting of the device.
Rho.Device.reboot();	

//Rebooting the device with any string other than 'Warm' or 'Cold' or 'ColdCAD', results in warm booting of the device.
Rho.Device.reboot("XYZ");								

							</code></pre></div><div class='tab-pane' id='exI6-S0RUBY'><pre class='CodeRay'><code>:::ruby

#With callback

#The callback is updated only for failed cases as mentioned below:-
#For 'Warm' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do Warm booting.'.
#For 'Cold' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do Cold booting.'.
#For 'ColdCAD' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do ColdCAD booting.'.
#Other than 'Warm' or 'Cold' or 'ColdCAD' boot, the callback contains 'status' as 'failed' and 'message' as 'Failed to do Warm booting.'.

#Rebooting the device using the string value as 'Warm'. 
Rho::Device.reboot("Warm",mycallback);

#Rebooting the device using the string value as 'Cold'. Note this feature may not be supported on all devices.
Rho::Device.reboot("Cold",mycallback);
							
#Rebooting the device using the string value as 'ColdCAD'. Note this feature may not be supported on all devices.
Rho::Device.reboot("ColdCAD",mycallback);		

#Rebooting the device with an empty string, results in warm booting of the device. 
Rho::Device.reboot("",mycallback);	

#Rebooting the device without passing any argument and only with callback, results in warm booting of the device.
Rho::Device.reboot(mycallback);	

#Rebooting the device with any string other than 'Warm' or 'Cold' or 'ColdCAD', results in warm booting of the device.
Rho::Device.reboot("XYZ",mycallback);	
							
#Without callback							
#Rebooting the device using the string value as 'Warm'. 
Rho::Device.reboot("Warm");

#Rebooting the device using the string value as 'Cold'. Note this feature may not be supported on all devices.
Rho::Device.reboot("Cold");
							
#Rebooting the device using the string value as 'ColdCAD'. Note this feature may not be supported on all devices.
Rho::Device.reboot("ColdCAD");		

#Rebooting the device with an empty string, results in warm booting of the device. 
Rho::Device.reboot("");	

#Rebooting the device without passing any argument, results in warm booting of the device.
Rho::Device.reboot();	

#Rebooting the device with any string other than 'Warm' or 'Cold' or 'ColdCAD', results in warm booting of the device.
Rho::Device.reboot("XYZ");						

							</code></pre></div></div>  </div></div></div></div>
<a name='Remarks'></a>
<h2>Remarks</h2>

<a name='r0'></a><div class=' remarks' id='r0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark0"><strong>General</strong></div><div id="cRemark0" class="accordion-body">  <div class="accordion-inner"><p>Note that some devices may not support all the API&rsquo;s or there is a possiblities of discrepancy across BSP&rsquo;s &amp; platforms.</p>
  </div></div></div></div><a name='r1'></a><div class=' remarks' id='r1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark1"><strong>Power Off</strong></div><div id="cRemark1" class="accordion-body">  <div class="accordion-inner"><p>Note that some devices may not support power off feature. Those devices may either throw an error message or it may enter into Sleep mode.</p>
  </div></div></div></div><a name='r2'></a><div class=' remarks' id='r2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark2"><strong>Reboot</strong></div><div id="cRemark2" class="accordion-body">  <div class="accordion-inner"><p>Note that in WM5.0 and above, there is no software difference between a warm and a cold boot as the device uses persistent storage; both the file and registry will remain the same after boot. In WM/CE, not all device support Cold or ColdCAD feature. Device may warm boot even though any of these option has been selected.</p>
  </div></div></div></div><a name='r3'></a><div class=' remarks' id='r3'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark3"><strong>Interaction with Unattended Method of the Push Module</strong></div><div id="cRemark3" class="accordion-body">  <div class="accordion-inner"><p>The suspend functionality is incompatible with the unattended functionality of the push module and they should not be used together.</p>
  </div></div></div></div><a name='r4'></a><div class=' remarks' id='r4'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark4"><strong>wake Method</strong></div><div id="cRemark4" class="accordion-body">  <div class="accordion-inner"><p>The wake functionality can be used along with Push module. For eg: in the push detected event the user can call the wake method to wake the device.</p>
  </div></div></div></div></div>
