Installing RhoStudio as an Eclipse Plugin
==============

RhoStudio, which facilitates development of native smartphone applications, can be installed into Eclipse as a plug-in.

Prerequisites
----------------
You need to have installed:

* Java Runtime Environment, minimum of Java 5 JRE or JDK.
* [Rhodes gem](install#installing-rhodes-from-the-command-line).
* For RhoConnect, you also need the [RhoConnect gem](../rhoconnect/install#installing-rhoconnect-from-the-command-line).

Checking the Eclipse Installation
----------------

If you already have Eclipse installed, please ensure you have a supported version of Eclipse. Eclipse has a number of different versions, some of which may exhibit different behavior with the RhoStudio plugin. For this reason, RhoStudio is supported in Eclipse version 3.6.x (i.e. Helios) or later.

If you are installing Eclipse for the first time, navigate in your web browser to the Eclipse downloads page and go through the instructions to download it. You need the Eclipse IDE for Java Developers for your operating system, Eclipse version 3.6.x (i.e. Helios) or later.

Once the download is completed, unzip the downloaded package and copy the directory to where you want the Eclipse application to reside. Eclipse is a Java application, so no further installation steps are necessary.

Installing RhoStudio in Eclipse
------------------

Go to the Install New Software screen for Eclipse, or open it by selecting Help -> Install New Software from the menu.

The RhoStudio installation will install the Dynamic Languages Toolkit (DLTK) as part of the installation process. In order to do the RhoStudio installation into Eclipse, you must have an Eclipse Available Software Site for your version of Eclipse.  For Eclipse version 3.6 (Helios), the Available Software site is:

    Helios - http://download.eclipse.org/releases/helios

Your available software sites are visible by clicking on the drop-down next to "Work with:"

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-image24.png"/>

If you need to add the Software site, enter the url on the line next to "Work with:" and click on the "Add" button to the right.

**NOTE: If you have previously installed the DLTK, you may get an error when installing RhoStudio that there is a mismatch between your installed version and the RhoStudio version. Uninstall your previous DLTK version to fix this error.

In the Install popup, also add the RhoStudio update site:

* Enter name: RhoStudio
* Enter location: http://rhostudio.rhomobile.com

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-image17.png"/>

Check Rhomobile (or RhoStudio) and press Next. Follow the instructions.

<img src="https://s3.amazonaws.com/docs.tau-technologies.com/images/rhostudio-tutorial-image14.png"/>
