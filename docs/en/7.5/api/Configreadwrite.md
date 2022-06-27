#Configreadwrite
<div id="apibody" class="mt-3">
<p>The Configreadwrite API provides access to read and write to temporary config files in Android platform. It also provides capabilities to update the user configured attribute value in actual config file.</p>
<h2>Enabling the API</h2>

<p>In order to use this API you must include the following extension in your <code>build.yml</code>.
    :::ruby
    extensions: [&ldquo;configreadwrite&rdquo;]</p>

<p>The <code>configreadwrite</code> extension is also included automatically if you specify the following in your <code>build.yml</code>
    :::ruby
    app_type: &ldquo;rhoelements&rdquo;</p>

<p>NOTE: If you are building a Windows Mobile or Windows CE app with this API, you must set your app_type as &ldquo;rhoelements&rdquo; in your build.yml as shown <a href="../guide/build_config#other-build-time-settings">here</a>.</p>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>

</div>