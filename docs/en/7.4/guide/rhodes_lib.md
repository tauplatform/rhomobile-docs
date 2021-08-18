# Using Rhodes app in Native Mobile app

Rhodes framework since v7.1 allows to build your Ruby/NodeJS Rhodes app as standalone lib and to use this lib within native Android, iOS or Windows Desktop/Tablet applications.
It can be useful in the following cases:

  - Development new  cross-platform application with native UI and extracting platform independent business logic to Rhodes Ruby/JS app; 
  - Reusing business logic from existing Rhodes app in new native Android, iOS or Windows Desktop/Tablet applications. 

## How it work

Rhodes standalone lib provides a few ways to connect a native code and Rhodes local server Ruby code.

  - Special new Rhodes API for direct calls of Ruby code (ObjC API for iOS, Java API for Android, C++ API for Windows)
  - HTTP request to local server to call controller Ruby code

![Native App with Rhodes app as standalone lib architecture](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/rhodes_lib_architectue.png)

## Building Rhodes Framework as standalone lib for your app

There we build Rhodes framework as standalone lib for the target platform and with all extensions in build.yml of your app.
It must required each time when you change build.yml: change included extensions for example.

### iOS
<code>
rake build:iphone:rhodeslib_framework["&lt;path to your native iOS app folder&gt;"]
</code>

### Android
<code>
rake build:android:rhodeslib_lib["&lt;path to your native Android app folder&gt;/app/libs/"]
</code>


### Windows
<code>
rake build:win32:rhodeslib_lib["&lt;path to your native windows app folder &gt;/RhodesApp"]
</code>

The dll with suffix "d" will be created if option build is set to 'debug' in build.yml. Necessary header files will be placed to rhoruby folder.

## Building Rhodes application bundle

### iOS
<code>
rake build:iphone:rhodeslib_bundle["&lt;full path to your native iOS application folder&gt;"]
</code>

The command prepares Rhodes application bundle and puts it to root of XCode project folder. 
The folder RhoBundle should be placed in root of XCode project folder.

if you want to use the framework standalone lib and the you application bundle in your already existing XCode project make next steps after generate the framework lib and app bundle:
        
  - open your native project in XCode;
  - Drag and Drop the bundle folder to root of your XCode project and make reference to folder option;
  - Drag and Drop the framework lib to root of your XCode project, add the framework lib to the embedded binary list (general option of project);

### Android
<code>
rake build:android:rhodeslib_bundle["&lt;full path to your native Android application folder&gt;/app/src/main/assets/"]
</code>

The command prepares Rhodes application bundle and puts it to your Android project folder. 

if you want to use the framework standalone lib and the you application bundle in your already existing Android project make next steps:

  - Make dir <code>/app/libs/</code> in your Android app if it doesn't exist;
  - Make dir <code>/app/src/main/assets/</code> (from shell or from Android Studio: right menu button on app item and -> new -> folder -> Assests Folder);
  - Prepare Rhodes framework standalone lib and Rhodes application bundle by rake commands described above;
  - In build.gradle in section dependencies add the next:
<pre><code>
implementation 'com.android.support:appcompat-v7:26.1.0'
implementation(name:'&lt;app name&gt;', ext:'aar')
</code></pre>
where &lt;app name&gt; is bundle name.

  - In AndroidManifest.xml in section application add the next:
<pre><code>
android:name="com.rhomobile.rhodes.RhodesApplication"
</code></pre>
  - Sync Project with Gradle Files
  - Build Android project


In sources:

  - Main Activity must be extends from <code>com.rhomobile.RhodesActivity</code> 
  - Extends RhoMain in own class for get event about starts Rhodes application - <code>onAppStart()</code> method. Example:
<pre><code>
class DefaultMain extends RhoMain
{
    @Override
    public void onAppStart()
    {
        super.onAppStart();
    }
}
</code></pre>
  - In main Activity within <code>OnCreate</code> add code for setup Rhodes:
<pre><code>
RhodesService.setRhoMain(new DefaultMain());
</code></pre>
<code>onAppStart()</code> will be called when Rhodes application(server) already started.
  
  - Build and run your Android project

### Windows
<code>
rake build:win32:rhodeslib_bundle["&lt;full path to your native windows application folder&gt;/RhodesApp"] 
</code>

The command builds and compile of the bundle by set path. The Bundle will be placed to RhodesBundle folder.

Further connection of the library is no different from the connection of any other library. That is, the path to .lib (stub for .dll) and the path to headers are always indicated, depending on the IDE, this may look like differently, for an example with Visual Studio, look in rhodes_lib_examples / NatvieWindows.

## Examples

You can find complete examples for iOS, Android and Windows Desktop/Tablet in this [repo](https://github.com/tauplatform/rhodes_lib_examples). 
Please read carefully  README.md for detail instructions.


