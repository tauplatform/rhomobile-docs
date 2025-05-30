Rhodes Command Line
========
This section describes how to use Rhodes from the command line (as opposed to using RhoStudio, an Eclipse-based IDE) to build native mobile apps for all shipping smartphones.  Specifically it describes how to write Rhodes controllers and templates and refers to the RhoConnect tutorial on how to write RhoConnect source adapters to sync data from backend apps to the device. The architecture of this is shown [here](https://img.skitch.com/20110111-1snnuchj3ph1hu41cafkb23jng.png).

Install Rhodes
--------------

Install and Setup Rhodes following instructions [here](install).

Generating A Rhodes Application
-------------------------------
The first step is to generate the application and base files.  First we will generate an application called StoreManager with the following command:

    :::term
    $ rhodes app storemanager http://localhost:9292/application

This will generate an application directory called "storemanager" with several files.  Note also that the third argument above is the URL to the RhoConnect server data source (required if you want to do synchronized data as we describe in the next section).  Specifically it will set the rhoconfig.txt file to have the following option:

    syncserver = 'http://localhost:9292/application'

If you do not need synchronized offline data, you can leave the third argument out.


The default home screen of the app is defined in the storemanager/app/index.erb file.  You can edit the HTML there to create what your app displays.  You can link to other HTML files and ERB files from there with standard HTML techniques.  Then you can build your app with rake tasks.  For example, to build for the iPhone and run the simulator, type the following commands:

    :::term
    $ cd storemanager
    $ rake run:iphone

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/rhodes-jquerymobile-tutorial/jquerymobile-index-iphone.png" heigth='300' width='200'/>

To build for other platforms/simulators, you execute the appropriate rake tasks, such as "rake run:bb" to run it on the BlackBerry emulator. To see all possible rake tasks:

    :::term
    $ rake -T

Generating Models
-----------------

Now that your app compiles and runs, you can start adding models and controllers. When the model is generated, Rhodes will also create files for a standard UI for displaying and editing the model. This follows the standard model-view-controller paradigm.

Let's generate a model called "product" and give it some attributes.

    :::term
    $ cd storemanager
    $ rhodes model product brand,name,price,quantity,sku
      Generating with model generator:
        [ADDED]  app/Product/index.erb
        [ADDED]  app/Product/edit.erb
        [ADDED]  app/Product/new.erb
        [ADDED]  app/Product/show.erb
        [ADDED]  app/Product/index.bb.erb
        [ADDED]  app/Product/edit.bb.erb
        [ADDED]  app/Product/new.bb.erb
        [ADDED]  app/Product/show.bb.erb
        [ADDED]  app/Product/product_controller.rb
        [ADDED]  app/Product/product.rb
        [ADDED]  app/test/product_spec.rb

Editing Rhodes Views
--------------------

You can edit the generated ERB files to customize the HTML as you see fit.  Typically you will provide links to the model index page from the home screen.  Below is the generated top level index.erb file for the Store Manager app (app/index.erb).


    :::ruby
    <div data-role="page" data-url="<%= Rho::RhoConfig.start_path %>/">

      <div data-role="header" data-position="inline">
        <h1>Storemanager</h1>
        <% if SyncEngine::logged_in > 0 %>
            <a href="<%= url_for :controller => :Settings, :action => :do_sync %>" class="ui-btn-left" data-icon="refresh">Sync</a>
            <a href="<%= url_for :controller => :Settings, :action => :logout %>" class="ui-btn-right" data-icon="star">Logout</a>
        <% else %>
            <a href="<%= url_for :controller => :Settings, :action => :login %>" class="ui-btn-right" data-icon="star">Login</a>
        <% end %>
      </div>

      <div data-role="content">
        <ul data-role="listview">
          <li>
            <a href="#">Add Links Here...</a>
          </li>
        </ul>
      </div>

      <div data-role="footer" data-position="inline">
        <p>it is optional part of page..</p>
      </div>

    </div>


To provide a link to the Product model's index page and templates you can replace the list item with the title "Add links here" with:

    :::ruby
    <li>
        <a href="Product">Products</a>
    </li>

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhodocs/rhodes-jquerymobile-tutorial/ipod.png" heigth='300' width='200' />


**NOTE:** You can edit this top level page or any of the other pages with any arbitrary HTML you wish.   We don't attempt to teach you HTML or Ruby here but there are many good external references for both topics.

Doing More With Rhodes
----------------------

See the comprehensive and exhaustive [Rhodes Developer Reference](introduction) for details on all Rhodes capabilities.

Code samples of each and every Rhodes capability are in the
[Rhodes API samples](http://github.com/rhomobile/rhodes-system-api-samples).

You should take a look at the [Rhodes 2.0 training webinar](http://vimeo.com/channels/rhomobile#12214213).

There is a [technical FAQ](../faq) that describes how to perform certain specific tasks in Rhodes.

The following sections describe how to add synchronized data to our app with RhoConnect.

Adding Synchronized Data to Your App with RhoConnect
----------------------------------------------------
To add synchronized data to your application, see the [RhoConnect Tutorial](../rhoconnect/tutorial).  Also check out the [RhoConnect training video](http://vimeo.com/channels/rhomobile#28789274).

More Info
---------
There are training webinars on various Rhomobile related topics held weekly.  Videos of these are on [the Rhomobile Vimeo channel](http://vimeo.com/channels/rhomobile).

There is also the following [book on Rhomobile](http://www.apress.com/book/view/9781430228684).

For more questions, [write to us](mailto:info@rhomobile.com) or join the [Rhomobile Google Group](http://groups.google.com/group/rhomobile) and post.
