#NativeToolbar
<div class="btn-group"><a href="#Methods" class="btn btn-outline-secondary">Methods<span class="badge badge-secondary ml-3">2</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Methods - Class</h6>
<a href="#mcreate" data-target="cMethodcreate" class="dropdown-item">create</a><a href="#mremove" data-target="cMethodremove" class="dropdown-item">remove</a></div></div><div class="btn-group"><a href="#Examples" class="btn btn-outline-secondary">Examples<span class="badge badge-secondary ml-3">2</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#e0" data-target="eExample0" class="dropdown-item">Create native toolbar</a><a href="#e1" data-target="eExample1" class="dropdown-item">Remove the toolbar</a></div></div><div id="apibody" class="mt-3">
<p>The NativeToolbar method let you create and remove a toolbar at runtime.</p>
<p> Either Toolbar or Tabbar should be used in an application &ndash; Toolbar and Tabbar shouldnot be used simultaneously.</p>

<h2>Enabling the API</h2>

<p>This API is part of the <code>coreapi</code> extension that is included automatically.</p>

<pre><code>:::ruby
extensions: ["coreapi"]
</code></pre>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>


<a name='Methods'></a>
<h2>Methods</h2>

<div class="accordion" id="accordion"><a name ='mcreate'/><div class=' method  js ruby android ios wp8' id='mcreate'><div class="signature d-flex"><div class="name">create</div><div class='parameters'>(<span class="text-info">ARRAY</span> toolbarElements, <span class="text-info">HASH</span> toolBarProperties)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mcreate1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mcreate2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mcreate4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mcreate6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-create'><div class="tab-pane fade active show" id="mcreate1"><p>Creates a new toolbar and removes the current toolbar and replaces it with this one. Any images used for UI elements should be specified by either an absolute path. i.e. &lsquo;/sdcard/nmt/blabla.com.bla./data/public/img/button.png&rsquo;</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mcreate2"><div><p><strong>Parameters</strong></p><ul><li>toolbarElements : <span class='text-info'>ARRAY</span><p><p>Array of Toolbar elements. Do not create more than five elements for maximum portability.Toolbar elements are not scrollable, so if some buttons will not fit into the screen dimensions, they will be invisible.</p>
 </p></li><ul><li>toolbarElement : <span class='text-info'>HASH</span><p><p>Properties of Toolbar elements. Either :icon or :label must be specified. If both are specified, :icon is drawn and :label is discarded.</p>
 </p></li><ul><li>label : <span class='text-info'>STRING</span><p><p>Visible label to display instead of an icon.For predefined actions, icon will be displayed. Android, iOS note: for predefined actions no label will be displayed.</p>
 </p></li><li>action : <span class='text-info'>STRING</span><p><p>URL to call when button is pressed or special value.It may be path to Ruby controller action; i.e. &lsquo;/app/Account&rsquo; would load the Account index action. For ruby callback use &lsquo;callback:/app/Account&rsquo; Or javascript method to call: &lsquo;javascript: methodOnButton();&rsquo;.</p>
 </p><p><strong>Possible Values</strong> :</p> <dl  ><dt>separator</dt><dd><p>Add a separator to the toolbar. If only one separator is specified, then elements after separator will be right-aligned. If more then one separator is added: on WM/CE, platform dependent separator will be displayed, on Android/iOS center-aligned groups will be created.</p>
 Platforms: <p>WM, CE, Win32, iOS, Android</p>
</dt><dt>exit</dt><dd><p>Exit the application.</p>
</dt><dt>close</dt><dd><p>Exit the application.</p>
</dt><dt>options</dt><dd><p>Navigate to Settings page, defined in configuration file.</p>
</dt><dt>home</dt><dd><p>Navigate to Home page, defined in configuration file.</p>
</dt><dt>refresh</dt><dd><p>Refresh current page.</p>
</dt><dt>back</dt><dd><p>Perform back action or execute browser back.</p>
</dt><dt>log</dt><dd><p>Display Log View window.</p>
 Platforms: <p>WM, CE, Win32, iOS, Android</p>
</dt><dt>fullscreen</dt><dd><p>Expand application window to full screen.</p>
 Platforms: <p>WM, CE, Win32, Android, WP8</p>
</dt><dt>sync</dt><dd><p>Run full sync command.</p>
</dt><dt>minimize</dt><dd><p>Minimize application window.</p>
 Platforms: <p>WM, CE, Win32</p>
</dt><dt>SIP</dt><dd><p>Display software keyboard window.Set <code>Rho.System.keyboardState</code> to <code>Rho.System.KEYBOARD_AUTOMATIC</code> to use this element.</p>
 Platforms: <p>WM</p>
</dt></dl></li><li>icon : <span class='text-info'>STRING</span><p><p>Relative path to toolbar item icon in your rhodes app (typically located in &lsquo;/public/images/&rsquo;). Icon is ignored for predefined actions, icon will be displayed even if no icon specified. iPhone and Android: Icons must be no more than 30x30 pixels and must be in .png format. Windows Mobile: Icons can be any size, but all icons should have same size (default &ndash; 48x48). .png and .bmp formats are supported.</p>
 </p></li><li>coloredIcon : <span class='text-info'>BOOLEAN</span><span class='badge badge-secondary '> Default: false</span><p><p>Use colored icon in toolbar on iPhone instead of standard monochrome white icon (prepared from image alpha).</p>
 Platforms:iOS </p></li><li>width : <span class='text-info'>INTEGER</span><p><p>Button width in pixel. Used to define separator width when more than one separator specified.</p>
 Platforms:WM </p></li></ul></ul><li>toolBarProperties : <span class='text-info'>HASH</span><p><p>Properties of TabBar.</p>
 </p></li><ul><li>backgroundColor : <span class='text-info'>INTEGER</span><p><p>Background color of the toolbar.</p>
 </p></li><li>maskColor : <span class='text-info'>INTEGER</span><span class='badge badge-secondary '> Default: 0xFFFFFF</span><p><p>Image mask color(transparent color).</p>
 Platforms:WM, CE, Win32 </p></li><li>viewHeight : <span class='text-info'>INTEGER</span><p><p>Toolbar height in pixels.</p>
 Platforms:WM, CE, Win32 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mcreate3"></div><div class="tab-pane fade" id="mcreate4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mcreate6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.NativeToolbar.create(<span class="text-info">ARRAY</span> toolbarElements, <span class="text-info">HASH</span> toolBarProperties)</code> </li><li>Ruby: <code>Rho::NativeToolbar.create(<span class="text-info">ARRAY</span> toolbarElements, <span class="text-info">HASH</span> toolBarProperties)</code></li></ul></li></ul></div></div></div>  </div><a name ='mremove'/><div class=' method  js ruby android ios wp8' id='mremove'><div class="signature d-flex"><div class="name">remove</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mremove1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mremove4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mremove6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-remove'><div class="tab-pane fade active show" id="mremove1"><p>Removes the current toolbar. Does nothing if there is no active toolbar.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mremove2"></div><div class="tab-pane fade" id="mremove3"></div><div class="tab-pane fade" id="mremove4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mremove6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.NativeToolbar.remove()</code> </li><li>Ruby: <code>Rho::NativeToolbar.remove()</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Examples'></a>
<h2>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Create native toolbar</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">
<p>Create a native Toolbar.</p>
<ul class='nav nav-tabs' id='exI0-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI0-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript

           
Rho.NativeToolbar.create([{
        label: "Home",
        action: Rho.Application.startURI
    }, {
        label: "example.com",
        action: "http://www.example.org"
    }], {})
                   
                 </code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby

           
Rho::NativeToolbar.create([{
  :label =&gt; "Home",
  :action =&gt; url_for(Rho::Application.startURI)
  },
  {
  :label =&gt; "example.com",
  :action =&gt; "http://www.example.com",
  }
], {})
                   
                 </code></pre></div></div>  </div></div></div></div><a name='e1'></a><div class=' example' id='e1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample1"><strong>Remove the toolbar</strong></div><div id="cExample1" class="accordion-body">  <div class="accordion-inner">
<p>Remove the toolbar.</p>
<ul class='nav nav-tabs' id='exI1-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI1-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI1-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI1-S0JS'><pre class='CodeRay'><code>:::javascript

           
Rho.NativeToolbar.remove();
                   
                 </code></pre></div><div class='tab-pane' id='exI1-S0RUBY'><pre class='CodeRay'><code>:::ruby

           
Rho::NativeToolbar.remove
                   
                 </code></pre></div></div>  </div></div></div></div></div>