# Debugging with RhoSimulator

## What is RhoSimulator

RhoSimulator lets you run your RhoMobile applications on a simulated device, so that you can see how it looks, test and debug it. RhoSimulator builds and runs your application much faster than other emulators, making it useful for rapid testing and debugging.

Once your application is running under RhoSimulator, you can make changes to your source files and just press ‘Refresh’ to see your changes live, i.e. generally no RhoSimulator restart is required. The restart of RhoSimulator is required only if a model was added/modified or some code was changed in the `AppApplication` class.

### Uses

* Debug Ruby code by using RhoStudio.
* Debug JavaScript.
* Live edit HTML and CSS.
* Diagnose network activity and AJAX calls.

### Limitations

* You can run your application under RhoSimulator even without installing the simulated platform's SDK (for example, you can simulate iOS under Windows, or Windows Mobile under OSX). However, RhoSimulator does not attempt to replicate all features of a real device. For example: certain hardware features like the camera or barcode scanner are not replicated.
* RhoSimulator is currently only available for Windows and Mac OS X.

> Note: As the name implies, RhoSimulator *simulates* not *emulates* different platforms. This difference is significant, it means that, while your application will generally act as if it was running on the selected platform, you should not expect all features to work exactly as they will on a real device. The use of RhoSimulator is encouraged for testing and debugging, but you still need to test on a physical device (or, at the very least, the platform's native *emulator*) to make sure your application behaves as you expect

## Prerequisites

* You may want to [install RhoStudio](rhomobile-install) and use it as your IDE; although recommended, this step is optional, you can still use RhoSimulator from the command line.

## Running your application in RhoSimulator

### Running RhoSimulator from RhoStudio

Ensure that your application is configured properly and successfully runs in [RhoSimulator from the command line](#running-rhosimulator-from-command-line)

* In RhoStudio, select your RhoMobile project from the Project Explorer.
* Select 'Run' -> 'Run Configurations' from the main menu. The Run Configurations window appears.
* Find 'RhoMobile Application' section on the left and add new (or modify existing) configuration.
* Select the required platform.
* Select RhoSimulator for the Simulator type.
* Click 'Run' to start the RhoSimulator.

> Note: Windows Mobile and Windows CE apps that use the webkit will not be able to run in the RhoSimulator because of the limitations of the memory in the simulator.

The below screenshot shows run configuration for RhoSimulator for the iPhone platform

![Run Configuration](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/run-configuration.png)

The below screenshot shows the RhoSimulator mimicking an iPhone

![Device Window](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/device-window.png)

The below screenshot shows the Web Inspector provided by the RhoSimulator

![Web Inspector](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/web-inspector-window.png)

## Using the Web Inspector

RhoSimulator has two windows, one is where your application runs and the other is the Web Inspector, a powerful debugging aid that allows you to inspect the web interface for your application and try out certain changes live on your HTML and CSS.

### Examining the DOM

In the 'Elements' tab of Web Inspector you can examine the DOM tree structure of the HTML page that is currently visible. 

You can select and examine individual elements in the DOM tree by using one of the following methods:

#### Using the element picker

Click on the 'Magnifying glass' icon in the bottom toolbar

![Magnifying glass icon](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/html-element-picker.png)

In the device window, click on the HTML element you want to inspect

![Selecting an element](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/selecting-html-element.png)

In the inspector window, the selected element is highlighted

![Selected element](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/selected-html-element.png)

#### Using the search box

In the 'Elements' tab search box, you can enter text to match any of the attributes, content or even tag name of the element. All the matching elements will be highlighted.

![Search elements](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/search-elements.png)

#### Expanding/collapsing the DOM tree

You can also navigate directly to the required HTML element by expanding/collapsing the tree using the disclosure arrows to the left of all tags with children

![DOM tree arrows](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/dom-tree-arrows.png)

### Live editing HTML and CSS

The Web Inspector lets you modify your page and styles live. This provides a quick way to try out HTML and CSS changes to see how they look without having to go back to RhoStudio (or other IDE), providing you with very fast feedback and avoiding the tedious edit-save-refresh cycle.

> Note: These changes are only temporarily applied to the page inside RhoSimulator. To make them permanent you must actually update your HTML/CSS files.

The following changes can be made live:

#### Editing element attributes

* Double click the element's attribute name or value
* Edit the text
* Press enter to apply the change or escape to cancel

For example, edit the CSS class attribute.

![Edit attribute](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-edit-attribute.png)

#### Editing element inner text

* Double click the text inside the element
* Edit the text
* Press enter to apply the change or escape to cancel

For example, the 'Login' button name is changed to 'Sign in'.

![Edit innertext](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-edit-innertext.png)

#### Edit element tag

* Double click the element's tag name
* Edit the tag
* Press enter to apply the change or escape to cancel

![Edit tag](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-edit-tag.png)

#### Delete element

* Click the element
* Press Delete key

#### Edit a style declaration

* Inside a CSS rule, double click the property or value part of the declaration
* Edit the property or value
* Press enter to apply the change or escape to cancel

For example, change 'text-align' to 'right'

![Edit declaration](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-edit-declaration.png)

#### Temporarily disable a style declaration

* Inside a CSS rule, click the checkbox to the right of the declaration to temporarily disable or click again to reenable it

For example, disable 'text-align'

![Disable declaration](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-disable-declaration.png)

#### Add a style declaration

* Double click the opening or closing braces of a CSS rule
* Type in the property name followed by a colon and the value
* Press enter to apply the change or escape to cancel

For example, add a new 'border-style'

![New declaration](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-new-declaration.png)

#### Create new style rule

* Click the small 'Gear' icon to the right of the 'Styles' heading
* Select 'New Style Rule'
* Edit the selector as required and press enter or escape to cancel
* Type in the property name followed by a colon and the value
* Press enter to apply the change or escape to cancel

![New rule](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-new-rule.png)

#### Edit style selector

* Double click the style rule's selector
* Edit the text
* Press enter to apply the change or escape to cancel

![Edit selector](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/live-edit-selector.png)

### Checking resources used by a page

The 'Resources' tab allows you to see the resources being loaded and used by the current page. 

This includes assets like:

* JavaScript
* Stylesheets
* Images

as well as cookies, if your application uses them

![Resources Tab](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/resources.png)

### Diagnosing network activity and AJAX calls

The 'Network' tab allows you to see the HTTP requests your application makes and how long they take to fetch. 

* Click on any of the names on the left to view the headers and content for the request.
* Use the data from the 'Latency' and 'Timeline' columns to optimize the time taken for your application screens to load (move your mouse over each row in the graph to get numerical values).

![Network Tab](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/network.png)


### Debugging JavaScript code

The 'Scripts' tab allows you to set breakpoints and inspect variables in your JavaScript code.

#### Setting breakpoints

* Select the required script source file from the dropdown
* Goto the line where you want to set breakpoint
* Click on left margin where the line number is displayed, a flag will appear over the line number to indicate that a breakpoint has been set
* To remove the breakpoint, click on the flag that appears over the line number
* Breakpoints are also displayed as a list on the right side of the inspector, under the heading 'Breakpoints'
* Toggle the checkbox in the list view to temporarily disable and reenable the breakpoint

![Breakpoints](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/javascript-breakpoints.png)

#### Inspecting variables

When the application is paused at a breakpoint or by pressing the 'Pause' button, you can inspect the values of JavaScript variables.

* Local variables are automatically displayed under the 'Scope Variables' heading
* If you switch to a different stack frame under the 'Call Stack' heading, the local variables displayed will match the currently selected stack frame
* You can use 'Watch Expressions' to add an expression that needs to be evaluated every time the code is paused. This can simply be a variable or it can be any valid JavaScript expression.


### The console

The 'Console' tab allows you to view log messages and also to execute and debug your JavaScript.

![Console](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/console.png)

The console can also be accessed as part of any of the other tabs by using the 'Show console' button at the bottom left corner of the other tabs.

![Embedded Console](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/console-embedded.png)

#### Logging

The Console logs messages from the system and also from your application code.

![Filtering messages](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/filtering-console-messages.png)

##### Generating log messages from your application

To generate log messages from your application (JavaScript) code, call the console.log() method

    :::javascript
    console.log("Hello, world");

This output is not visible by the end user, and is very useful for debugging.

#### Interactive JavaScript

The console allows fully interactive JavaScript usage. 

You can:

* Evaluate any valid JavaScript expression
* Examine variables or object properties
* Invoke methods on objects

![Interactive JavaScript](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/interactive-javascript.png)

### Running RhoSimulator from command line

Run one of the following commands inside the application folder, depending on the platform you want to simulate:
    
* Android

        rake run:android:rhosimulator

* iOS

        rake run:iphone:rhosimulator

* Windows Phone 8

        rake run:wp8:rhosimulator 

* Windows Mobile

        rake run:wm:rhosimulator

* Windows (desktop)

        rake run:win32:rhosimulator


## Debugging Ruby code

You can use RhoSimulator along with RhoStudio debugger to debug the Ruby code in your RhoMobile application.

### Starting a debug session

Ensure that your application is configured properly and successfully runs in [RhoSimulator from the command line](#running-rhosimulator-from-command-line)

* In RhoStudio, select your RhoMobile project from the Project Explorer.
* Select 'Run' -> 'Debug Configurations' from the main menu. The Debug Configurations window appears.
* Find 'RhoMobile Application' section on the left and add new (or modify existing) configuration
* Select the required platform.
* Click 'Debug' to start the debugger.

![Debug Configuration](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/debug-configuration.png)

RhoStudio will, by default, switch to the 'Debug' perspective, and it will establish a connection with RhoSimulator so that you can:

* Set breakpoints.
* Step through code.
* Inspect variables when the application is stopped at a breakpoint in the Variables window.
* View log messages in the Console window.

![RhoStudio Debugging](https://s3.amazonaws.com/docs.tau-technologies.com/images/guide/debugging_with_rhosimulator/rhostudio-debug-ruby.png)
