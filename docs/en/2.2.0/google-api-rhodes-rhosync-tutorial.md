Using Google API with Rhodes and RhoSync
========
This tutorial will guide you through using Google API with RhoHub, RhoSync, and Rhodes to sync with a Google Docs spreadsheet.

Source Code
-----------
The source code for this example is located here.

 * [Google API Rhodes sample](https://github.com/rhomobile/webinar-samples/tree/master/IssueTracker-rhodes)
 * [Google API RhoSync sample](https://github.com/rhomobile/webinar-samples/tree/master/IssueTracker-rhosync)

Webinar Video
-------------
[Vimeo link](http://vimeo.com/19814740)

Pre-requisite Reading
---------------------
 * [RhoStudio Tutorial](rhostudio.tutorial)
 * [RhoConnect Tutorial](rhoconnect/tutorial)
 * [RhoHub Tutorial](rhohub/tutorial)

## Setup

This tutorial assumes that you know how to generate and edit a Rhodes and RhoConnect application. It also assumes that you know how to use RhoHub to host an application, and how to use Git with RhoHub to edit your Rhodes and RhoConnect applications locally. If you do not know how to do this, see [Pre-requisite Reading]().

## Creating a Project in RhoHub

In this tutorial, the example is an Issue Tracker Rhodes/RhoSync project created in RhoHub. The source code for this example was generated in RhoHub, and then modified to use Google API to sync with a spreadsheet stored in Google Docs.

A source adapter called issue was created for RhoSync, and a model called issue was created for Rhodes.

If you wish to create your own Rhodes/RhoSync for Google API purposes, you can generate a new project on RhoHub, and then modify it to use Google API using the Issue Tracker example as a guide.

## Creating the Rhodes/RhoSync Project in RhoHub

The Issue Tracker project was created on RhoHub. Detailed instructions for setting up a RhoHub account and creating a RhoHub project are [here](rhohub/tutorial).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/google-api-rhodes-rhosync-tutorial/issue-tracker-rhohub.png" alt="Issue Tracker on RhoHub" /> 

## Creating the Source Adapter in RhoSync

The Issue Tracker project from RhoHub was cloned to the user's local computer. You will need to have a local Git repository on your computer to perform the clone. Again, detailed instructions to do that are [here](rhohub/tutorial).

	:::term
	$ git clone git@git.rhohub.com:yourname/IssueTracker-rhosync.git

The RhoSync project needs a source adapter, and the Issue Tracker project's source adapter has a source adapter named issue. It was created on the Git repository for the Issue Tracker project on the local computer with the following command.

	:::term
	$ rhosync source issue

## Writing the RhoSync Authentication Method for Google API

In the RhoSync project, in application.rb, you write an authentication method. This method gives your project the ability to interact with a backend server. 

The authenticate method takes the username and password being passed in: in the Issue Tracker example, the username and password are a gmail address and password, since this example will be working with Google Docs. Note that the webinar uses a Rhodes email address: Rhodes email is based on gmail.

The Issue Tracker example authentication method, application.rb, uses RestClient Post to do the client login that Google asks for at https://www.google.com/accounts/ClientLogin. The authentication method takes the result of the login, splits that result, then splits it again and grabs the authentication key. Then it stores the key with the username in Redis. This authenticate method does not just authenticate things; it also sets up the authenticate keys that will be used later.

The comments above are added to the example of the authentication method in the RhoSync Issue Tracker application.rb source code example shown below.

	:::ruby
	def authenticate(username,password,session)
	  # Login to the Google account with RestClient
	  res =  RestClient.post("https://www.google.com/accounts/ClientLogin",   "Email=#{username}&Passwd=#{password}&service=wise&source=rhomobile-trilog-0.1")
	  
	  # Split the result of the login and split it again to get the 
	  # authentication key.
	  auth=res.split("\n")[2]
	  authkey=auth.split("=")[1]
	  
	  # Store the authentication key with the username in Redis.
	  puts "Storing with #{username}"
	  Store.put_value("username:#{username}:token",authkey )
	  
	  # Say if we authenticate the user (for simplicity, set to true).
	  puts "Auth is: #{authkey}"
	  true
	end

## Using RhoSync to Connect to Google Docs

The Google document that the Issue Tracker project connects to is a simple spreadsheet. It contains a ticket, issue, status, and priority. We want to write the code that connects to this Google Docs spreadsheet, use RhoSync to store its data on the local device, and use a Rhodes app to display it.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/google-api-rhodes-rhosync-tutorial/issue-tracker-google-docs.png" alt="Issue Tracker on Google Docs" /> 

In the RhoSync project, in sources/issue.rb, you write a query method. In the Issue Tracker example, the query method first gets the authentication key that the authenticate method in application.rb stored in Redis.

	:::ruby
    auth=Store.get_value("username:#{current_user.login}:token")

The query method uses RestClient and XmlSimple. First, RestClient retrieves the list of spreadsheets. We only have one spreadsheet, but it still retrieves this list of one spreadsheet from https://spreadsheets.google.com/feeds/spreadsheets/.

	:::ruby
	res =  RestClient.get("https://spreadsheets.google.com/feeds/spreadsheets/",:Authorization=>"GoogleLogin auth=#{auth}")

Then XmlSimple parses the spreadsheet. First it gets the spreadsheet into a variable called spreads.

	:::ruby
	spreads=XmlSimple.xml_in(res.body)

The spreads variable has a set of entries.

	:::ruby
	spreads["entry"].each do |entry|

Check if the entry element is IssueTracker. This ruby code...

	:::ruby
	if entry["title"][0]["content"]=="IssueTracker"
	

...looks for this XML element...

	:::term
	<title type='test'>IssueTracker</title><content type='text'>IssueTracker</content>

...and if it finds it, it looks at the links within that IssueTracker entry.

	:::ruby
	entry["link"].each do |link|

If the rel attribute of the link is the schema for worksheetsfeed, then we grab the URL that is in its href.

The Ruby code here...

	:::ruby
	if link["rel"]=="http://schemas.google.com/spreadsheets/2006#worksheetsfeed"
	workurl=link["href"]

...looks for something like this XML element and grabs its href URL.

	:::term
	<link rel='http://schemas.google.com/spreadsheets/2006#worksheetsfeed' type='application/atom+xml href='https://schemas.google.com/spreadsheets/2006#worksheetsfeed/(complicated stuff here)/private/full'/>

The query method makes another RestClient call to that URL. XmlSimple takes the result from that call, and the query method takes the key that is in its first entry, because we know that this spreadsheet has only one worksheet.

	:::ruby
	res2 =  RestClient.get(workurl,:Authorization=>"GoogleLogin auth=#{auth}")
	wrksheets=XmlSimple.xml_in(res2.body)
	worksheetkey=wrksheets["entry"][0]["id"]

The query method makes another RestClient call to have XmlSimple get the tables that are in the worksheet.

	:::ruby
	res3=RestClient.get("#{worksheetkey}",:Authorization=>"GoogleLogin auth=#{auth}")
	#puts "Result #{res3.body}"
	tablelinks=XmlSimple.xml_in(res3.body)

Then the query method loops through the tables, making another RestClient call to have XmlSimple get the table entries (status, description, etc.) for every table.

	:::ruby
	tablelinks["link"].each do |link|
	  if link["rel"]=~/listfeed/
        res4=RestClient.get("#{link['href']}",:Authorization=>"GoogleLogin auth=#{auth}")
        tabledata=XmlSimple.xml_in(res4.body)
        tabledata["entry"].each do |entry|
        	@result[entry["ticket"]]={"ticket"=>entry["ticket"],"status"=>entry["status"],"description"=>entry["description"],"priority"=>entry["priority"]}
	  end
    end

Note that this type of code should work for any spreadsheet that you are using; the only things that are unique to this example is that it checks to see if this is the IssueTracker, and its last call gets the table data and builds the @result hash using the ticket number, building up a hash that has a ticket, status, description, and priority. Naturally, that varies depending on what your schema is.

Here is the complete listing of the IssueTracker query method in sources/issue.rb. It requires RestClient and XmlSimple.

	:::ruby
	def query(params=nil)
	  auth=Store.get_value("username:#{current_user.login}:token")
	  #Authorization: GoogleLogin auth=yourAuthValue
	  puts "Accessing spreadsheet list with current user #{current_user.login} auth #{auth}"
	  begin 
	    res =  RestClient.get("https://spreadsheets.google.com/feeds/spreadsheets/",:Authorization=>"GoogleLogin auth=#{auth}")
	    @result={}
	    spreads=XmlSimple.xml_in(res.body)
	    spreads["entry"].each do |entry|
	      #puts "Title: #{entry['title'][0]['content']}"
	      if entry["title"][0]["content"]=="IssueTracker"
	        #puts  "https://spreadsheets.google.com/feeds/worksheets/#{entry.id}/private/full"
	        entry["link"].each do |link|
	          if link["rel"]=="http://schemas.google.com/spreadsheets/2006#worksheetsfeed"
	            workurl=link["href"]
	            #puts "Accessing #{workurl}"
	            res2 =  RestClient.get(workurl,:Authorization=>"GoogleLogin auth=#{auth}")
	            wrksheets=XmlSimple.xml_in(res2.body)
	            worksheetkey=wrksheets["entry"][0]["id"]
	            #puts "Worksheetkey #{worksheetkey}"
	            res3=RestClient.get("#{worksheetkey}",:Authorization=>"GoogleLogin auth=#{auth}")
	            #puts "Result #{res3.body}"
	            tablelinks=XmlSimple.xml_in(res3.body)
	            tablelinks["link"].each do |link|
	              if link["rel"]=~/listfeed/
	                res4=RestClient.get("#{link['href']}",:Authorization=>"GoogleLogin auth=#{auth}")
	                tabledata=XmlSimple.xml_in(res4.body)
	                tabledata["entry"].each do |entry|
	                  @result[entry["ticket"]]={"ticket"=>entry["ticket"],"status"=>entry["status"],"description"=>entry["description"],"priority"=>entry["priority"]}
	                end
	              end
	            end
	          end
	        end
	      end
	    end
	    rescue Exception=>e
	    puts "Error: " +e.inspect.to_s
	  end
	end

RhoSync manages this choreography of the query method making five subsequent calls to Google Docs and handling all the XML, allowing the Rhodes local device to get to the Google Doc data. Trying to manage all of this from the local device would be a bad experience, be it writing it all on a Rhodes application on the local device, or trying to write all of that in Objective C. Having RhoSync do all the work in the background to get to the data is very powerful. This also shows the power of Ruby to do this integration; this query is a page of code, writing this in Objective C would be at least a hundred lines of code.

## Testing the Query

The issue spec, spec/issue_spec.rb, has the code to process the query. There should be a size to the query (non-zero). It puts out the master document, a helpful technique to show we actually have something created on RhoSync.

There is code shown in the webinar to set up the test with a username and password; the username/password were changed after the webinar.

	:::ruby
	it "should process Issue query" do
	  test_query.size.should >0
	  puts md.inspect
	  query_errors.should == {}
	end

## Running the Project oh RhoHub

In the webinar, the RhoSync project was cloned to a local Git repository. To run the Image Tracker RhoSync on RhoHub, the following commands pushed the RhoSync project that was edited to access the Google Docs spreadsheet back to RhoHub.

	:::term
	git add .
	git commit
	(message that source adapter code has been edited)
	git push

From RhoHub, you can deploy the RhoSync server by clicking the RhoSync project Deploy button. You can refer to the [RhoHub Tutorial](rhohub/tutorial), or watch the webinar to see this deployment done.

## Creating the Model in Rhodes

The Issue Tracker project from RhoHub was cloned to the user's local computer. You will need to have a local Git repository on your computer to perform the clone. Again, detailed instructions to do that are [here](rhohub/tutorial).

	:::term
	$ git clone git@git.rhohub.com:yourname/IssueTracker-rhodes.git

The Rhodes Issue Tracker has a model named issue, with attributes of ticket, description, status, and priority. It was created on the local Git repository for the Issue Tracker project with the following command.

	:::term
	$ rhodes model issue ticket,description,status,priority

## Understanding the Rhodes Model

The code for app/Issue/show.erb in the Issue Tracker source code example is shown below. You do not write this code, it is generated for you when you create the model in the Rhodes project. This code displays one issue and its attributes, with a back button and an edit button.

	:::html
	<div class="pageTitle">
	  <h1><%= @issue.ticket %></h1>
	</div>
	
	<div class="toolbar">
	  <div class="leftItem backButton">
	    <a href="<%= url_for :action => :index %>">Back</a>
	  </div>
	  <div class="rightItem regularButton">
	    <a href="<%= url_for :action => :edit, :id => @issue.object %>">Edit</a>
	  </div>
	</div>
	
	<div class="content">
	  <ul>
    
        <li>
          <div class="itemLabel">Ticket</div>
          <div class="itemValue"><%= @issue.ticket %></div>
        </li>
    
        <li>
          <div class="itemLabel">Description</div>
          <div class="itemValue"><%= @issue.description %></div>
        </li>
    
        <li>
          <div class="itemLabel">Status</div>
          <div class="itemValue"><%= @issue.status %></div>
        </li>
    
        <li>
          <div class="itemLabel">Priority</div>
          <div class="itemValue"><%= @issue.priority %></div>
        </li>
    
	  </ul>
	</div>

In app/index.rb, we have an issue list, and a link to the issue object: the list in the content div, which is code that was generated with the project. Again, you do not write this code; it is generated when the model is created.

	:::html
	<div class="pageTitle">
	  <h1>Issues</h1>
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
	    <% @issues.each do |issue| %>
	    
	        <li>
	          <a href="<%= url_for :action => :show, :id => issue.object %>">
	            <span class="title"><%= issue.ticket %></span><span class="disclosure_indicator"></span>
	          </a>
	        </li>
	    
	    <% end %>
	  </ul>
	</div>

## Pointing the Rhodes Application to the RhoSync Server

You need to edit the rhoconfig.txt file to point to the RhoSync server that the Rhodes application will hook up to. The example below hooks up to RhoSync on the RhoHub Issue Tracker project.

	:::term
	# Sync server url. Typically this will look like 'http://<hostname>:<port>/application'
	#syncserver='http://localhost:9292/application'
	syncserver='http://rhohub-crm2go-e2688980.rhosync.com/application'

## Running an iPhone Example

Running the Rhodes Issue Tracker app in the iPhone simulator can show syncing with the Google Docs spreadsheet.

	:::term
	$ rake run:iphone

Once the iPhone simulator is running, the main Issue List page appears (app/index.erb).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/google-api-rhodes-rhosync-tutorial/issue-tracker-iphone.png" alt="Issue Tracker on iPhone" /> 

Click the Settings icon to get the Setting page, and then perform a Login.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/google-api-rhodes-rhosync-tutorial/issue-tracker-iphone-settings.png" alt="Issue Tracker on iPhone Settings" />

Click the Home button to return to the main Issue List page, and click to see a list of the issues in the Google Docs spreadsheet.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/google-api-rhodes-rhosync-tutorial/issue-tracker-iphone-settings.png" alt="Issue Tracker on iPhone Settings" />

Click on one of the issues to show that issue (app/Issue/show.erb) synced directly with the Google Docs spreadsheet. The Google Docs spreadsheet data is now stored on the local device (in this case, the iPhone simulator).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/google-api-rhodes-rhosync-tutorial/issue-tracker-iphone-issue.png" alt="Issue Tracker on iPhone a synced issue" />

