# Using Rhom in Ruby
## Creating a Ruby Data Model
There are two ways to generate a Ruby model: one is using RhoStudio and the other is with the command-line generator. Under the hood, RhoStudio invokes the command-line tool, so both approaches are equivalent. Together with the model class itself, the generator will output a default set of views that you can customize as needed.

### Adding a Model from RhoStudio
To generate a model, right-click on the application project in the Project Explorer and select New -> RhoMobile model.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/new-rhodes-model-menu-4.0.png"/>

In the Model Information window, enter the name for your model: in this case, `Product`.

**NOTE: Do not use the following for model names: `Config, Settings, helpers, test, Client, Sync` or any built-in Ruby class name. It is also a good programming practice to avoid using generic names, such as `time` or `print`. Using descriptive names in your models will help you grow your application more easily in the future**

The other required piece of information is the list of attributes, which must be entered as a string with no spaces, each attribute separated by a comma: in this `Product` example, `name,brand,price,quantity,sku`.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/model-information-4.0.png"/>

After pressing the Finish button, you'll see the results of the RhoMobile model generator in the output console.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial/rhodes-model-generator-output-4.0.png"/>

### Adding a Model from the command line
If you prefer to use the command line or another development environment instead of RhoStudio, the `rhodes` tool can be invoked manually. To create the `Product` model with `name, brand, price, quantity` and `sku` as the attributes, switch to the root directory of your application (the one that contains `app` as a child) and run:

    :::term
    $ rhodes model Product name,brand,price,quantity,sku


### What a generated model consists of
Output from the model generator will contain the following files:

* app/Product/index.erb - the html view template to display the list of objects
* app/Product/edit.erb - the html view template to edit an object
* app/Product/new.erb - the html view template to supply values to create a new object
* app/Product/show.erb - the html view template to displays the selected object
* app/Product/product_controller.rb - contains the the business logic for the model, the basic CRUD actions: index, new, create, edit, update and delete.
* app/Product/product.rb - contains the Product model definition
* app/test/product_spec.rb - placeholder for Product test specs

You are free to update all these files to suit your application

**NOTE: Why does the `product.rb` file not mention the attributes at all? Rhodes provides two model storage schemes, called PropertyBag and FixedSchema. FixedSchema stores data for each model in its own database table, with one column per attribute, and requires the model to explicitly list the attributes it supports. PropertyBag stores everything in a single table and is more flexible: it determines the list of attributes dynamically at run time, the model does not need to declare them. The generator outputs PropertyBag models by default; that is why there is no mention of the attributes in the generated model file, PropertyBag does not require them. For a discussion of the benefits and drawbacks of each approach, see [Using the local database](local_database).**

## Using Models
<a name="property_bag"></a>
### Property Bag
With a property bag model, all data is stored in a single table using the object-attribute-value pattern also referred to as the [Entity-attribute-value model](http://en.wikipedia.org/wiki/Entity-attribute-value_model).

#### Property Bag Advantages
* Simple to use, it doesn't require specifying attributes.
* Data migrations are not necessary.
* Attributes can be added or removed without modifying the database schema.

#### Property Bag Disadvantages
* For some applications, the database size may be significantly larger than fixed schema.  This is because each attribute is indexed for fast lookup.
* Sync process may be slightly slower because inserts are performed at attribute level.

In a property bag model, Rhom groups objects by their source id and object id.  The following example illustrates this idea:

<pre>
Source ID: 1, Model Name: Account
+-----------+----------+--------------+----------------------+
| source_id | attrib   | object       | value                |
+-----------+----------+--------------+------- --------------+
|         1 | name     | 48f39f63741b | A.G. Parr PLC 37862  |
|         1 | industry | 48f39f63741b | Entertainment        |
|         1 | name     | 48f39f230529 | Jones Group          |
|         1 | industry | 48f39f230529 | Sales                |
+-----------+----------+--------------+----------------------+
</pre>

Here, Rhom will expose a class `Account` with two attributes: `name` and `industry`

    :::ruby
    account = Account.find('48f39f63741b')
    account.name
      #=> "A.G. Parr PLC 37862"

    account.industry
      #=> "Entertainment"

#### Using Property Bag Models
To use a property bag model, simply generate a new model with some attributes:

    :::term
    $ rhodes model product name,brand,price,quantity,sku

This will generate a file called `product.rb` which looks like:

    :::ruby
    class Product
      include Rhom::PropertyBag

      # Uncomment the following line to enable sync with Product.
      # enable :sync

      #add model specific code here
    end

There are several features you can enable or disable in the model, below is a complete list:

    :::ruby
    class SomeModel
      include Rhom::PropertyBag

      # rhoconnect settings
      # Enable sync for this model.
      # Default is disabled.
      enable :sync

      # Set the type of sync this model
      # will use (default :incremental).
      # Set to :bulk_only to disable incremental
      # sync and only use bulk sync.
      set :sync_type, :bulk_only

      # Set the sync priority for this model.
      # 1000 is default, set to lower number
      # for a higher priority.
      set :sync_priority, 1

      # Instruct Rhom to send all attributes
      # to RhoConnect when an object is updated.
      # Default is disabled, only changed attributes
      # are sent.
      enable :full_update

      # RhoConnect provides a simple way to keep data out of redis.
      # If you have sensitive data that you do not want saved in redis,
      # add the pass_through option in settings/settings.yml for each source.
      # Add pass_through to client model definition
      enable :pass_through

      # model settings

      # Define how data is partitioned for this model.
      # For synced models default is :user.
      # For non-synced models default is :local
      # If you have an :app partition
      # for your RhoConnect source adapter and use bulk sync,
      # set this to :app also.
      set :partition, :app

      # Define blob attributes for the model.
      # :blob           Declare property as a blob type
      #
      # :overwrite      (optional) Overwrite client copy
      #                 of blob with new copy from server.
      #                 This is useful when RhoConnect modifies
      #                 images sent from Rhodes, for example
      #                 zooming or cropping.
      property :image_url, :blob, :overwrite

      # You can define your own properties also
      property :mycustomproperty, 'hello'
    end

<a name="fixed_schema"></a>
### Fixed Schema
With a fixed schema model, each model has a separate database table and each attribute exists as a column in the table.  In this sense, fixed schema models are similar to traditional relational tables.

#### Fixed Schema Advantages
* Smaller database size, indexes can be specified only on specific attributes.
* Sync process may perform faster because whole objects are inserted at a time.

#### Fixed Schema Disadvantages
* Schema changes must be handled with data migrations.
* Database performance may be slow unless you specify proper indexes.

#### Using Fixed Schema Models
Using a fixed schema model involves an additional step to using a property bag model.

First, generate the model using the `rhodes` command:

    :::term
    $ rhodes model product name,brand,price,quantity,sku

Next, change the include statement in `product.rb` to `include Rhom::FixedSchema` and add the attributes:

    :::ruby
    class Product
      include Rhom::FixedSchema

      # Uncomment the following line to enable sync with Product.
      # enable :sync

      property :name, :string
      property :brand, :string
      property :price, :string
      property :quantity, :string
      property :sku, :string

      property :int_prop, :integer
      property :float_prop, :float
      property :date_prop, :date #translate to integer type
      property :time_prop, :time #translate to integer type

    end

That's it!  Now your model is a fixed schema model, the table will be generated automatically for you when the application launches.

Below is a full list of options available to fixed schema models:

    :::ruby
    class SomeModel
      include Rhom::FixedSchema

      # rhoconnect settings
      # Enable sync for this model.
      # Default is disabled.
      enable :sync

      # Set the type of sync this model
      # will use (default :incremental).
      # Set to :bulk_only to disable incremental
      # sync and only use bulk sync.
      set :sync_type, :bulk_only

      # Set the sync priority for this model.
      # 1000 is default, set to lower number
      # for a higher priority.
      set :sync_priority, 1

      # Instruct Rhom to send all attributes
      # to RhoConnect when an object is updated.
      # Default is disabled, only changed attributes
      # are sent.
      enable :full_update

      # RhoConnect provides a simple way to keep data out of redis.
      # If you have sensitive data that you do not want saved in redis,
      # add the pass_through option in settings/settings.yml for each source.
      # Add pass_through to client model definition
      enable :pass_through

      # model settings

      # Define how data is partitioned for this model.
      # Default is :user.  If you have an :app partition
      # for your RhoConnect source adapter and use bulk sync,
      # set this to :app also.
      set :partition, :app

      # Set the current version of the fixed schema.
      # Your application may use it for data migrations.
      set :schema_version, '1.0'

      # Define fixed schema attributes.
      # :string and :blob types are supported.
      property :name, :string
      property :tag, :string
      property :phone, :string
      property :image_url, :blob

      # Define a named index on a set of attributes.
      # For example, this will create index for name and tag columns.
      index :by_name_tag, [:name, :tag]

      # Define a unique named index on a set of attributes.
      # For example, this will create unique index for the phone column.
      unique_index :by_phone, [:phone]

      # Define blob attributes for the model.
      # :blob           Declare property as a blob type
      #
      # :overwrite      (optional) Overwrite client copy
      #                 of blob with new copy from server.
      #                 This is useful when RhoConnect modifies
      #                 images sent from Rhodes, for example
      #                 zooming or cropping.
      property :image_url, :blob, :overwrite

      # You can define your own properties also
      property :mycustomproperty, 'hello'
    end

## Data Migrations
### Fixed Schema Data Migrations
Rhom provides an application hook to migrate the data manually.  You can also use this hook to run business logic related to updating the database.  For example, your application may want to display a customized alert notifying the user that a migration is in progress and it may take a few moments.

To use this hook, first we need to track the `:schema_version` in our model:

    :::ruby
    class Product
      include Rhom::FixedSchema

      set :schema_version, '1.1'
    end

Next, we will implement the following hook in our `application.rb` class:

#### `on_migrate_source(old_version, new_src)`
This is called on application start when `:schema_version` has changed.

    :::ruby
    class AppApplication < Rho::RhoApplication

      # old_version     String containing old version value (i.e. '1.0')
      # new_src         Hash with source information:
      #                 'schema_version', 'name', 'schema'
      #                 new_src['schema']['sql'] contains new schema sql
      def on_migrate_source(old_version, new_src)
        # ... do something like alert user ...

        db = Rho::RHO.get_src_db(new_src['name'])
        db.execute_sql("ALTER TABLE #{new_src['name']} ADD COLUMN mytest VARCHAR DEFAULT null")

        true # does not create table
      end
    end

**NOTE: To modify schema without recreate table, you can use only ADD COLUMN command, you cannot remove column or change type(This is sqlite limitation) **

Return `false` to run the custom sql specified by the new_src['schema']['sql'] string:

    :::ruby
    def on_migrate_source(old_version, new_src)
      # ... do something like alert user ...
      false # create table by source schema - useful only for non-synced models
    end

**NOTE: For sync sources, you cannot just recreate table without data copy. Because server will not send this data at sync time. **

### Property Bag Data Migrations
No data migration required, since all attributes are dynamic.
If you want to remove all local data when upgrading to new application version: change `app_db_version` in `rhoconfig.txt`.

This scenario will work for Property Bag and Fixed Schema models.

## Adding new objects
Use the `create` method to create a new model object and save it to the database.

NOTE: This is the fastest way to insert a single item into the database.

    :::ruby
    user = User.create(
            :name => 'Alice',
            :email => 'alice@example.com')

You can also create the new model object without saving it automatically and then explicitly use the `save` method. This is useful when you want to update some of the object attributes before saving.

    :::ruby
    user = User.new(:name => 'Alice')
    # update the object
    user.email = 'alice@example.com'
    user.save

## Retrieving objects
You can retrieve all objects for a model or only those matching given conditions using the `find` method.

### Getting all objects for a model
You can retrieve all objects for a model using the `all` parameter.

    :::ruby
    users = User.find(:all)

### Finding objects matching conditions
You can retrieve all objects matching given conditions using the `conditions` parameter.

    :::ruby
    users = User.find(
                :all,
                :conditions => {:name => 'Alice'}
            )

### Numeric field comparisons in property bag models
Because, internally, property bag models store all their values in the same column, this column is defined as `varchar`, which means that number comparisons do not work as you would expected. If you need to perform order comparisons on a numeric field in a property bag model, use CAST to convert the value to a number of the desired type:

    :::ruby
    @accts = Account.find(:all,
        :conditions => { {:func=> 'CAST', :name=>'rating as INTEGER', :op=>'<'} => 3 } )
    #or using sql query:
    size = 3
    @accts = Account.find(:all,
        :conditions => ["CAST(rating as INTEGER)< ?", "#{size}"], :select => ['rating'] )

### Ordering the objects
You can retrieve objects sorted by one or more attributes using the `order` and `orderdir` parameters.

    :::ruby
    # order by one attribute
    users = User.find(
                :all,
                :order => 'name',
                :orderdir => 'DESC'
            )

    # order by multiple attributes
    users = User.find(
                :all,
                :order => ['name', 'email'],
                :orderdir => ['ASC', 'DESC']
            )

### Retrieving specific attributes
If, for a particular action, you do not need every attribute in an object, you can make your application faster by selecting only the specific attributes you need using the `select` parameter.

    :::ruby
    users = User.find(
                :all,
                :select => ['name']
            )

### Paginating results
NOTE: this section applies to Ruby only

You can pass `offset` and `per_page` parameters to `find` method to retrieve objects in chunks.

    :::ruby
    # get first 10 records
    users = User.find(:all, :per_page => 10)

    # get records 21-40
    users = User.find(:all, :offset => 20, :per_page => 20)

For convenience, there is a `paginate` method which emulates Rails' classic pagination syntax. The default page size is 10.

You can use `:conditions`, `:order` and `select` parameters, similarly to the `find` method.

    :::ruby
    # get first 10 records
    users = User.paginate(:page => 0)

    # get records 21-40
    users = User.paginate(:page => 1, :per_page => 20)

### Retrieving only the first object matching conditions
You can get only the first object matching given conditions using `first` instead of `all` when calling `find`.

    :::ruby
    user = User.find(
                :first,
                :conditions => {:name => 'Alice'}
            )

### Using SQL queries directly
You can directly retrieve model object(s) using SQL queries with the `findBySql` method. This method works only for fixed schema models.

    :::ruby
    users = User.findBySql('SELECT * FROM User')

## Counting objects
You can get the number of objects matching given conditions using the `count` parameter with `find` method.

    :::ruby
    count = User.find(
                :count,
                :conditions => {:name => 'Alice'}
            )

## Updating
You can update an object’s attributes and save it to the database using the `updateAttributes` method

NOTE: This is the fastest way to add or update item attributes.

    :::ruby
    user = User.find(:first, :conditions => {:name => 'Alice'})
    user.update_attributes(
                :name => 'Bob',
                :email => 'bob@example.com')

## Deleting
### Deleting one object
To delete one model object use the `destroy` method on the object to be deleted.

    :::ruby
    user = User.find(:first)
    user.destroy

### Delete multiple objects
To delete all objects for a model, or only those matching given conditions, use the `delete_all` method.

    :::ruby
    # delete all objects
    User.delete_all()

    # delete only objects matching :conditions
    User.delete_all(:conditions => {:name => 'Alice'})

## Transactions
Use transactions to group together database operations that must either succeed or fail as a group, without leaving any partially completed operations. You can combine any set of object/model operations like insert/update/delete under a transaction.

    :::ruby
    db = Rho::Database.new
    db.startTransaction
    begin
        # do multiple operations
        User.create(:name => 'Alice', :email => 'alice@example.com')
        User.create(:name => 'Bob', :email => 'bob@example.com')

        # no errors, so commit all the changes
        db.commitTransaction
    rescue
        # on error rollback all changes
        db.rollbackTransaction
    end

## Executing SQL
You can execute SQL statements directly on the database by using `Database.executeSql` method.

    :::ruby
    begin
        db = Rho::Database.new(Rho::Application.databaseFilePath('app'),'app');
        result = db.executeSql('SELECT * FROM User') # result is an array of hashes, where each hash is a record
    ensure
        db.close
    end

    :::ruby
    db.executeBatchSql("UPDATE User set valid=0; Update Account set active=0")

## Resetting database
You can use the following method for recovering the database from a bad or corrupt state or if the RhoConnect server returns errors.

### Delete all objects for given models.

    :::ruby
    Rho::ORM.databaseFullResetEx(:models => ['User'], :reset_client_info => true, :reset_local_models => true)

## Adding more fields to an existing model

The list of attributes in a model can be updated as development progresses. If you are using the PropertyBag storage scheme (the default), the only thing you need to do is add the relevant code to the views (`index.erb`, `edit.erb`, `new.erb` and `show.erb`)  and Rhodes will take care of the rest. If you have switched to FixedSchema, however, you also need to add the appropriate lines in your model `.rb` file:

    :::ruby
    property :<property_name> :<data_type>

In our example `Product` model, for example, we could add

    :::ruby
    property :color, :string

The guide [Using the local database](../rhodes/rhom#fixed-schema) contains all the details on which data types are supported, as well as other ways to fine-tune data synchronization.

## Linking a model to a RhoConnect synchronization server

### What is RhoConnect
RhoConnect is the server-side part of RhoMobile Suite that connects your mobile application to external data sources. Whether your data comes from a relational database, NoSQL data store, RESTful web services or any other data source, RhoConnect bridges the gap between mobile clients and server resources. Using RhoConnect frees you from writing error-prone, hard to maintain synchronization code and takes care of all aspects of data sync.


### Integrating a mobile Rhodes application with RhoConnect
Once your application can store data about a particular model, enabling two-way synchronization with a RhoConnect server is a one-step process: there is only one line to change, in your model file (`product.rb` in our example), uncomment the line

    :::ruby
    enable :sync

As long as your RhoConnect server is properly configured, this is all that is required to benefit from automatic, two-way synchronization. See the [RhoConnect Tutorial](../tutorial/rhoconnect) for in-depth information about the benefits RhoConnect provides, as well as [Using the local database](../rhodes/rhom#fixed-schema) to find out how to tune data synchronization according to the needs of your application.

## Associations
Rhom has a `sync association` called `belongs_to` which you can use to trigger updates on sync-enabled models. This is useful where you have relationships between backend service objects.

For example, you can have a list of customers who are assigned to a sales person:

    :::ruby
    class Customer
      include Rhom::PropertyBag

      # Declare container model and attribute.
      belongs_to :salesrep_id, 'SalesRep'
    end

The value you must use as the identifier to link objects is the `object` property

    :::ruby
    def create
      @customer = Customer.new(@params['customer'])
      @customer.save

      sales_rep = SalesRep.find(...) # find the appropriate sales representative for new customers
      customer.salesrep_id = @sales_rep.object
      customer.save
      redirect :action => :index
    end

You can also define polymorphic sync associations, or sync associations across multiple classes.

Using array notation:

    :::ruby
    belongs_to :parent_id, ['Product', 'Case']

Or multiple declarations:

    :::ruby
    belongs_to :parent_id, 'Product'
    belongs_to :parent_id, 'Case'


If you are planning to use the bulk sync feature for your associated models, then you should take into consideration the
corresponding support on the RhoConnect Server side. See [RhoConnect Bulk Sync associations](../rhoconnect/bulk-sync#bulk-sync-associations).

## Freezed models
If you want to limit model attributes by specific list - you can 'freeze' model:

    :::ruby
    class Customer
        include Rhom::PropertyBag

        enable :sync

        set :freezed, true

        property :address, :string
        property :city, :string
        property :email, :string
    end

For such models if you try to set a property that has not been explicitly defined, you will get ArgumentError exception:

    :::ruby
    obj = Customer.new( :wrong_address => 'test') #will raise ArgumentError exception
    obj = Customer.create( :wrong_address => 'test') #will raise ArgumentError exception

    obj = Customer.new
    obj.wrong_address = 'test' #will raise ArgumentError exception

    obj = Customer.new
    obj.update_attributes(:wrong_address => 'test') #will raise ArgumentError exception

**NOTE: FixedSchema models are 'freezed' by default. This is only supported in Ruby models.**

## Resetting the Database
Rhodes provides the following functions for recovering the database from a bad or corrupt state, or if the RhoConnect server returns errors.

### `Rhom::Rhom.database_full_reset(reset_client_info=false, reset_local_models=true)`
Deletes all records from the property bag and model tables.

    :::ruby
    # reset_client_info   If set to true, client_info
    #           table will be cleaned.
    #
    # reset_local_models  If set to true, local(non-synced models)
    #           will be cleaned.
    Rhom::Rhom.database_full_reset(false,true)

### `Rhom::Rhom.database_full_reset_and_logout`
Perform a full reset and then logout the RhoConnect client.

    :::ruby
    Rhom::Rhom.database_full_reset_and_logout

### `Rhom::Rhom.database_fullclient_reset_and_logout`
Equivalent to `Rhom::Rhom.database_full_reset(true)` followed by `SyncEngine.logout`.

    :::ruby
    Rhom::Rhom.database_fullclient_reset_and_logout

**NOTE: If you receive a sync error "Unknown client" message in your sync callback, this means that the RhoConnect server no longer knows about the client and a `Rhom::Rhom.database_fullclient_reset_and_logout` is recommended.  This error requires proper intervention in your app so you can handle the state before resetting the client.  For example, your sync notification could contain the following:**

    :::ruby
    if @params['error_message'].downcase == 'unknown client'
      puts "Received unknown client, resetting!"
      Rhom::Rhom.database_fullclient_reset_and_logout
    end

### `Rhom::Rhom.database_local_reset`
Reset only local(non-sync-enabled) models.

    :::ruby
    Rhom::Rhom.database_local_reset

### `Rhom::Rhom.database_full_reset_ex( :models => [model_name1, model_name2], :reset_client_info=>false, :reset_local_models => true)`
Deletes all records from the property bag and model tables, if models are set then reset only selected models

    :::ruby
    # models                Array of models names to reset
    # reset_client_info   If set to true, client_info
    #           table will be cleaned.
    #
    # reset_local_models  If set to true, local(non-synced models)
    #           will be cleaned.
    Rhom::Rhom.database_full_reset_ex(:models => ['Product', 'Customer'])

## Advanced Queries
### `find(*args)` (advanced conditions)
Rhom also supports advanced find `:conditions`.  Using advanced `:conditions`, rhom can optimize the query for the property bag table.

Let's say we have the following SQL fragment condition:

    :::ruby
    Product.find(
     :all,
     :conditions => [
       "LOWER(description) like ? or LOWER(title) like ?",
       query,
       query
     ],
     :select => ['title','description']
    )

Using advanced `:conditions`, this becomes:

    :::ruby
    Product.find(
      :all,
      :conditions => {
      {
        :func => 'LOWER',
        :name => 'description',
        :op => 'LIKE'
      } => query,
        {
        :func => 'LOWER',
        :name => 'title',
        :op => 'LIKE'
      } => query
      },
      :op => 'OR',
      :select => ['title','description']
    )

You can also use the 'IN' operator:

    :::ruby
    Product.find(
      :all,
      :conditions => {
        {
        :name => "image_uri",
        :op => "IN"
      } => "'15704','15386'"
      }
    )

    # or use array notation
    Product.find(
      :all,
      :conditions => {
        {
        :name => "image_uri",
        :op => "IN"
      } => ["15704","15386"]
      }
    )

You can also group `:conditions`:

    :::ruby
    cond1 = {
      :conditions => {
        {
        :func => 'UPPER',
        :name => 'name',
        :op => 'LIKE'
      } => query,
        {
        :func => 'UPPER',
        :name => 'industry',
        :op => 'LIKE'
      } => query
      },
      :op => 'OR'
    }

    cond2 = {
      :conditions => {
        {
        :name => 'description',
        :op => 'LIKE'
        } => 'Hello%'
      }
    }

    @accts = Account.find(
      :all,
      :conditions => [cond1, cond2],
      :op => 'AND',
      :select => ['name','industry','description']
    )

## Find by numeric field
To use number comparison conditions in find use CAST :
    :::ruby
    @accts = Account.find(:all,
        :conditions => { {:func=> 'CAST', :name=>'rating as INTEGER', :op=>'<'} => 3 } )
    #or using sql query:
    size = 3
    @accts = Account.find(:all,
        :conditions => ["CAST(rating as INTEGER)< ?", "#{size}"], :select => ['rating'] )

## Database Encryption

**NOTE: As of Rhodes version 3.3.3, [Rhom data encryption](#database-encryption) is removed from Rhodes. This feature is only supported in Zebra RhoMobile Suite. If you wish to use this feature, you will need to [upgrade to RhoMobile Suite](rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](build_config#other-build-time-settings). Additionally, a [RhoElements license](licensing) is required.**

If your application requires that the local database is encrypted on the filesystem, you can enable it by setting a flag in `build.yml`:

    :::yaml
    encrypt_database: 1

**NOTE: Database encryption is not supported for applications that use bulk sync at this time.**

### Platform Notes
* iOS: Uses AES 128 encryption algorithm from iOS SDK.
* Android: Uses AES 128 ecryption algorithm from Android SDK.
* Windows Mobile: Uses RC4 algorithm from Windows Mobile SDK.

## Related reading

* [Database API reference](../api/Database)
