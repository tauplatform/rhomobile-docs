RhoConnect Source Adapters
===

Connecting to a backend service with RhoConnect requires that you write a small amount of code for the query, create, update and delete operations of your particular enterprise backend. One way to do this is through a RhoConnect source adapter, which is a collection of Ruby code for these operations.

You can generate a RhoConnect source adapter with RhoStudio or with the `rhoconnect` utility command line tool.

## Generating the Source Adapter from RhoStudio

To generate a RhoConnect source adapter and create the associated Controller templates, open your Rhoconnect project in RhoStudio. Then right-click on the project in the Project Explorer and select New->Rhoconnect Source Adapter.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/menu-new-rhoconnect_source-adapter.png"/>

In the Source Adapter Information window, enter the name for your source adapter.

Click the Finish button to create the source adapter.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/source-adapter-information.png"/>

After pressing the Finish button, you'll see the RhoConnect source adapter generator script output in the output console (Rhomobile build console).

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhoconnect-tutorial/rhoconnect-source-generator-output.png"/>

## Generating the Source Adapter from the Command Line

To generate a source for your RhoConnect application, you can run the `rhoconnect source` command within your application directory.

	:::term
	Usage: rhoconnect source name [options] [args]

	Generates a new source adapter.

	Required:
	  name        - the source name(i.e. product)


	Options specific for this generator:

	General options:
	    -p, --pretend                    Run, but do not make any changes.
	    -f, --force                      Overwrite files that already exist.
	    -s, --skip                       Skip files that already exist.
	    -d, --delete                     Delete files that have previously been generated with this generator.
	        --no-color                   Don't colorize the output
	    -h, --help                       Show this message
	        --debug                      Do not catch errors

For the storeserver application example, within the sourceserver directory, run:

	:::term
	$ rhoconnect source product
	Generating with source generator:
	     [ADDED]  sources/product.rb
	     [ADDED]  spec/sources/product_spec.rb

## Understanding the Generated Source Adapter Files

Generating a source adapter named "product" will generate a new ruby class called `sources/product.rb`:

	:::ruby
	class Product < SourceAdapter
	  def initialize(source)
	    super(source)
	  end

	  def login
	    # TODO: Login to your data source here if necessary
	  end

	  def query
	    # TODO: Query your backend data source and assign the records
	    # to a nested hash structure called @result. For example:
	    # @result = {
	    #   "1"=>{"name"=>"Acme", "industry"=>"Electronics"},
	    #   "2"=>{"name"=>"Best", "industry"=>"Software"}
	    # }
	    raise SourceAdapterException.new("Please provide some code to read records from the backend data source")
	  end

	  def sync
	    super
	  end

	  def create(create_hash)
	    # TODO: Create a new record in your backend data source
	    # If your rhodes rhom object contains image/binary data
	    # (has the image_uri attribute), then a blob will be provided
	    raise "Please provide some code to create a single record in the backend data source using the create_hash"
	  end

	  def update(update_hash)
	    # TODO: Update an existing record in your backend data source
	    raise "Please provide some code to update a single record in the backend data source using the update_hash"
	  end

	  def delete(delete_hash)
	    # TODO: write some code here if applicable
	    # be sure to have a hash key and value for "object"
	    # for now, we'll say that its OK to not have a delete operation
	    # raise "Please provide some code to delete a single object in the backend application using the object_id"
	  end

	  def logoff
	    # TODO: Logout from the data source if necessary
	  end
	end

It also adds a corresponding [rspec](http://rspec.info/) file `spec/sources/product_spec.rb` and updates `settings/settings.yml` with the product adapter to the sources section with some default options:

 	:::yaml
	:sources:
  	  Product:
    	:poll_interval: 300

## Source Adapter API

You can write the following methods for your source adapter. These methods allow your source adapter to interact with your backend service.

* [login](../rhoconnectapi/source-adapter-api#login) - Login to your backend service (optional).
* [logoff](../rhoconnectapi/source-adapter-api#logoff) - Logoff from your backend service (optional).
* [query](../rhoconnectapi/source-adapter-api#query) - Query your backend service and build a hash of hashes (required).
* [search](../rhoconnectapi/source-adapter-api#search) - Search your backend based on params and build a hash of hashes (optional).
* [create](../rhoconnectapi/source-adapter-api#create) - Create a new record in the backend (optional).
* [update](../rhoconnectapi/source-adapter-api#update) - Update an existing record in the backend.
* [delete](../rhoconnectapi/source-adapter-api#delete) - Delete an existing record in the backend.
* [current_user](../rhoconnectapi/source-adapter-api#currentuser) - Returns the current user which called the adapter.
* [stash_result](../rhoconnectapi/source-adapter-api#stashresult) - Saves the current state of `@result` to redis and assigns it to `nil`.

## Data Partitioning

Data is stored in RhoConnect using [redis sets](http://redis.io/commands#set).  The `@result` hash from the `query` method is stored in redis and referred to as the Master Document or MD.

The MD is referenced in RhoConnect by a corresponding partition.  Source adapters can partition data in two ways: user and app.  As you might have guessed, user partitioning stores a copy of the source adapter MD for each user (one copy shared across all devices for a user).

Likewise, app partitioning stores one copy of the source adapter MD for the entire application (all users and devices share the same data).  App partitioning can be particularly useful if you have source adapters which retrieve large amounts of data that is fixed from user to user, for example a global product catalog.  Using app partitioning wherever possible ***greatly reduces*** the amount of data in redis.

### User Partition
User partitioning is the default scheme for source adapters, however you can explicitly define it in `settings/settings.yml` with:

	:::yaml
	:sources:
  	  Product:
    	:poll_interval: 300
    	:partition_type: user

### App Partition
Enable app partitioning the same way:

	:::yaml
	:sources:
  	  Product:
    	:poll_interval: 300
    	:partition_type: app

Now you have a single copy of the `Product` source adapter dataset for all users.

## Pass Through
RhoConnect provides a simple way to keep data out of redis.  If you have sensitive data that you do not want saved in redis, add the pass_through option in settings/settings.yml for each source:

	:::yaml
	:sources:
  	  Product:
    	:pass_through: true

**NOTE: When running query or search the entire data set will be returned from your backend service. **

## Redis Interface
RhoConnect provides a simple redis interface for saving/retrieving arbitrary data.  This is useful if you want to save data in your application to be used later (i.e. in an async job or a subsequent source adapter execution).

	:::ruby
	Store.put_value('hello','world')

	Store.get_value('hello') #=> 'world'

	# You can store nested hashes too!
	Store.put_data(
	  'mydata',
	  {
	    '1' => { 'hello' => 'world' }
	  }
	)

	Store.get_data('mydata') #=> { '1' => { 'hello' => 'world' } }

## Handling Exceptions
If your source adapter raises an instance of `SourceAdapterException`, the resulting message will be sent to the client's sync callback(in `@params['error_message']`).  See the rhodes [sync exception handling docs](../rhodes/synchronization#handling-exceptions) for more details.

You can use `SourceAdapterException` as a convenient way to notify your application of various error conditions.

For example, your delete method might check the web service HTTP response code was 200 to make sure the record was deleted:

	:::ruby
	def delete(delete_hash)
	  rest_result = RestClient.delete("#{@base}/#{delete_hash['id']}")
	  if rest_result.code != 200
	    raise SourceAdapterException.new("Error deleting record.")
	  end
	end

**NOTE: When your adapter method raises an exception, no data is removed from the adapter's master document.**

The following exceptions are provided for convenience:

### `SourceAdapterLoginException`
Useful to raise in your adapter's login method if it failed.

### `SourceAdapterLogoffException`
Similar to login, raise this if your adapter's logoff failed.

### `SourceAdapterServerTimeoutException`
Raise if your backend service connection times out.

### `SourceAdapterServerErrorException`
Raise this if your backend service returns a non-successful response.


## Handling Conflicts

Handling conflicts in RhoConnect follows the same pattern as handling exceptions.  Once your adapter method has detected a conflict, you can raise a `SourceAdapterObjectConflictError` which will be sent to your application's sync callback.

### `SourceAdapterObjectConflictError`
Raise this if your adapter has detected a conflict.

	:::ruby
	def update(update_hash)
      obj_id = update_hash['id']
      update_hash.delete('id')
      rest_result = RestClient.put("#{@base}/#{obj_id}",:product => update_hash)
	  if rest_result.code != 200
	    raise SourceAdapterObjectConflictError.new("Conflict detected updating the object.")
	  end
    end

## Sample Adapter
Here's a complete example of how the completed [product adapter might look](https://github.com/rhomobile/store-server/blob/master/sources/product.rb):

	:::ruby
	require 'json'
	require 'rest_client'

	class Product < SourceAdapter

	  def initialize(source)
	    @base = 'http://rhostore.herokuapp.com/products'
	    super(source)
	  end

	  def query(params=nil)
    	rest_result = RestClient.get("#{@base}.json").body

		if rest_result.code != 200
		  raise SourceAdapterException.new("Error connecting!")
		end
	    parsed = JSON.parse(rest_result)

	    @result={}
	    parsed.each do |item|
	      @result[item["product"]["id"].to_s] = item["product"]
	    end if parsed
	  end

	  def create(create_hash)
	    res = RestClient.post(@base,:product => create_hash)

	    # After create we are redirected to the new record.
	    # We need to get the id of that record and return
		# it as part of create so rhoconnect can establish a link
		# from its temporary object on the client to this newly
		# created object on the server
	    JSON.parse(
		  RestClient.get("#{res.headers[:location]}.json").body
		)["product"]["id"]
	  end

	  def update(update_hash)
	    obj_id = update_hash['id']
	    update_hash.delete('id')
	    RestClient.put("#{@base}/#{obj_id}",:product => update_hash)
	  end

	  def delete(delete_hash)
	    RestClient.delete("#{@base}/#{delete_hash['id']}")
	  end
	end
