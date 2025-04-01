#RhoConnectClient
<div class="btn-group"><a href="#Methods" class="btn btn-outline-secondary">Methods<span class="badge badge-secondary ml-3">13</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Methods - Class</h6>
<a href="#maddObjectNotify" data-target="cMethodaddObjectNotify" class="dropdown-item"><span class='text-info'>addObjectNotify</span></a><a href="#mcleanObjectNotify" data-target="cMethodcleanObjectNotify" class="dropdown-item"><span class='text-info'>cleanObjectNotify</span></a><a href="#mclearNotification" data-target="cMethodclearNotification" class="dropdown-item">clearNotification</a><a href="#mdoSync" data-target="cMethoddoSync" class="dropdown-item"><span class='text-info'>doSync</span></a><a href="#mdoSyncSource" data-target="cMethoddoSyncSource" class="dropdown-item">doSyncSource</a><a href="#misLoggedIn" data-target="cMethodisLoggedIn" class="dropdown-item">isLoggedIn</a><a href="#misSyncing" data-target="cMethodisSyncing" class="dropdown-item">isSyncing</a><a href="#mlogin" data-target="cMethodlogin" class="dropdown-item">login</a><a href="#mlogout" data-target="cMethodlogout" class="dropdown-item">logout</a><a href="#msearch" data-target="cMethodsearch" class="dropdown-item">search</a><a href="#msetNotification" data-target="cMethodsetNotification" class="dropdown-item">setNotification</a><a href="#msetObjectNotification" data-target="cMethodsetObjectNotification" class="dropdown-item"><span class='text-info'>setObjectNotification</span></a><a href="#mstopSync" data-target="cMethodstopSync" class="dropdown-item"><span class='text-info'>stopSync</span></a></div></div><div class="btn-group"><a href="#Properties" class="btn btn-outline-secondary">Properties<span class="badge badge-secondary ml-3">7</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><h6 class="dropdown-header">Class Properties</h6>
<a href="#pbulksyncState" data-target="cPropertybulksyncState" class="dropdown-item">bulksyncState</a><a href="#ppageSize" data-target="cPropertypageSize" class="dropdown-item">pageSize</a><a href="#ppollInterval" data-target="cPropertypollInterval" class="dropdown-item">pollInterval</a><a href="#pshowStatusPopup" data-target="cPropertyshowStatusPopup" class="dropdown-item">showStatusPopup</a><a href="#psslVerifyPeer" data-target="cPropertysslVerifyPeer" class="dropdown-item">sslVerifyPeer</a><a href="#psyncServer" data-target="cPropertysyncServer" class="dropdown-item">syncServer</a><a href="#puserName" data-target="cPropertyuserName" class="dropdown-item">userName</a></div></div><div class="btn-group"><a href="#Examples" class="btn btn-outline-secondary">Examples<span class="badge badge-secondary ml-3">5</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#e0" data-target="eExample0" class="dropdown-item">Sync Authentication</a><a href="#e1" data-target="eExample1" class="dropdown-item">Notifications</a><a href="#e2" data-target="eExample2" class="dropdown-item">Object notifications</a><a href="#e3" data-target="eExample3" class="dropdown-item">Handling Errors</a><a href="#e4" data-target="eExample4" class="dropdown-item">Using search (Ruby Only)</a></div></div><div class="btn-group"><a href="#Remarks" class="btn btn-outline-secondary">Remarks<span class="badge badge-secondary ml-3">2</span></a><button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent"></button><div class="dropdown-menu" style="max-height: 500px;overflow: auto;"><a href="#r0" data-target="rRemark0" class="dropdown-item">Notification Callback Parameters</a><a href="#r1" data-target="rRemark1" class="dropdown-item">Backround Sync on iOS</a></div></div><div id="apibody" class="mt-3">
<p>RhoConnectClient is used for synchronization with RhoConnect applications.</p>

<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code>
    :::ruby
    extensions: [&ldquo;rhoconnect-client&rdquo;]</p>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby</p>


<a name='Methods'></a>
<h2>Methods</h2>

<div class="accordion" id="accordion"><a name ='maddObjectNotify'/><div class=' method  js ruby android ios wp8' id='maddObjectNotify'><div class="signature d-flex"><div class="name"><span class="text-info">addObjectNotify</span></div><div class='parameters'>(<span class="text-info">STRING</span> sourceName, <span class="text-info">STRING</span> object)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#maddObjectNotify1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#maddObjectNotify2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#maddObjectNotify4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#maddObjectNotify6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-addObjectNotify'><div class="tab-pane fade active show" id="maddObjectNotify1"><span class='badge badge-info'>Replaces:</span> <span class='badge badge-info'>add_objectnotify</span>  <p>Add the object notification by passing in an object ID.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="maddObjectNotify2"><div><p><strong>Parameters</strong></p><ul><li>sourceName : <span class='text-info'>STRING</span><p><p>Source name for object notification.</p>
 </p></li><li>object : <span class='text-info'>STRING</span><p><p>Object ID to get notifications.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="maddObjectNotify3"></div><div class="tab-pane fade" id="maddObjectNotify4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="maddObjectNotify6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.addObjectNotify(<span class="text-info">STRING</span> sourceName, <span class="text-info">STRING</span> object)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.addObjectNotify(<span class="text-info">STRING</span> sourceName, <span class="text-info">STRING</span> object)</code></li></ul></li></ul></div></div></div>  </div><a name ='mcleanObjectNotify'/><div class=' method  js ruby android ios wp8' id='mcleanObjectNotify'><div class="signature d-flex"><div class="name"><span class="text-info">cleanObjectNotify</span></div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mcleanObjectNotify1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mcleanObjectNotify4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mcleanObjectNotify6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-cleanObjectNotify'><div class="tab-pane fade active show" id="mcleanObjectNotify1"><span class='badge badge-info'>Replaces:</span> <span class='badge badge-info'>clean_objectnotify</span>  <p>Removes callback for object notifications.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mcleanObjectNotify2"></div><div class="tab-pane fade" id="mcleanObjectNotify3"></div><div class="tab-pane fade" id="mcleanObjectNotify4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mcleanObjectNotify6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.cleanObjectNotify()</code> </li><li>Ruby: <code>Rho::RhoConnectClient.cleanObjectNotify()</code></li></ul></li></ul></div></div></div>  </div><a name ='mclearNotification'/><div class=' method  js ruby android ios wp8' id='mclearNotification'><div class="signature d-flex"><div class="name">clearNotification</div><div class='parameters'>(<span class="text-info">STRING</span> sourceName)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mclearNotification1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mclearNotification2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mclearNotification4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mclearNotification6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-clearNotification'><div class="tab-pane fade active show" id="mclearNotification1"><p>Clears the sync notification for a given source.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mclearNotification2"><div><p><strong>Parameters</strong></p><ul><li>sourceName : <span class='text-info'>STRING</span><p><p>Source name to clear notification. Use &lsquo;*&rsquo; to clear notification for all models.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="mclearNotification3"></div><div class="tab-pane fade" id="mclearNotification4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mclearNotification6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.clearNotification(<span class="text-info">STRING</span> sourceName)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.clearNotification(<span class="text-info">STRING</span> sourceName)</code></li></ul></li></ul></div></div></div>  </div><a name ='mdoSync'/><div class=' method  js ruby android ios wp8' id='mdoSync'><div class="signature d-flex"><div class="name"><span class="text-info">doSync</span></div><div class='parameters'>(<span class="text-info">BOOLEAN</span> showStatusPopup, <span class="text-info">STRING</span> queryParams, <span class="text-info">BOOLEAN</span> syncOnlyChangedSources)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mdoSync1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mdoSync2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mdoSync4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mdoSync6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-doSync'><div class="tab-pane fade active show" id="mdoSync1"><span class='badge badge-info'>Replaces:</span> <span class='badge badge-info'>dosync</span>  <p>Start the RhoConnectClient sync process.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mdoSync2"><div><p><strong>Parameters</strong></p><ul><li>showStatusPopup : <span class='text-info'>BOOLEAN</span> <span class='badge badge-info'>Optional</span><p><p>Set to true to show status popup.</p>
 </p></li><li>queryParams : <span class='text-info'>STRING</span> <span class='badge badge-info'>Optional</span><p><p>Parameters to be passed to server.
                        The value must be like &lsquo;query=<your params here>
                        .
                        Your params may be just a string or string representation of JSON structure. For example:  'query=abc&rsquo; or &lsquo;query={abc: &ldquo;foo&rdquo;}&rsquo;</p>
 </p></li><li>syncOnlyChangedSources : <span class='text-info'>BOOLEAN</span> <span class='badge badge-info'>Optional</span><p><p>Sync only sources that have local changes.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="mdoSync3"></div><div class="tab-pane fade" id="mdoSync4"><div><p><strong>Synchronous Return:</strong></p><ul><li>STRING</li></ul></div></div><div class="tab-pane fade" id="mdoSync6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.doSync(<span class="text-info">BOOLEAN</span> showStatusPopup, <span class="text-info">STRING</span> queryParams, <span class="text-info">BOOLEAN</span> syncOnlyChangedSources)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.doSync(<span class="text-info">BOOLEAN</span> showStatusPopup, <span class="text-info">STRING</span> queryParams, <span class="text-info">BOOLEAN</span> syncOnlyChangedSources)</code></li></ul></li></ul></div></div></div>  </div><a name ='mdoSyncSource'/><div class=' method  js ruby android ios wp8' id='mdoSyncSource'><div class="signature d-flex"><div class="name">doSyncSource</div><div class='parameters'>(<span class="text-info">STRING</span> sourceName, <span class="text-info">BOOLEAN</span> showStatusPopup, <span class="text-info">STRING</span> queryParams)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mdoSyncSource1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mdoSyncSource2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mdoSyncSource4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mdoSyncSource6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-doSyncSource'><div class="tab-pane fade active show" id="mdoSyncSource1"><p>Start RhoConnectClient sync process for a given source name.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mdoSyncSource2"><div><p><strong>Parameters</strong></p><ul><li>sourceName : <span class='text-info'>STRING</span><p><p>Source name.</p>
 </p></li><li>showStatusPopup : <span class='text-info'>BOOLEAN</span> <span class='badge badge-info'>Optional</span><p><p>Set to true to show status popup.</p>
 </p></li><li>queryParams : <span class='text-info'>STRING</span> <span class='badge badge-info'>Optional</span><p><p>Parameters to be passed to server.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="mdoSyncSource3"></div><div class="tab-pane fade" id="mdoSyncSource4"><div><p><strong>Synchronous Return:</strong></p><ul><li>STRING</li></ul></div></div><div class="tab-pane fade" id="mdoSyncSource6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.doSyncSource(<span class="text-info">STRING</span> sourceName, <span class="text-info">BOOLEAN</span> showStatusPopup, <span class="text-info">STRING</span> queryParams)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.doSyncSource(<span class="text-info">STRING</span> sourceName, <span class="text-info">BOOLEAN</span> showStatusPopup, <span class="text-info">STRING</span> queryParams)</code></li></ul></li></ul></div></div></div>  </div><a name ='misLoggedIn'/><div class=' method  js ruby android ios wp8' id='misLoggedIn'><div class="signature d-flex"><div class="name">isLoggedIn</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#misLoggedIn1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#misLoggedIn4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#misLoggedIn6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-isLoggedIn'><div class="tab-pane fade active show" id="misLoggedIn1"><p>Returns true if the RhoConnectClient currently has a user session, false if not.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="misLoggedIn2"></div><div class="tab-pane fade" id="misLoggedIn3"></div><div class="tab-pane fade" id="misLoggedIn4"><div><p><strong>Synchronous Return:</strong></p><ul><li>BOOLEAN : <p>True if have logged in user session, false if not.</p>
</li></ul></div></div><div class="tab-pane fade" id="misLoggedIn6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.isLoggedIn()</code> </li><li>Ruby: <code>Rho::RhoConnectClient.isLoggedIn()</code></li></ul></li></ul></div></div></div>  </div><a name ='misSyncing'/><div class=' method  js ruby android ios wp8' id='misSyncing'><div class="signature d-flex"><div class="name">isSyncing</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#misSyncing1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#misSyncing4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#misSyncing6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-isSyncing'><div class="tab-pane fade active show" id="misSyncing1"><p>Returns true if sync is currently in progress.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="misSyncing2"></div><div class="tab-pane fade" id="misSyncing3"></div><div class="tab-pane fade" id="misSyncing4"><div><p><strong>Synchronous Return:</strong></p><ul><li>BOOLEAN : <p>True if sync has started but not finished yet, false otherwise.</p>
</li></ul></div></div><div class="tab-pane fade" id="misSyncing6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.isSyncing()</code> </li><li>Ruby: <code>Rho::RhoConnectClient.isSyncing()</code></li></ul></li></ul></div></div></div>  </div><a name ='mlogin'/><div class=' method  js ruby android ios wp8' id='mlogin'><div class="signature d-flex"><div class="name">login</div><div class='parameters'>(<span class="text-info">STRING</span> login, <span class="text-info">STRING</span> password, <span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mlogin1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mlogin2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#mlogin3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#mlogin4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mlogin6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-login'><div class="tab-pane fade active show" id="mlogin1"><p>Authenticates the user with RhoConnect. The callback will be executed when it is finished.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mlogin2"><div><p><strong>Parameters</strong></p><ul><li>login : <span class='text-info'>STRING</span><p><p>Login name.</p>
 </p></li><li>password : <span class='text-info'>STRING</span><p><p>Password.</p>
 </p></li><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-warning'>Mandatory</span> </li></ul></div></div><div class="tab-pane fade" id="mlogin3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>INTEGER</span></strong></p><ul></ul></div></div><div class="tab-pane fade" id="mlogin4"><div><p><strong>Synchronous Return:</strong></p><ul><li>INTEGER : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="mlogin6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.login(<span class="text-info">STRING</span> login, <span class="text-info">STRING</span> password, <span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.login(<span class="text-info">STRING</span> login, <span class="text-info">STRING</span> password, <span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mlogout'/><div class=' method  js ruby android ios wp8' id='mlogout'><div class="signature d-flex"><div class="name">logout</div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mlogout1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mlogout4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mlogout6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-logout'><div class="tab-pane fade active show" id="mlogout1"><p>Logout the user from the RhoConnect server. This removes the local user session.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mlogout2"></div><div class="tab-pane fade" id="mlogout3"></div><div class="tab-pane fade" id="mlogout4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mlogout6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.logout()</code> </li><li>Ruby: <code>Rho::RhoConnectClient.logout()</code></li></ul></li></ul></div></div></div>  </div><a name ='msearch'/><div class=' method  ruby android ios wp8' id='msearch'><div class="signature d-flex"><div class="name">search</div><div class='parameters'>(<span class="text-info">HASH</span> args, <span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#msearch1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#msearch2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#msearch3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#msearch4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#msearch6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-search'><div class="tab-pane fade active show" id="msearch1"><p>If you have a large dataset in your backend service, you don&rsquo;t have to synchronize everything with the RhoConnectClient. Instead you can filter the synchronized dataset using the RhoConnectClient&rsquo;s search function. Provide callback, which will be executed after search is completed.</p>
<p><div><p><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop">(Not currently supported in JavaScript.)</p></div></p></div><div class="tab-pane fade" id="msearch2"><div><p><strong>Parameters</strong></p><ul><li>args : <span class='text-info'>HASH</span><p><p>Hash of arguments passed to search.</p>
 </p></li><ul><li>sourceNames : <span class='text-info'>ARRAY</span><p><p>Array of source names to be included in search result.</p>
 </p></li><li>from : <span class='text-info'>STRING</span> <span class='badge badge-info'>Optional</span><p><p>Default is &lsquo;search&rsquo;</p>
 </p></li><li>searchParams : <span class='text-info'>HASH</span><p><p>Hash of key-value pairs to be included in search result.</p>
 </p></li><li>offset : <span class='text-info'>INTEGER</span> <span class='badge badge-info'>Optional</span><p> </p></li><li>maxResults : <span class='text-info'>INTEGER</span> <span class='badge badge-info'>Optional</span><p><p>Maximum number of results to be returned.</p>
 </p></li><li>progressStep : <span class='text-info'>INTEGER</span> <span class='badge badge-info'>Optional</span><p> </p></li><li>syncChanges : <span class='text-info'>BOOLEAN</span> <span class='badge badge-info'>Optional</span><p><p>If true and there are local changes, client sync will be triggered before search.</p>
 </p></li></ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-info'>Optional</span> </li></ul></div></div><div class="tab-pane fade" id="msearch3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>OBJECT</span></strong></p><ul><ul><li>status : <span class='text-info'>STRING</span><p><p>Resulting status of search. &lsquo;ok&rsquo; of completed successfully, &lsquo;error&rsquo; otherwise.</p>
 </p></li><li>search_params : <span class='text-info'>HASH</span><p><p>Search_params originally provided for the search call. Typically you want to forward the original search_params to your view that displays the results so you can perform the same query locally. Please see examples section.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="msearch4"><div><p><strong>Synchronous Return:</strong></p><ul><li>HASH : <p>Will return value only if threadedMode set to false. Otherwise search results returned in callback.</p>
 : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="msearch6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>Ruby: <code>Rho::RhoConnectClient.search(<span class="text-info">HASH</span> args, <span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='msetNotification'/><div class=' method  js ruby android ios wp8' id='msetNotification'><div class="signature d-flex"><div class="name">setNotification</div><div class='parameters'>(<span class="text-info">STRING</span> sourceName, <span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#msetNotification1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#msetNotification2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#msetNotification4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#msetNotification6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-setNotification'><div class="tab-pane fade active show" id="msetNotification1"><p>The RhoConnectClient system uses notifications to provide information about the sync process to a Rhodes application. Notifications can be setup once for the duration of runtime or each time a sync is triggered. Once a sync is processing for a model, notifications are called with parameters containing sync process state. Your application can use this information to display different wait pages, progress bars, etc. setNotification will set notification for a model.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="msetNotification2"><div><p><strong>Parameters</strong></p><ul><li>sourceName : <span class='text-info'>STRING</span><p><p>Source name for which notification will be enabled. Use &lsquo;*&rsquo; to set notification for all models.</p>
 </p></li><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-warning'>Mandatory</span> </li></ul></div></div><div class="tab-pane fade" id="msetNotification3"></div><div class="tab-pane fade" id="msetNotification4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="msetNotification6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.setNotification(<span class="text-info">STRING</span> sourceName, <span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.setNotification(<span class="text-info">STRING</span> sourceName, <span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='msetObjectNotification'/><div class=' method  js ruby android ios wp8' id='msetObjectNotification'><div class="signature d-flex"><div class="name"><span class="text-info">setObjectNotification</span></div><div class='parameters'>(<span class='text-info'>CallBackHandler</span> callback)</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#msetObjectNotification1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#msetObjectNotification2" data-toggle="tab">Parameters</a></li><li  class='nav-item'><a class="nav-link" href="#msetObjectNotification3" data-toggle="tab">Callback</a></li><li  class='nav-item'><a class="nav-link" href="#msetObjectNotification4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#msetObjectNotification6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-setObjectNotification'><div class="tab-pane fade active show" id="msetObjectNotification1"><span class='badge badge-info'>Replaces:</span> <span class='badge badge-info'>set_objectnotify_url</span>  <p>The RhoConnectClient can send a notification when a specific object on the current page has been modified. This is useful if you have frequently-changing data like feeds or timelines in your application and want them to update without the user taking any action.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="msetObjectNotification2"><div><p><strong>Parameters</strong></p><ul><li>callback : <span class='text-info'>CallBackHandler</span> <span class='badge badge-warning'>Mandatory</span> </li></ul></div></div><div class="tab-pane fade" id="msetObjectNotification3"><div><p><strong>Async Callback Returning Parameters: <span class='text-info'>OBJECT</span></strong></p><ul><ul><li>created : <span class='text-info'>ARRAY</span><p><p>Array of created objects.</p>
 </p></li><li>updated : <span class='text-info'>ARRAY</span><p><p>Array of updated objects.</p>
 </p></li><li>deleted : <span class='text-info'>ARRAY</span><p><p>Array of deleted objects.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="msetObjectNotification4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void : this method also supports async callbacks - check the Callback tab for callback return parameters.</li></ul></div></div><div class="tab-pane fade" id="msetObjectNotification6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.setObjectNotification(<span class='text-info'>CallBackHandler</span> callback)</code> </li><li>Ruby: <code>Rho::RhoConnectClient.setObjectNotification(<span class='text-info'>CallBackHandler</span> callback)</code></li></ul></li></ul></div></div></div>  </div><a name ='mstopSync'/><div class=' method  js ruby android ios wp8' id='mstopSync'><div class="signature d-flex"><div class="name"><span class="text-info">stopSync</span></div><div class='parameters'>()</div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#mstopSync1" data-toggle="tab">Description</a></li><li  class='nav-item'><a class="nav-link" href="#mstopSync4" data-toggle="tab">Return</a></li><li  class='nav-item'><a class="nav-link" href="#mstopSync6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3' id='tc-stopSync'><div class="tab-pane fade active show" id="mstopSync1"><span class='badge badge-info'>Replaces:</span> <span class='badge badge-info'>stop_sync</span>  <p>Stops any sync operations currently in progress.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mstopSync2"></div><div class="tab-pane fade" id="mstopSync3"></div><div class="tab-pane fade" id="mstopSync4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mstopSync6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.RhoConnectClient.stopSync()</code> </li><li>Ruby: <code>Rho::RhoConnectClient.stopSync()</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Properties'></a>
<h2>Properties</h2>

<a name='pbulksyncState'></a><div class=' method  ruby android ios wp8' id='pbulksyncState'><div class="signature d-flex"><div class="name">bulksyncState</div><div class='return-values'> : <span class='text-info'>INTEGER</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#pbulksyncState1" data-toggle="tab">Description</a></li><li  class='nav-item'><a  class="nav-link" href="#pbulksyncState2" data-toggle="tab">Params</a></li><li class='nav-item'><a class="nav-link" href="#pbulksyncState6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-bulksyncState'><div class="tab-pane fade active show" id="pbulksyncState1"><p>Set 0 to force bulk sync on next synchronization cycle. After sync is complete, bulksyncState will be set to 1.</p>
<p><div><p><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> (Not currently supported in JavaScript.)</p></div></p></div><div class="tab-pane fade" id="pbulksyncState2"><p><strong>Default:</strong> 1</p></div><div class="tab-pane fade" id="pbulksyncState5"></div><div class="tab-pane fade" id="pbulksyncState6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.bulksyncState</code></li></ul></li></ul></div></div></div>  </div><a name='ppageSize'></a><div class=' method  js ruby android ios wp8' id='ppageSize'><div class="signature d-flex"><div class="name">pageSize</div><div class='return-values'> : <span class='text-info'>INTEGER</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#ppageSize1" data-toggle="tab">Description</a></li><li class='nav-item'><a class="nav-link" href="#ppageSize6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-pageSize'><div class="tab-pane fade active show" id="ppageSize1"><p>Page size for RhoConnectClient. Default size is 2000.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> </p></div></p></div><div class="tab-pane fade" id="ppageSize2"></div><div class="tab-pane fade" id="ppageSize5"></div><div class="tab-pane fade" id="ppageSize6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.pageSize</code></li></ul></li></ul></div></div></div>  </div><a name='ppollInterval'></a><div class=' method  js ruby android ios wp8' id='ppollInterval'><div class="signature d-flex"><div class="name">pollInterval</div><div class='return-values'> : <span class='text-info'>INTEGER</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#ppollInterval1" data-toggle="tab">Description</a></li><li  class='nav-item'><a  class="nav-link" href="#ppollInterval2" data-toggle="tab">Params</a></li><li class='nav-item'><a class="nav-link" href="#ppollInterval6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-pollInterval'><div class="tab-pane fade active show" id="ppollInterval1"><p>Sync poll interval in seconds. Setting this to 0 will disable polling-based sync. Sync process will be triggered automatically according to this setting.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> </p></div></p></div><div class="tab-pane fade" id="ppollInterval2"><p><strong>Default:</strong> 60</p></div><div class="tab-pane fade" id="ppollInterval5"></div><div class="tab-pane fade" id="ppollInterval6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.pollInterval</code></li></ul></li></ul></div></div></div>  </div><a name='pshowStatusPopup'></a><div class=' method  js ruby android ios wp8' id='pshowStatusPopup'><div class="signature d-flex"><div class="name">showStatusPopup</div><div class='return-values'> : <span class='text-info'>BOOLEAN</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#pshowStatusPopup1" data-toggle="tab">Description</a></li><li  class='nav-item'><a  class="nav-link" href="#pshowStatusPopup2" data-toggle="tab">Params</a></li><li class='nav-item'><a class="nav-link" href="#pshowStatusPopup6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-showStatusPopup'><div class="tab-pane fade active show" id="pshowStatusPopup1"><p>Enable or disable show status popup.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> </p></div></p></div><div class="tab-pane fade" id="pshowStatusPopup2"><p><strong>Default:</strong> true</p></div><div class="tab-pane fade" id="pshowStatusPopup5"></div><div class="tab-pane fade" id="pshowStatusPopup6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.showStatusPopup</code></li></ul></li></ul></div></div></div>  </div><a name='psslVerifyPeer'></a><div class=' method  js ruby android ios wp8' id='psslVerifyPeer'><div class="signature d-flex"><div class="name">sslVerifyPeer</div><div class='return-values'> : <span class='text-info'>BOOLEAN</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#psslVerifyPeer1" data-toggle="tab">Description</a></li><li  class='nav-item'><a  class="nav-link" href="#psslVerifyPeer2" data-toggle="tab">Params</a></li><li class='nav-item'><a class="nav-link" href="#psslVerifyPeer6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-sslVerifyPeer'><div class="tab-pane fade active show" id="psslVerifyPeer1"><p>Enable or disable verification of RhoConnect ssl certificates, true by default.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> </p></div></p></div><div class="tab-pane fade" id="psslVerifyPeer2"><p><strong>Default:</strong> true</p></div><div class="tab-pane fade" id="psslVerifyPeer5"></div><div class="tab-pane fade" id="psslVerifyPeer6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.sslVerifyPeer</code></li></ul></li></ul></div></div></div>  </div><a name='psyncServer'></a><div class=' method  js ruby android ios wp8' id='psyncServer'><div class="signature d-flex"><div class="name">syncServer</div><div class='return-values'> : <span class='text-info'>STRING</span>  </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#psyncServer1" data-toggle="tab">Description</a></li><li class='nav-item'><a class="nav-link" href="#psyncServer6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-syncServer'><div class="tab-pane fade active show" id="psyncServer1"><p>Sync server URL.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> </p></div></p></div><div class="tab-pane fade" id="psyncServer2"></div><div class="tab-pane fade" id="psyncServer5"></div><div class="tab-pane fade" id="psyncServer6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.syncServer</code></li></ul></li></ul></div></div></div>  </div><a name='puserName'></a><div class=' method  js ruby android ios wp8' id='puserName'><div class="signature d-flex"><div class="name">userName</div><div class='return-values'> : <span class='text-info'>STRING</span> <span class='badge badge-dark'>Read Only</span> </div></div><ul class="nav nav-tabs"><li class='nav-item'><a class="nav-link active" href="#puserName1" data-toggle="tab">Description</a></li><li class='nav-item'><a class="nav-link" href="#puserName6" data-toggle="tab">Access</a></li></ul><div class='tab-content border border-top-0 p-3 mb-3' id='tc-userName'><div class="tab-pane fade active show" id="puserName1"><p>Current username of the RhoConnectClient session if isLoggedIn is true, otherwise returns the last logged in username.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"> </p></div></p></div><div class="tab-pane fade" id="puserName2"></div><div class="tab-pane fade" id="puserName5"></div><div class="tab-pane fade" id="puserName6"><div><p><strong>Property Access:</strong></p><ul><li><i class="icon-file"></i>Instance: This property can be accessed via an instance object of this class: <ul><li><code>myObject.userName</code></li></ul></li></ul></div></div></div>  </div>
<a name='Examples'></a>
<h2>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Sync Authentication</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">
<p>In your controller call login.</p>
<ul class='nav nav-tabs' id='exI0-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI0-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript


Rho.RhoConnectClient.login('john','password',function(result){
   loginCallback(result);
});
                          </code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby


RhoConnectClient.login(
  @params['login'],
  @params['password'],
  url_for(:action =&gt; :login_callback)
)
                          </code></pre></div></div>
<pre><code>                        When RhoConnectClient.login completes, the callback declared is executed and receives parameters including success or failure and error messages (if any).
</code></pre>
<ul class='nav nav-tabs' id='exI0-S1Tab'><li class="nav-item"><a class="nav-link active" href='#exI0-S1JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI0-S1RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI0-S1JS'><pre class='CodeRay'><code>:::javascript

// Error codes:
// ERR_NONE = 0
// ERR_NETWORK = 1
// ERR_REMOTESERVER = 2
// ERR_RUNTIME = 3
// ERR_UNEXPECTEDSERVERRESPONSE = 4
// ERR_DIFFDOMAINSINSYNCSRC = 5
// ERR_NOSERVERRESPONSE = 6
// ERR_CLIENTISNOTLOGGEDIN = 7
// ERR_CUSTOMSYNCSERVER = 8
// ERR_UNATHORIZED = 9

function loginCallback(result) {
  var errorCode = parseInt(result.error_code);
  var errorMessage = result.error_message;
  if(errorCode === 0 {
    // process success
  } else {
    // process error with errorMessage
  }
}
                            </code></pre></div><div class='tab-pane' id='exI0-S1RUBY'><pre class='CodeRay'><code>:::ruby

# Error codes:
# ERR_NONE = 0
# ERR_NETWORK = 1
# ERR_REMOTESERVER = 2
# ERR_RUNTIME = 3
# ERR_UNEXPECTEDSERVERRESPONSE = 4
# ERR_DIFFDOMAINSINSYNCSRC = 5
# ERR_NOSERVERRESPONSE = 6
# ERR_CLIENTISNOTLOGGEDIN = 7
# ERR_CUSTOMSYNCSERVER = 8
# ERR_UNATHORIZED = 9

def login_callback
  error_code = @params['error_code'].to_i
  if error_code == Rho::RhoError::ERR_NONE
    # run sync if we were successful
    WebView.navigate Rho::RhoConfig.options_path
    RhoConnectClient.doSync
  else
    if error_code == Rho::RhoError::ERR_CUSTOMSYNCSERVER
      @msg = @params['error_message']
    end

    if not @msg or @msg.length == 0
      @msg = Rho::RhoError.new(error_code).message
    end

    WebView.navigate(
      url_for(:action =&gt; :login, :query =&gt; {:msg =&gt; @msg})
    )
  end
end
                            </code></pre></div></div>  </div></div></div></div><a name='e1'></a><div class=' example' id='e1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample1"><strong>Notifications</strong></div><div id="cExample1" class="accordion-body">  <div class="accordion-inner">
<p>First, assign a sync notification for the Account model:</p>
<ul class='nav nav-tabs' id='exI1-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI1-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI1-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI1-S0JS'><pre class='CodeRay'><code>:::javascript

function syncNotify(params) {
  // handle notifications...
}
Rho.RhoConnectClient.setNotification('Account', syncNotify);

                            </code></pre></div><div class='tab-pane' id='exI1-S0RUBY'><pre class='CodeRay'><code>:::ruby

RhoConnectClient.setNotification(
  'Account',
  url_for(:action =&gt; :sync_notify),
  "sync_complete=true"
)
                            </code></pre></div></div>
<p>Which is the same as:</p>
<ul class='nav nav-tabs' id='exI1-S1Tab'><li class="nav-item"><a class="nav-link active" href='#exI1-S1JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI1-S1RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI1-S1JS'><pre class='CodeRay'><code>:::javascript

function syncNotify() {
  // handle notifications...
}
Account.setNotification(syncNotify);

                            </code></pre></div><div class='tab-pane' id='exI1-S1RUBY'><pre class='CodeRay'><code>:::ruby

Account.setNotification(
  url_for(:action =&gt; :sync_notify),
  "sync_complete=true"
)
                            </code></pre></div></div>
<p>You can also set a notification for all models:</p>
<ul class='nav nav-tabs' id='exI1-S2Tab'><li class="nav-item"><a class="nav-link active" href='#exI1-S2JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI1-S2RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI1-S2JS'><pre class='CodeRay'><code>:::javascript

function syncNotify(params) {
  // handle notifications...
}
Rho.RhoConnectClient.setNotification('*', syncNotify);

                            </code></pre></div><div class='tab-pane' id='exI1-S2RUBY'><pre class='CodeRay'><code>:::ruby

RhoConnectClient.setNotification(
  '*',
  url_for(:action =&gt; :sync_notify),
  "sync_complete=true"
)
                            </code></pre></div></div>  </div></div></div></div><a name='e2'></a><div class=' example' id='e2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample2"><strong>Object notifications</strong></div><div id="cExample2" class="accordion-body">  <div class="accordion-inner">
<p>To use object notifications, first set the notification callback in application.rb#initialize.</p>
<ul class='nav nav-tabs' id='exI2-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI2-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI2-S0RUBY'><pre class='CodeRay'><code>:::ruby

class AppApplication &lt; Rho::RhoApplication
    def initialize
        super

        RhoConnectClient.setObjectNotification(
            url_for(
                :controller =&gt; "Product",
                :action =&gt; :sync_object_notify
            )
        )
    end
end
                            </code></pre></div></div>
<p>Next, in your controller action that displays the object(s), add the object notification by passing in a record or collection of records:</p>
<ul class='nav nav-tabs' id='exI2-S1Tab'><li class="nav-item"><a class="nav-link active" href='#exI2-S1JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI2-S1RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI2-S1JS'><pre class='CodeRay'><code>:::javascript

function syncObjectNotified(params) {
  // handle notifications...
}

var product = Product.find('first');

Rho.RhoConnectClient.addObjectNotify('Product', product.id);

                            </code></pre></div><div class='tab-pane' id='exI2-S1RUBY'><pre class='CodeRay'><code>:::ruby

class ProductController &lt; Rho::RhoController
  # GET /Product
  def index
    @product = Product.find(:first)

    RhoConnectClient.addObjectNotify('Product', @product.id)
    render
  end

  # ...

  def sync_object_notified
    # process notification data ...

    # refresh the current page
    WebView.refresh
    # or call System.execute_js to update part of the page
  end
end

                            </code></pre></div></div>  </div></div></div></div><a name='e3'></a><div class=' example' id='e3'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample3"><strong>Handling Errors</strong></div><div id="cExample3" class="accordion-body">  <div class="accordion-inner">
<p>Here we will set a notification and log an error code 1 or ERR_NETWORK:</p>
<ul class='nav nav-tabs' id='exI3-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI3-S0JS' data-toggle='tab'>JavaScript</a></li><li class="nav-item"><a class="nav-link " href='#exI3-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI3-S0JS'><pre class='CodeRay'><code>:::javascript

function syncNotify(result) {
  var errorCode = parseInt(result.error_code);
  var errorMessage = result.error_message;
  if(errorCode === 1) {
    console.log("We received a network error: " + errorMessage);
    return;
  }
}
Rho.RhoConnectClient.setNotification('*', syncNotify);

                            </code></pre></div><div class='tab-pane' id='exI3-S0RUBY'><pre class='CodeRay'><code>:::ruby

RhoConnectClient.setNotification(
  '*',
  url_for(:action =&gt; :sync_notify),
  "sync_complete=true"
)

# In your controller:
def sync_notify
  error_code = @params['error_code'].to_i
  error_message = @params['error_message']
  if error_code == Rho::RhoError::ERR_NETWORK
    puts "We received a network error: " + error_message
  end
end


                            </code></pre></div></div>  </div></div></div></div><a name='e4'></a><div class=' example' id='e4'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample4"><strong>Using search (Ruby Only)</strong></div><div id="cExample4" class="accordion-body">  <div class="accordion-inner">
<p>First, call search from your controller action:</p>
<ul class='nav nav-tabs' id='exI4-S0Tab'><li class="nav-item"><a class="nav-link active" href='#exI4-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI4-S0RUBY'><pre class='CodeRay'><code>:::ruby

def search
  page = @params['page'] || 0
  page_size = @params['page_size'] || 10
  RhoConnectClient.search(
    {
      'Contact',
      :from =&gt; 'search',
      :search_params =&gt; {
        :FirstName =&gt; @params['FirstName'],
        :LastName =&gt; @params['LastName'],
        :Company =&gt; @params['Company']
      },
      :offset =&gt; page * page_size,
      :max_results =&gt; page_size
    }
    url_for(:action =&gt; :search_callback)
  )
  render :action =&gt; :search_wait
end

                            </code></pre></div></div>
<p>The <code>search_params</code> will be forwarded to your callback so you can update the view with the results:</p>
<ul class='nav nav-tabs' id='exI4-S1Tab'><li class="nav-item"><a class="nav-link active" href='#exI4-S1RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content border border-top-0 mb-3 p-3'><div class='tab-pane active show' id='exI4-S1RUBY'><pre class='CodeRay'><code>:::ruby

def search_callback
  status = @params["status"]
  if (status and status == "ok")
  WebView.navigate(
    url_for(
      :action =&gt; :show_page,
      :query =&gt; @params['search_params']
    )
  )
  else
    render :action =&gt; :search_error
  end
end

def show_page
  @contacts = Contact.find(
    :all,
    :conditions =&gt; {
    {
      :func =&gt; 'LOWER',
      :name =&gt; 'FirstName',
      :op =&gt; 'LIKE'
    } =&gt; @params[:FirstName],
    {
      :func =&gt; 'LOWER',
      :name=&gt;'LastName',
      :op=&gt;'LIKE'
    } =&gt; @params[:LastName],
    {
      :func=&gt;'LOWER',
      :name=&gt;'Company',
      :op=&gt;'LIKE'
    } =&gt; @params[:Company],
    },
    :op =&gt; 'OR',
    :select =&gt; ['FirstName','LastName', 'Company'],
    :per_page =&gt; page_size,
    :offset =&gt; page * page_size
  )
  render :action =&gt; :show_page
end

                            </code></pre></div></div>  </div></div></div></div>
<a name='Remarks'></a>
<h2>Remarks</h2>

<a name='r0'></a><div class=' remarks' id='r0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark0"><strong>Notification Callback Parameters</strong></div><div id="cRemark0" class="accordion-body">  <div class="accordion-inner"><p>When the notification is called, it will receive a variable called @params, just like a normal Rhodes controller action.</p>

<h2>Common Parameters</h2>

<p>These parameters are included in all notifications.</p>

<ul>
<li>source_id - The id of the current model that is synchronizing.</li>
<li>source_name - Name of the model (i.e. &ldquo;Product&rdquo;)</li>
<li>sync_type - Type of sync used for this model: &ldquo;incremental&rdquo; or &ldquo;bulk&rdquo;</li>
<li>status - Status of the current sync process. See below for the possible values:</li>
</ul>


<p>In the following sections we cover the different status values and parameters available with each status.</p>

<h3>status: &ldquo;in_progress&rdquo; - incremental sync progress</h3>

<ul>
<li>total_count - Total number of records that exist for this RhoConnect source.</li>
<li>processed_count - Number of records included in the sync page.</li>
<li>cumulative_count - Number of records the SyncEngine has processed so far for this source.</li>
</ul>


<h3>status: &ldquo;in_progress&rdquo; - bulk sync progress</h3>

<ul>
<li><p>bulk_status - The state of the bulk sync process:</p>

<ul>
<li>start - Bulk sync has started for a specific partition</li>
<li>download - Bulk sync file download has started</li>
<li>change_db - New bulk sync database change has started</li>
<li>blobs - Bulk sync blob files have started to download</li>
<li>ok - Current partition has completed</li>
<li>complete - All partitions have completed</li>
</ul>
</li>
<li><p>partition - Current bulk sync partition.</p></li>
</ul>


<h3>status: &ldquo;error&rdquo;</h3>

<ul>
<li>error_code - HTTP response code of the RhoConnect server error: 401, 500, 404, etc.</li>
<li>error_message - Response body (if any)</li>
<li>server_errors - Hash of Type objects of RhoConnect adapter error (if exists):

<ul>
<li>login-error - An error in adapter login method</li>
<li>query-error - An error in adapter query method</li>
<li>create-error - An error in adapter create method</li>
<li>update-error - An error in adapter update method</li>
<li>delete-error - An error in adapter delete method</li>
<li>logoff-error - An error in adapter logoff method</li>
</ul>
</li>
</ul>


<p>Each error contains a &lsquo;message&rsquo; key with the error message.</p>

<p>Ruby Example:
    :::ruby
    @params[&ldquo;server_errors&rdquo;][&ldquo;query-error&rdquo;][&ldquo;message&rdquo;]
    #=> &ldquo;Error connecting to backend server: http://rhostore.herokuapp.com&rdquo;</p>

<p>JavaScript Example:
    :::javascript
    params.server_errors[&ldquo;query-error&rdquo;].message
    //=> &ldquo;Error connecting to backend server: http://rhostore.herokuapp.com&rdquo;</p>

<h4>Handling &lsquo;create-error&rsquo;</h4>

<p>&ldquo;create-error&rdquo; is a unique situation that needs to be handled in your sync callback. See <code>RhoConnectClient.onSyncCreateError()</code> for more details.</p>

<h3>status: &ldquo;complete&rdquo;</h3>

<p>This status returns only when the sync run is complete (all partitions are done synchronizing).</p>

<h3>status: &ldquo;schema-changed&rdquo;</h3>

<p>This is present if a FixedSchema model has changed during the current sync run. A new bulk sync run should be triggered (by setting bulksyncState) and the user should be alerted in the UI.</p>
  </div></div></div></div><a name='r1'></a><div class=' remarks' id='r1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark1"><strong>Backround Sync on iOS</strong></div><div id="cRemark1" class="accordion-body">  <div class="accordion-inner"><p>On iOS, if the application is backgrounded, it will be suspended. This also means if a current sync is in progress, it will immediately terminate. To prevent this behavior, set &lsquo;finish_sync_in_background&rsquo; to &lsquo;1&rsquo; in rhoconfig.txt. When set to &lsquo;1&rsquo;, the RhoConnectClient will attempt to finish synchronization before the application fully suspends.</p>
  </div></div></div></div></div>