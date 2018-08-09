Converting a Rhodes Application to JQueryMobile
========
This tutorial will guide you through removing the JQTouch styling that ships with Rhodes applications, adding JQuery Mobile to your Rhodes framework, and using JQuery Mobile in your Rhodes application.

Source Code
-----------
The source code for this example is located here.

 * [JQuery Mobile sample](https://github.com/rhomobile/webinar-samples/tree/master/jqmobilestore)

Webinar Video
-------------
[Vimeo link](http://vimeo.com/19954508)

Pre-requisite Reading
---------------------
 * [RhoStudio Tutorial](rhostudio.tutorial)

## Setup

This tutorial assumes that you know how to create and edit a Rhodes application. It also assumes that you have generated a Rhodes store application and added a product to it (although that is not strictly necessary, the store code shown in this tutorial is only for comparison purposes to the new JQuery Mobile code). If you do not know how to do this, see [Pre-requisite Reading]().

## Creating a Rhodes Store Application and the jqmobilestore Example

If you do not have one, you should consider generating a Rhodes store application, and adding a product to it. Most of the code in this tutorial is from the JQuery Mobile example, but some code is from a Rhodes store sample for comparison. The Rhodes Tutorial shows how to do create a store application. The store application is the sample used in many of the Rhomobile webinars. If you create or have a store application, run it and create a product model if it does not have one.

The jqmobilestore application in the sample source code for this tutorial was also generated with the Rhodes generator. Its code has been modified to work with JQuery Mobile. This tutorial points out how jqmobilestore has been modified.

## Installing the JQuery Mobile Files into Your Project

You will need JavaScript, CSS, and image files from the JQuery Mobile website. To get the files, go to jquerymobile.com/download, and download the zip file that contains the JQuery Mobile JavaScript, CSS, and images. The file is named similar to jquery-mobile-1.0a4.1.zip.

Unzip the file. You will see the JavaScript and CSS files, and an images folder. In your jqmobilestore project (assuming you are creating one from scratch, the source code sample project already has this done), rename or delete the images folder in app/public. Then copy the files and the images folder from the JQuery Mobile download into the app/public folder.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-public-files.png" alt="jquerymobile public files" />

You also need the JavaScript JQuery code. The URL for this code is on the jquerymobile.com/download page, listed under Copy-and-Paste Snippet. The Copy-and-Paste Snippet looks similar to this:

	:::term
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.5.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.js"></script>

The URL to the JQuery JavaScript is similar to http://code.jquery.com/jquery-1.5.2.min.js. Use this URL to navigate to the JQuery JavaScript, download that JavaScript file, and put it into your app/public folder. 

## Modifying a Rhodes Project for JQuery Mobile

To use JQuery Mobile in your Rhodes project, you must change several views on your project. Rhodes files are generated to use JQTouch styling. You will replace that with JQuery Mobile instead.

The changes you perform on the generated Rhodes projects to prepare them for JQuery Mobile are:

* Delete the checks for the various platforms.
* Include the stylesheets for JQuery Mobile.
* Wrap each erb file in a data-role div.
* Wrap content and listviews in data-role.
* When data or buttons are arranged left-to-right, put them in a grid.
* Put headers and top-of-page toolbars in the same section.
* You can put icons on the buttons with data-icon.

## Modifying the Layout File to Include JQuery Mobile

In the layout file, you will modify to include the JQuery Mobile files, and you will not need the checks for platforms.

### layout.erb for generated Rhodes

In your Rhodes store project, open app/layout.erb. You will see the default code for the JQTouch layouts that was created when this Rhodes application was generated. The code has checks for Blackberry, Android, Windows Mobile, and so on.

	:::html
	<head>
	  <title>Store1</title>
	    
	    <% is_bb6 = System::get_property('platform') == 'Blackberry' && (System::get_property('os_version') =~ /^6\.0/) %>
	
	    <% if is_bb6 %>    
	        <meta name="viewport" content="width=device-width; height=device-height; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
	    <% else %>        
	        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>        
	    <% end %>
    
	    <% if System::get_property('platform') == 'APPLE' || System::get_property('platform') == 'ANDROID' || is_bb6 || System::get_property('webview_framework') =~ /^WEBKIT/ %>
	        <script src="/public/jqtouch/jquery.1.3.2.min.js" type="text/javascript"></script>
	        <script src="/public/jqtouch/jqtouch.js" type="text/javascript"></script>
	        <link href="/public/jqtouch/jqtouch.css" type="text/css" rel="stylesheet"/>
	        <% if System::get_property('platform') == 'APPLE' %>
	            <link href="/public/jqtouch/jqtouch-iphone.css" type="text/css" rel="stylesheet"/>
	        <% end %>
	        <script>jQT = $.jQTouch();</script>
	    <% end %>
	
	    <% if System::get_property('platform') == 'APPLE' %>
	        <link href="/public/css/iphone.css" type="text/css" rel="stylesheet"/>
	    <% elsif System::get_property('platform') == 'ANDROID' %>
	        <link href="/public/css/android.css" type="text/css" rel="stylesheet"/>
	    <% elsif is_bb6 %>
	        <link href="/public/css/android.css" type="text/css" rel="stylesheet"/>
	    <% elsif System::get_property('platform') == 'Blackberry' %>
	        <link href="/public/css/blackberry.css" type="text/css" rel="stylesheet"/>
	    <% elsif System::get_property('platform') == 'WP7' %>
	        <script src="/public/js/wp7.js" type="text/javascript"></script>
		<link href="/public/css/windows_mobile.css" type="text/css" rel="stylesheet"/>
	    <% elsif System::get_property('webview_framework') =~ /^WEBKIT/ %>
	        <link href="/public/css/android.css" type="text/css" rel="stylesheet"/>
	    <% else %>        
		<link href="/public/css/windows_mobile.css" type="text/css" rel="stylesheet"/>
	    <% end %>
	</head>
	
	<% if System::get_property('platform') == 'WP7' %>
		<body onload="wp7_change_forms_action_to_get()">
	<% else %>
		<body>
	<% end %>
	    <%= @content %>
	</body>

### layout.erb: JQuery Mobile

When you use JQuery Mobile, you remove those checks that were generated in app/layout.erb. Instead, you include the stylesheets that were downloaded with JQuery Mobile. 

The following JQuery Mobile website shows how to configure the defaults.
http://jquerymobile.com/demos/1.0a4.1/#docs/api/globalconfig.html

The code shown below, the app/index.erb for the sample jqmobilestore project, is modified to have the old checks removed, and the JQuery Mobile stylesheets included. In this tutorial, comments are added to the code.

It points to the JQuery Mobile CSS file and the JQuery JavaScript, and it changes the loading message to false because we do not want the loading screen to flash between transitions.

	:::html
	<head> 
		<title>Store</title> 
		
		<!-- Point to the CSS file in the public folder for the jquery -->
		<link rel="stylesheet" href="/public/jquery.mobile-1.0a3.min.css" />
		<!-- You also need the JQuery JavaScript file -->
		<script type="text/javascript" src="/public/jquery-1.5.min.js"></script>
		
		<!-- Modify some of the defaults for jquery -->
		<script type="text/javascript">
		
		<!-- Code taken from the jquery website for setting defaults, where we extend .mobile. -->
		$(document).bind("mobileinit", function(){
		  $.extend(  $.mobile , {
		    <!-- change the loading message to false -->
		    loadingMessage: false
		  });
		});
		<!-- finally, we need the jquery.mobile JavaScript. -->
		</script>	<script type="text/javascript" src="/public/jquery.mobile-1.0a3.min.js"></script>
	
	</head> 
	<body>
	    <%= @content %>
	</body>

## Modifying The Main Index File To Data-Role Wrap And To Grid The Buttons

In app/index.erb, you will add data-role wrappers and you will put the buttons into a grid.

### app/index.erb: generated Rhodes

The app/index.erb file in the Rhodes-generated Store project shows the following code. Comments have been added for this tutorial.

Note that there are separate divs for the title and the toolbar. The buttons are done with left item and right item.

	:::html
	<!-- jqtouch: a separate section for the title -->
	<div class="pageTitle">
	  <h1>Store1</h1>
	</div>
	
	<!-- jqtouch: a separate section for the toolbar -->
	<div class="toolbar">
	  <!-- buttons are done with left item and right item -->
	  <% if SyncEngine::logged_in > 0 %>
	      <div class="leftItem blueButton">
	        <a href="<%= url_for :controller => :Settings, :action => :do_sync %>">Sync</a>
	      </div>
	      <div class="rightItem regularButton">
	        <a href="<%= url_for :controller => :Settings, :action => :logout %>">Logout</a>
	      </div>
	  <% else %>
	      <div class="rightItem regularButton">
	        <a href="<%= url_for :controller => :Settings, :action => :login %>">Login</a>
	      </div>
	  <% end %>
	</div>
	
	<div class="content">
	  <ul>
	    <li>
	      <a href="#"><span class="title">Add link here...</span><span class="disclosure_indicator"/></a>
	    </li>
	  </ul>
	</div>

### app/index.erb: JQuery Mobile

The app/index.erb for the sample jqmobilestore project has been modified to work for JQuery Mobile. One of the main differences from the generated Rhodes code is that the headers and toolbar are in the same section. Also, the entire page must be wrapped in a data-role div that is set to page; this must be done for every erb file in a JQuery Mobile project. 

Note that the buttons now use a data-icon to show a check and delete symbol.

Comments have been added for this tutorial.

	:::html
	<!-- For JQuery Mobile, every erb file must be wrapped in a div that has data-role set to page. -->
	<div data-role="page">

	<!-- For JQuery Mobile, title and toolbar are in the same section, wrapped in a data-role div set to header. Also disable the automatic back button because we do not want a back button on our main page. -->
	<div data-role="header"  data-backbtn="false">
	  <!-- the title is here -->
	  <h1>Jqmobilestore</h1>
	
	  <% if SyncEngine::logged_in > 0 %>
	  <!-- two links if we are logged in, two buttons for check and delete on left and right -->
	  <!-- in the generated code, the links were wrapped in divs; in JQuery Mobile, those divs are not required, we just have the tags. The first tag is put on the left and second tag is put on the right. -->
	      <a data-icon="check" href="<%= url_for :controller => :Settings, :action => :do_sync %>">Sync</a>
	      <a data-icon="delete" href="<%= url_for :controller => :Settings, :action => :logout %>">Logout</a>
	  <% else %>
	  <!-- one link if we are logged out, a login button on the right -->
	      <a data-icon="gear"  class="ui-btn-right" href="<%= url_for :controller => :Settings, :action => :login %>">Login</a>
	  <% end %>
	</div>
	
	<div data-role="content">
	  <ul data-role="listview">
	    <li>
	      <a href="/app/Product"><span class="title">Products</span></a>
	    </li>
	  </ul>
	</div>
	
	</div><!-- /page -->

In the content section, the changes for JQuery Mobile are minor. You need to wrap it in a data-role div named content, replacing the class div named content. And you also need a data-role listview for the list. You can remove the disclosure_indicator span that is in the generated code. You do not have to remove it, but since there is no style required in JQuery Mobile, removing that span tag makes for cleaner HTML.

## Test-Running The JQuery Mobile Project

Now we can run the jqmobilestore project in a simulator to see what it looks like. From the command line, navigate to the jqmobilestore folder, then run it. For example, you can run it in an iPhone simulator.

	:::term
	$ rake run:iphone

The project can take a little time to build; when the build completes, you will see the simulator.

Note: There are some issues running this on Android, so the tutorial uses an iPhone example.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-index-iphone.png" alt="jquerymobile iPhone index page" />

Compare what you see in the simulator to the app/index.erb code for jqmobilestore. You see the title for Jqmobilestore, and you see the link for the Login button with the gear icon (from data-icon). Because we are logged out in the simulator, there is one button for Login. And we have a link for the Product.

## Modifying the Product Page to Data-Role Wrap

In app/Product/index.erb, you will add data-role wrappers and you have the header and the buttons in the same section.

### app/Product/index.erb: generated Rhodes

Here is the app/Product/index.erb code for the generated store project. Note that it has the usual separate div tag for the header and the toolbar.

	:::html
	<div class="pageTitle">
	  <h1>Products</h1>
	</div>
	
	<div class="toolbar">
	  <div class="leftItem regularButton">
	    <a href="<%= Rho::RhoConfig.start_path %>">Home</a>
	  </div>
	  <div class="rightItem regularButton">
	    <a class="button" href="<%= url_for :action => :new %>">New</a>
	  </div>
	</div>
	
	<div class="content">
	  <ul>
	    <% @products.each do |product| %>
	    
	        <li>
	          <a href="<%= url_for :action => :show, :id => product.object %>">
	            <span class="title"><%= product.name %></span><span class="disclosure_indicator"></span>
	          </a>
	        </li>
	    
	    <% end %>
	  </ul>
	</div>

### app/Product/index.erb: JQuery Mobile

The Product index page for jqmobilestore, app/Product/index.erb, has similar changes to the jqmobilestore app/index.erb. Wrap the entire page in a data-role div named page. The header is wrapped in a data-role div named header, and the buttons are contained in that div.

	:::html
	<!-- div data-role page replaces div class pageTitle and warps the entire page -->
	<div data-role="page">
	
	<!-- the h1 header and the buttons are inside a data-role div named header -->
	<div data-role="header">
	  <h1>Products</h1>
	  <!-- back button for home, checkbox for new -->
	  <a data-icon="back"  href="<%= Rho::RhoConfig.start_path %>">Home</a>
	  <a data-icon="check" href="<%= url_for :action => :new %>">New</a>
	</div>
	
	<!-- Add div data-roles for the content and listview. The list item inside is the same as for the generated Rhodes -->
	<div data-role="content">
	  <ul  data-role="listview">
	    <% @products.each do |product| %>
	    
	        <li>
	          <a href="<%= url_for :action => :show, :id => product.object %>">
 	           <span class="title"><%= product.name %></span></span>
	          </a>
	        </li>
	    
	    <% end %>
	  </ul>
	</div>
	
	</div>

In the simulator running the jqmobilestore example, click on the Products link to see this. You will see the new button and home button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product.png" alt="jquerymobile iPhone product" />

### Removing the Bottom Toolbar

This page has a bottom toolbar. If you want to remove it, open app/application.rb. You will see a line that will remove the default toolbar if you uncomment it. Leave the toolbar in for now.

	:::ruby
	#To remove default toolbar uncomment next line:
	#@@toolbar = nil

## Modifying the New Product Page

In app/Product/new.erb, you will add data-role wrappers.

### app/Product/new.erb: generated Rhodes

The app/Product/new.erb file is the page where we add a new product. Here is the original Rhodes-generated code for app/Product/new.erb.

	:::html
	<div class="pageTitle">
	  <h1>New <%= @product.title %></h1>
	</div>
	
	<div class="toolbar">
	  <div class="leftItem backButton">
	    <a class="cancel" href="<%= url_for :action => :index %>">Cancel</a>
	  </div>
	</div>
	
	<div class="content">
	  <form method="POST" action="<%= url_for :action => :create %>">
	    <input type="hidden" name="id" value="<%= @product.object %>"/>
	    <ul>
	      
          <li>
            <label for="product[name]" class="fieldLabel">Name</label>
            <input type="text" name="product[name]" <%=
            placeholder("Name") %> />
          </li>
          
          <!-- rest of product attribute list items go here -->
      
	    </ul>
	    <input type="submit" class="standardButton" value="Create"/>
	  </form>
	</div>

### app/Product/new.erb: JQuery Mobile

In the app/Product/new.erb file for the jqmobilestore project, again, the entire page is wrapped in a data-role div named page. The header is wrapped in a data-role div named header, similar for the content. And the listview for product attributes is wrapped in a data-role. The form and input tags did not change. The list items for the input form did not change.

	:::html
	<!-- wrap the entire page -->
	<div data-role="page">
	
	<!-- wrap the header -->
	<div data-role="header">
	  <h1>New <%= @product.title %></h1>
	    <a class="cancel" href="<%= url_for :action => :index %>">Cancel</a>
	</div>
	
	<!-- wrapped in a data-role div named content, replaces the content class in the generated code -->
	<div data-role="content">
	  <form method="post" action="<%= url_for :action => :create %>">
	    <input type="hidden" name="id" value="<%= @product.object %>"/>
	    <!-- data-role added to the listview -->
	    <ul data-role="listview">
	      
	          <li>
	          <!-- list items unchanged from original Rhodes generated code -->
	          <!-- Each input field has a label and placeholder -->
	            <label for="product[name]" class="fieldLabel">Name</label>
	            <input type="text" name="product[name]" <%=
	            placeholder("Name") %> />
	          </li>
	          
	          <!-- rest of product attribute list items -->
	
	    </ul>
			<br/>
			<button type="submit" data-theme="a" name="submit" value="submit-value" class="ui-btn-hidden">Submit</button>
	  </form>
	</div>

### Creating a Submit Button

At the bottom of the page, jqmobilestore uses a button to replace a standard input form for input submit in the generated code. The data-theme makes the button darker. The break sets the button off from the list items.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product-new.png" alt="jquerymobile iPhone product new" />

Notice how the list items appear on the page. Each has a label and a placeholder inside the input field. You can change or remove the label or placeholder in the code as you see fit.

Fill in the fields for a product and click the Submit button.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product-new2.png" alt="jquerymobile iPhone product new filled in" />

## Modifying the Show Product Page

In app/Product/show.erb, you will add data-role wrappers and you have the header and the buttons in the same section.

### app/Product/show.erb: generated Rhodes

Like app/Product/new.erb, the app/Product/show.erb file also has a listview for the attributes in the product. Here is a code sample from the Rhodes-generated app/Product/show.erb. Its list items simply use two class divs for item label and item value.

	:::html
	<div class="toolbar">
	  <div class="leftItem backButton">
	    <a href="<%= url_for :action => :index %>">Back</a>
	  </div>
	  <div class="rightItem regularButton">
	    <a href="<%= url_for :action => :edit, :id => @product.object %>">Edit</a>
	  </div>
	</div>
	
	<div class="content">
	  <ul>    
        <li>
          <div class="itemLabel">Name</div>
          <div class="itemValue"><%= @product.name %></div>
        </li>
    
	    <!-- rest of product attribute list items go here -->
    
	  </ul>
	</div>

### app/Product/show.erb: JQuery Mobile

In the simulator for the jqmobilestore project, on the Product page, click on the product you just created to bring it up on the Show page for that product.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product-show.png" alt="jquerymobile iPhone product show" /> 

For JQuery Mobile, the jqmobilestore project app/Product/show.erb has the usual changes: wrap the entire page in a data-role div named page, and wrap the header in a data-role div named header.

There are two links for the header, to which JQuery Mobile has data-icons for the back and edit buttons.

The list is wrapped in the usual data-role div named content, and the list has the usual data-role named listview. To position the list items in a left-to-right manner, JQuery Mobile has to use grid styles. Inside each list item, we have a class called ui-grid-a. On the left for the name, we have a ui-block-a class div, and on the right for the value we have a ui-block-b class div.

	:::html
	<!-- wrap the page in data-role -->
	<div data-role="page"  data-cache="never">
	
	<!-- wrap the header in data-role -->
	<div data-role="header">
	  <h1><%= @product.name %></h1>
	    <!-- Icons for back and check are added to the buttons -->
		<a data-icon="back"  href="<%= url_for :action => :index %>">Back</a>
	  	<a data-icon="check" class="ui-btn-right" href="<%= url_for :action => :edit, :id => @product.object %>">Edit</a>
	</div>
	
	<!-- Wrap content in data-role, add data-role to listview -->
	<div data-role="content">
		<ul data-role="listview" >
			<li>
				<div class="ui-grid-a">
				  <!-- Grid: name on left, value on right -->
		          <div class="ui-block-a"><b>Name</b></div>
		          <div class="ui-block-b"><%= @product.name %></div>
				</div>
			</li>
			
	        <!-- rest of product attribute list items -->
	        
		</ul>
	</div>
	</div>

## Modifying the Edit Product Page

In the jqmobilestore simulator, click the Edit button to go to the Edit page.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product-edit.png" alt="jquerymobile iPhone product edit" /> 

### app/Product/edit.erb: JQuery Mobile

The app/Product/edit.erb page is wrapped in the usual data-role div. As with the Show Product page, the header is wrapped in a data-role div, and the two links for the header have JQuery Mobile data-icons for back and delete.

The list is wrapped in a data-role div. As with the New Product page, the list items are unchanged. And the Update button is changed in the same way as the Submit button on the New Product page: a data-theme makes the button darker, and a break sets the button off from the list items.

	:::html
	<!-- wrap the page in data-role -->
	<div data-role="page">
	
	<!-- wrap the header in data-role -->
	<div data-role="header">
	  <h1>Edit <%= @product.title %></h1>
	    <!-- Icons for back and delete are added to the buttons -->
	  	<a data-icon="back"  href="<%= url_for :action => :show, :id => @product.object %>">Back</a>
	    <a data-icon="delete" href="<%= url_for :action => :delete, :id => @product.object %>">Delete</a>
	</div>
	
	<!-- Wrap content in data-role -->
	<div data-role="content">
	  <form method="post" action="<%= url_for :action => :update %>">
	    <input type="hidden" name="id" value="<%= @product.object %>"/>
	    <ul data-role="listview">
	      
	      <!-- list items unchanged from original Rhodes generated code -->
          <li>
            <label for="product[name]" class="fieldLabel">Name</label>
            <input type="text" name="product[name]" value="<%= @product.name %>" <%= placeholder( "Name" ) %> />
          </li>
      
		  <!-- rest of product attribute list items -->
      
	    </ul>
	    
		<br/>
		<button type="submit" data-theme="a" name="submit" value="submit-value" class="ui-btn-hidden">Update</button>
	  </form>
	</div>
	
	</div>

## Modifying the Syncing Data Pages

When you sync data, there are other pages the you need to modify from the Rhodes generated pages for JQuery Mobile. In the jqmobilestore simulator, click the Home button. Then click the Login button.

## Modifying the Login Page

You login to the sync server using the Login page, app/Settings/login.erb. 

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-login.png" alt="jquerymobile iPhone login" /> 

### app/Settings/login.erb: JQuery Mobile

There are the usual changes to that page: wrap the page in a data-role div, wrap the header in a data-role div, replace the content class with a data-role wrapper, wrap the list in a data-role wrapper, and do the Submit button at the bottom of the page.

	:::html
	<div data-role="page">
	
	<div data-role="header">
	  <h1>Login</h1>
	</div>
	
	<div data-role="content" >
	  <form method="post" action="<%= url_for :action => :do_login %>">
	    <% if @msg %>
	        <p style="color: red"><%= @msg %></p>
	    <% end %>
	    <ul data-role="listview">
	      <li>
	        <label for="login" class="fieldLabel">Login</label>
	        <input type="text" name="login" <%= placeholder("Login") %> />
	      </li>
	
	      <li>
	        <label for="password" class="fieldLabel">Password</label>
	        <input type="password" name="password" <%= placeholder("Password") %> />
	      </li>
	    </ul>
		<br>
		<button type="submit" data-theme="a" name="submit" value="submit-value" class="ui-btn-hidden">Login</button>
	  </form>
	</div>
	
	</div>

## Modifying the Wait Page

When a field is submitted on the Login page, in the controller, app/Settings/controller.rb, it is submitted to the action do_login. If the login is successful, it redirects to a wait page, app/Settings/wait.erb. So that wait page must be converted for JQuery Mobile.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-wait.png" alt="jquerymobile iPhone wait" />

### app/Settings/wait.rb: generated Rhodes

Here is the wait page for the Rhodes generated code.

	:::html
	<div class="pageTitle">
	  <h1>Wait</h1>
	</div>
	
	<div class="toolbar"> </div>

### app/Settings/wait.rb: JQuery Mobile

And here is the wait page rewritten for jqmobilestore. The page is wrapped in a data-role div, and so is the header. We also added and data-role wrapped our content.

	:::html
	<div data-role="page">
	
	<div data-role="header">
	  <h1>Wait</h1>
	</div>
	
	<div data-role="content" >
	</div>
	</div>

### Modifying the Settings Page

Once you are logged in, you will see the Settings index page, app/Settings/index.erb.

### app/Settings/index.erb: generated Rhodes

Here is the code from the Rhodes-generated app/Settings/index.erb file.

	:::html
	<div class="pageTitle">
	  <h1>Settings</h1>
	</div>
	
	<div class="toolbar">
	</div>
	
	<div class="content">
	  <ul>
	    <% if @msg %>
	        <li style="color: red; text-align: center"><%= @msg %></li>
	    <% end %>
	   <li>
	      <div class="itemLabel">
	        <span class="title">Client ID:</span>
	      </div>
	      <div class="itemValue">
	        <span class="clientID"><%= Rhom::Rhom::client_id %></span>
	      </div>
	    </li>
	    <li><a href="<%= url_for :action => :reset %>">Reset Database</a></li>
	    <li><a href="<%= url_for :action => :do_sync %>">Perform Sync</a></li>
	    <% if SyncEngine::logged_in > 0 %>
	        <li><a href="<%= url_for :action => :logout %>">Logout</a></li>
	    <% else %>
	        <li><a href="<%= url_for :action => :login %>">Login</a></li>
	    <% end %>
	  </ul>
	</div>

### app/Settings/index.erb: JQuery Mobile

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-settings.png" alt="jquerymobile iPhone settings" />

The JQuery Mobile changes for the jqmobilestore app/Settings/index.erb file are the usual for wrapping the entire page in a data-role div, and wrapping the header in a data-role div.

As with the Show Product page, to position the Client ID list items, JQuery Mobile uses grid styles. It has a class called ui-grid-a, and two ui-block-a class divs for the Client ID name and value. The remaining list items are unchanged.

	:::html
	<!-- wrap the page -->
	<div data-role="page">
	
	<!-- wrap the header -->
	<div data-role="header">
	  <h1>Settings</h1>
	</div>
	
	<!-- wrap the content -->
	<div data-role="content">
	  <!-- put a data-role in the listview -->
	  <ul data-role="listview" >
	    <% if @msg %>
	        <li style="color: red; text-align: center"><%= @msg %></li>
	    <% end %>
	   <li>
	     <!-- Use a grid for the Client ID list item -->
		 <div class="ui-grid-a">
           <div class="ui-block-a">Client ID:</div>
           <div class="ui-block-a"><%= Rhom::Rhom::client_id %></div>
	     </div>
       </li>
	   <li><a href="<%= url_for :action => :reset %>">Reset Database</a></li>
       <li><a href="<%= url_for :action => :do_sync %>">Perform Sync</a></li>
	    <% if SyncEngine::logged_in > 0 %>
	        <li><a href="<%= url_for :action => :logout %>">Logout</a></li>
	    <% else %>
	        <li><a href="<%= url_for :action => :login %>">Login</a></li>
	    <% end %>
	  </ul>
	</div>
	</div>

To sync, click Perform Sync.

## Seeing a Sync

After you have synced, you can click Home, then click Products. You will see whatever products were on the sync server. Note that you need to reference a valid sync server in app/rhoconfig.txt.

	:::term
	# sync server url, typically this will look like 'http://<hostname>:<port>/application'
	# for example: 'http://localhost:9292/application'
	syncserver = 'enter a server URL here'

Here is a sample page after syncing with a sample sync server, showing several products on that server.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product-sync.png" alt="jquerymobile iPhone products synced" />

You can click on one of the products.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodes-jquerymobile-tutorial/jquerymobile-iphone-product-sync2.png" alt="jquerymobile iPhone products a synced product" />
