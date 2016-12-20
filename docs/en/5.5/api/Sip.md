#Sip
<div class="btn-group"><a href="#Methods" class="btn"><i class="icon-cog"></i> Methods<sup>&nbsp;2</sub></a><a class="btn dropdown-toggle" data-toggle="dropdown" data-target="#" href="#Methods" >  <span class="caret"></span>&nbsp;</a><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li class="disabled"><a tabindex="-1" href="#"><b><i>Methods - Class</i></b></a><li><a href="#mhide" data-target="cMethodhide" class="autouncollapse">hide</a></li><li><a href="#mshow" data-target="cMethodshow" class="autouncollapse">show</a></li></li></ul></div><div class="btn-group"><a href="#Remarks" class="btn"><i class="icon-warning-sign"></i> Remarks<sup>&nbsp;2</sup></a><button href="#" class="btn dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span>&nbsp;</button><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li><a href="#r0" data-target="rRemark0" class="autouncollapse">Focus on calling show method</a></li><li><a href="#r1" data-target="rRemark1" class="autouncollapse">Software keyboard behavior after hide method</a></li></ul></div><div class="btn-group pull-right"><button class="btn dropdown-toggle" id="apiFilterBtn" data-toggle="dropdown" href="#" title="Filter Properties and Methods"><i class="icon-filter "></i>Show</button><select id="apiFilter" class="dropdown-menu apiFilter"><option value="all">All</option><option value="js">JavaScript</option><option value="ruby">Ruby</option><option value="android">Android</option><option value="ios">iOS</option><option value="wm">Windows Mobile</option><option value="wp8">Windows Phone 8</option><option value="w32">Windows Desktop</option><option value="msi">MSI Only</option></select></div><div  id="apibody" style="overflow:auto;padding-right: 5px;">
<p>The SIP API controls whether the default software input panel (SIP) is displayed on the Android Device.</p>
<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code></p>

<pre><code>:::ruby
extensions: ["sip"]
</code></pre>


<a name='Methods'></a>
<h2><i class='icon-cog'></i>Methods</h2>

<div class="accordion" id="accordion"><a name ='mhide'/><div class=' method  js ruby android' id='mhide'><h3><strong  >hide</strong><span style='font-size:.7em;font-weight:normal;'>()</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mhide1" data-toggle="tab">Description</a></li><li ><a href="#mhide4" data-toggle="tab">Return</a></li><li ><a href="#mhide6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-hide'><div class="tab-pane fade active in" id="mhide1"><p>Hides the default software keyboard.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"></p></div></p></div><div class="tab-pane fade" id="mhide2"></div><div class="tab-pane fade" id="mhide3"></div><div class="tab-pane fade" id="mhide4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mhide6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Sip.hide()</code> </li><li>Ruby: <code>Rho::Sip.hide()</code></li></ul></li></ul></div></div></div>  </div><a name ='mshow'/><div class=' method  js ruby android' id='mshow'><h3><strong  >show</strong><span style='font-size:.7em;font-weight:normal;'>()</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mshow1" data-toggle="tab">Description</a></li><li ><a href="#mshow4" data-toggle="tab">Return</a></li><li ><a href="#mshow6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-show'><div class="tab-pane fade active in" id="mshow1"><p>Displays the default software keyboard on the device.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"></p></div></p></div><div class="tab-pane fade" id="mshow2"></div><div class="tab-pane fade" id="mshow3"></div><div class="tab-pane fade" id="mshow4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mshow6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-book"></i>Class Method: This method can only be accessed via the API class object. <ul><li>JavaScript: <code>Rho.Sip.show()</code> </li><li>Ruby: <code>Rho::Sip.show()</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Remarks'></a>
<h2><i class='icon-warning-sign'></i>Remarks</h2>

<a name='r0'></a><div class=' remarks' id='r0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark0"><strong>Focus on calling show method</strong></div><div id="cRemark0" class="accordion-body">  <div class="accordion-inner"><p>Focus on input field will not be reflected automatically when show method of SIP module is called.</p>
  </div></div></div></div><a name='r1'></a><div class=' remarks' id='r1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"  href="#cRemark1"><strong>Software keyboard behavior after hide method</strong></div><div id="cRemark1" class="accordion-body">  <div class="accordion-inner"><p>The hide method does not permanently disable the SIP, but simply hides it until the focus returns to a text input field, which causes it to reappear.</p>
  </div></div></div></div></div>