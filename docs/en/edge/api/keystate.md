#KeyState
<div class="btn-group"><a href="#Methods" class="btn btn-outline-secondary">Methods<span class="badge badge-secondary ml-3">2</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Methods - Class</h6>
<a href="#mhideStates" data-target="cMethodhideStates" class="dropdown-item">hideStates</a><a href="#mshowStates" data-target="cMethodshowStates" class="dropdown-item">showStates</a></div></div><div class="btn-group"><a href="#Examples" class="btn btn-outline-secondary">Examples<span class="badge badge-secondary ml-3">1</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#e0" data-target="eExample0" class="dropdown-item">Show the Keystate Indicators</a></div></div><div class="btn-group"><a href="#Remarks" class="btn btn-outline-secondary">Remarks<span class="badge badge-secondary ml-3">2</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#r0" data-target="rRemark0" class="dropdown-item">Devices lacking support</a><a href="#r1" data-target="rRemark1" class="dropdown-item">Rotating the Screen</a></div></div><div id="apibody" class="mt-3">
<p>The KeyState API is used to display small icons to the user indicating the current shifted state of the hardware keyboard. The KeyState indicator will display icons for Shift, Alt, Control, Function, Caps, Num lock and Orange key states, growing from the right as necessary if more than one key state is set at once. This API is only supported on a subset of Symbol Technologies' Windows Mobile / CE / Embedded handheld devices (see remarks).</p>
<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code>.</p>

<pre><code>:::ruby
extensions: ["indicators"]
</code></pre>

<p>The <code>indicators</code> extension is also included automatically if you specify the following in your <code>build.yml</code>.</p>

<pre><code>:::ruby
app_type: "rhoelements"
</code></pre>

<p>NOTE: If you are building a Windows Mobile or Windows CE app with this API, you must set your app_type as &ldquo;rhoelements&rdquo; in your build.yml as shown <a href="../guide/build_config#other-build-time-settings">here</a>.</p>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>


<a name='Methods'></a>
<h2>Methods</h2>

<div class="accordion" id="accordion"><a name ='mhideStates'/><div class=' method  js ruby msi' id='mhideStates'><div class="signature d-flex"><div class="name">hideStates</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mhideStates1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mhideStates4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mhideStates6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-hideStates'><div class="tab-pane fade active show" id="mhideStates1"><p>Stops showing keystate icons representing the shifted state of the hardware keyboard.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/motowebkit.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Zebra Technologies Devices Only"></p></div></p></div><div class="tab-pane fade" id="mhideStates2"></div><div class="tab-pane fade" id="mhideStates3"></div><div class="tab-pane fade" id="mhideStates4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mhideStates6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.KeyState.hideStates()</code> </li><li>Ruby: <code>Rho::KeyState.hideStates()</code></li></ul></li></ul></div></div></div>  </div><a name ='mshowStates'/><div class=' method  js ruby msi' id='mshowStates'><div class="signature d-flex"><div class="name">showStates</div><div class='parameters'>(<span class="text-info">HASH</span> propertyMap)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mshowStates1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mshowStates2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mshowStates4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mshowStates6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-showStates'><div class="tab-pane fade active show" id="mshowStates1"><p>Display keystate icons representing the shifted state of the hardware keyboard.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/motowebkit.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Zebra Technologies Devices Only"></p></div></p></div><div class="tab-pane fade" id="mshowStates2"><div><p><strong>Parameters</strong></p><ul><li>propertyMap : <span class='text-info'>HASH</span> <span class='badge badge-info'>Optional</span><p><p>The properties associated with the keystate indicator, its size and position.</p>
 <p>Not specifying any properties will display the keystate indicators at the bottom right hand corner of the screen.</p>
</p></li><ul><li>right : <span class='text-info'>INTEGER</span><span class='badge badge-secondary '> Default: [Keystate Indicators start at the bottom right of the screen]</span><p><p>The absolute horizontal position of the keystate indicators in pixels. This is the rightmost edge of the rightmost indicator, where multiple indicators are displayed simultaneously they will grow from right to left.</p>
 </p></li><li>top : <span class='text-info'>INTEGER</span><span class='badge badge-secondary '> Default: [Keystate Indicators start at the bottom right of the screen]</span><p><p>The absolute vertical position of the keystate indicators in pixels.</p>
 </p></li><li>width : <span class='text-info'>INTEGER</span><span class='badge badge-secondary '> Default: [A sensible width based on Screen Resolution]</span><p><p>The width of each keystate indicator in pixels.</p>
 </p></li><li>height : <span class='text-info'>INTEGER</span><span class='badge badge-secondary '> Default: [A sensible height based on Screen Resolution]</span><p><p>The width of each keystate indicator in pixels.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mshowStates3"></div><div class="tab-pane fade" id="mshowStates4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mshowStates6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.KeyState.showStates(<span class="text-info">HASH</span> propertyMap)</code> </li><li>Ruby: <code>Rho::KeyState.showStates(<span class="text-info">HASH</span> propertyMap)</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Examples'></a>
<h2>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Show the Keystate Indicators</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">
<p>If you just want to display the keystate indicators in their default positions with size 25x25 pixels then call as follows.</p>
<ul class='nav nav-tabs' id='exI0-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI0-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript

                            
function show_keystates(){
    Rho.Keystate.showStates({width:25;height:25});
}
                        </code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby

                
def show_keystates
    Rho::Keystate.showStates({width:25;height:25})
end
                        </code></pre></div></div>  </div></div></div></div>
<a name='Remarks'></a>
<h2>Remarks</h2>

<a name='r0'></a><div class=' remarks' id='r0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark0"><strong>Devices lacking support</strong></div><div id="cRemark0" class="accordion-body">  <div class="accordion-inner"><p>Due to platform limitations this API is not available on the following Zebra Technologies devices:</p>

<ul>
<li>ES400</li>
<li>MC45</li>
<li>MC65</li>
<li>VC70</li>
<li>MC45</li>
<li>Workabout Pro 4</li>
</ul>

  </div></div></div></div><a name='r1'></a><div class=' remarks' id='r1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark1"><strong>Rotating the Screen</strong></div><div id="cRemark1" class="accordion-body">  <div class="accordion-inner"><p>The keystate indicator positions are absolute and so when rotating the screen you should also reposition the keystate accordingly to accommodate the new screen layout.</p>
  </div></div></div></div></div>