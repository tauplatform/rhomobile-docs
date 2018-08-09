iPad Split View UI with Rhodes
========
This tutorial will guide you through using Rhodes to get a split view UI on an iPad.

Source Code
-----------
The source code for this example is located here.

 * [Rhodes API samples](https://github.com/rhomobile/rhodes-system-api-samples)

Webinar Video
-------------
[Vimeo link](http://vimeo.com/16455900)

Pre-requisite Reading
---------------------
 * [RhoStudio Tutorial](rhostudio.tutorial)
 * [iPad development](http://developer.apple.com/ipad/sdk/)

## Setup

This tutorial assumes that you know how to edit and run a Rhodes application. It also assumes that you have the iOS development environment for the iPad set up on a Macintosh. If you do not know how to do this, see [Pre-requisite Reading]().

## Getting the Rhodes Split View iPad Example

The rhodes-system-api-samples is a project on github that is an app used for testing; new features for Rhodes are tested and added here. One feature in this project is the split view for iPad. You can git clone the rhodes-system-api-samples project to your computer and try it.

	:::term
	$ git clone https://github.com/rhomobile/rhodes-system-api-samples.git

## Understanding the Spilt View for iPad Example

Open the rhodes-system-api-samples project in your text editor. In app/NativeBarTest/index.erb, there is one link to Tab bar using iPad Split View, which calls a method named set_iPadtabbar.

	:::html
	<% if System::get_property('platform') == 'APPLE' %>      
	<ul id="tabswitch" selected="true" title="iPad SplitView test">
	  <li><%= link_to "Tab bar using iPad Split View", :action => :set_iPad_tabbar %></li>
	  <li>(works only on iPad)</li>
	</ul>
	<% end %>    

## Understanding the VTABBAR_TYPE for the Tabbar

In app/NativeBarTest/controller.rb, in the method set-iPad-tabbar, the tabbar is defined with the usual icons, actions, and labels, just like the native bar. However, this tabbar is created as a VTABBAR_TYPE instead of a TABBAR_TYPE, so it creates a vertical tabbar. If you are on a platform that does not have the vertical tabbar, it will default to displaying the tab view. The vertical tabbar is a very good way to display on a tablet device. Note that this currently works only on the iPad.

	:::ruby
	def set_iPad_tabbar
	  save_location
	  tabbar = [
	    {:label => 'Native bar', :action => '/app/NativeBarTest', :icon => '/public/images/bar/gears.png',    :reload => true},
	    {:label => 'Main page',  :action => '/app',               :icon => '/public/images/bar/home_btn.png', :reload => true},
	    {:label => 'Main page 2', :action => 'callback:' + url_for(:action => :show_main_page), :icon => '/public/images/bar/home_btn.png', :reload => true}
	  ]
	  NativeBar.create(Rho::RhoApplication::VTABBAR_TYPE, tabbar)
	  $tabbar_active = true
	  NativeBar.switch_tab(0)
	end

In the build.yml file, in the iphone section, the sdk version should be set to iphonesimulator4.0 or above.

## Running the Spilt View for iPad Example 

Run the rhodes-system-api-samples project in the iPhone simulator.

	:::term
	$ rake run:iphone

The simulator will come up as an iPhone. To switch to the iPad simulator, in the iOS simulator, select Hardware -> Device -> iPad.

You have two windows modes in the iPad simulator. Select Window -> Scale -> 50% or 100%. You will likely have to scroll up and down in 100% mode, but the simulator will be easier to read.

Note that you might get a pop-up window asking if it is okay for rhorunner to use your current location. You can decide that.

In the iPad simulator, click the rhodes-system-api-samples icon. From the main page, click the Native tabbar test.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/iPad-rhodes-tutorial/native-tabbar-test.png" alt="Native tabbar main page" /> 

The Native tabbar test page comes up, no spilt view, showing a tabbar at the botton of the screen.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/iPad-rhodes-tutorial/native-tabbar-bottom.png" alt="native tabbar at bottom" /> 

You can click on No bar to remove the bottom tabbar, and click on Tab bar to make the tabbar come back.

Click on Tab bar using iPad split view. This shows the split view interface: on the left, you have the list of tabs, and on the right, you have the content for the selected tab. 

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/iPad-rhodes-tutorial/native-tabbar-splitview.png" alt="native tabbar splitview" /> 

If you click the Main Page tab on the left, you have the new content for that tab: the Main page tab shows the list of system API samples. 

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/iPad-rhodes-tutorial/main-page-splitview.png" alt="main page splitview" />

Split view is a very good way to display for a tablet: you have your navigation on the left, and your main viewing area on the right. You can use VTABBAR_TYPE to get the split view on the iPad.

