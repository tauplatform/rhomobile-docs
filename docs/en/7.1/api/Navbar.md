#Navbar
<div class="btn-group"><a href="#Methods" class="btn btn-outline-secondary">Methods<span class="badge badge-secondary ml-3">3</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Methods - Class</h6>
<a href="#mcreate" data-target="cMethodcreate" class="dropdown-item">create</a><a href="#mremove" data-target="cMethodremove" class="dropdown-item">remove</a><a href="#mstarted" data-target="cMethodstarted" class="dropdown-item">started</a></div></div><div id="apibody" class="mt-3">
<p>The NavBar API supports a native navigation bar for iOS devices.</p>
<h2>Enabling the API</h2>

<p>This API is part of the <code>coreapi</code> extension that is included automatically.</p>

<pre><code>:::ruby
extensions: ["coreapi"]
</code></pre>

<h3>JavaScript Usage</h3>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h3>Ruby Usage</h3>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>


<a name='Methods'></a>
<h2>Methods</h2>

<div class="accordion" id="accordion"><a name ='mcreate'/><div class=' method  js ruby ios' id='mcreate'><div class="signature d-flex"><div class="name">create</div><div class='parameters'>(<span class="text-info">HASH</span> navBarProperties)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mcreate1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mcreate2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mcreate4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mcreate6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-create'><div class="tab-pane fade active show" id="mcreate1"><p>Removes the current NavBar and replaces it with this one.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"></p></div></p></div><div class="tab-pane fade" id="mcreate2"><div><p><strong>Parameters</strong></p><ul><li>navBarProperties : <span class='text-info'>HASH</span><p><p>HASH with NavBar elements.</p>
 </p></li><ul><li>left : <span class='text-info'>HASH</span><p><p>Left button with :action and :label defined.</p>
 </p></li><ul><li>label : <span class='text-info'>STRING</span><p><p>Label for the button.</p>
 </p></li><li>action : <span class='text-info'>STRING</span><p><p>URL to call when button is pressed.It may be path to Ruby controller action; i.e. &lsquo;/app/Account&rsquo; would load the Account index action. For ruby callback use &lsquo;callback:/app/Account&rsquo; Or javascript method to call: &lsquo;javascript: methodOnButton();&rsquo;.</p>
 </p></li></ul><li>right : <span class='text-info'>HASH</span><p><p>(optional) Right button with :action and :label defined.</p>
 </p></li><ul><li>label : <span class='text-info'>STRING</span><p><p>Label for the button.</p>
 </p></li><li>action : <span class='text-info'>STRING</span><p><p>URL to call when button is pressed.It may be path to Ruby controller action; i.e. &lsquo;/app/Account&rsquo; would load the Account index action. For ruby callback use &lsquo;callback:/app/Account&rsquo; Or javascript method to call: &lsquo;javascript: methodOnButton();&rsquo;.</p>
 </p></li></ul><li>title : <span class='text-info'>STRING</span><p><p>Title of the navigation bar.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mcreate3"></div><div class="tab-pane fade" id="mcreate4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mcreate6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Navbar.create(<span class="text-info">HASH</span> navBarProperties)</code> </li><li>Ruby: <code>Rho::Navbar.create(<span class="text-info">HASH</span> navBarProperties)</code></li></ul></li></ul></div></div></div>  </div><a name ='mremove'/><div class=' method  js ruby ios' id='mremove'><div class="signature d-flex"><div class="name">remove</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mremove1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mremove4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mremove6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-remove'><div class="tab-pane fade active show" id="mremove1"><p>Removes the current navigation bar. Does nothing if there is no active navigation bar.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"></p></div></p></div><div class="tab-pane fade" id="mremove2"></div><div class="tab-pane fade" id="mremove3"></div><div class="tab-pane fade" id="mremove4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mremove6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Navbar.remove()</code> </li><li>Ruby: <code>Rho::Navbar.remove()</code></li></ul></li></ul></div></div></div>  </div><a name ='mstarted'/><div class=' method  js ruby ios' id='mstarted'><div class="signature d-flex"><div class="name">started</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mstarted1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mstarted4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mstarted6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-started'><div class="tab-pane fade active show" id="mstarted1"><p>Return true is navbar is started (used only for automatic tests)</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"></p></div></p></div><div class="tab-pane fade" id="mstarted2"></div><div class="tab-pane fade" id="mstarted3"></div><div class="tab-pane fade" id="mstarted4"><div><p><strong>Synchronous Return:</strong></p><ul><li>BOOLEAN</li></ul></div></div><div class="tab-pane fade" id="mstarted6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Navbar.started()</code> </li><li>Ruby: <code>Rho::Navbar.started()</code></li></ul></li></ul></div></div></div>  </div></div></div>