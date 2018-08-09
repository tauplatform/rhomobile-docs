# Zebra Adaptive Printer Driver Overview
Zebra Adaptive Printer Driver (APD) is a small executable program that runs on Zebra Mobile Computers. It provides a simple, yet powerful, interface to software applications, to transfer data from the user's software application to virtually any portable printer, via cable, or Bluetooth, short-range RF, or WLAN wireless connections.

## Why You Would Use the APD
APD takes care of connectivity. APD takes care of different printer command languages. This means your application doesn't need to know what type of printer is being used, or how it is connected. You application only has to decide what to print, and to which printer.

## What APD Prints and What APD Prints With
APD can print receipts, labels, tags, tickets, whatever the printer can print.

APD can use virtually any portable printer, and many desktop and industrial printers. Here's some that we have tried: Zebra (includes Comtec and Eltron printers), O'Neil, Paxar-Monarch, Toshiba-TEC, Brother, Citizen Business Machines, Citizen Watch Co, Cognitive, Extech, Printronix, Sato, Seiko, S'Print.

## Step 1: Define the Printer Type and Connection
Scan the label on the printer: this tells the APD all it needs to know about the printer.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Printer-Type-Codes.jpg)

In this example, the printer type and language, connection type, and TCP port number is taken from the PRINTER ID bar code, and the IP address is taken from the IP Address bar code.

## Step 2: Send Data to the Printer via APD
The APD encodes the data into the relevant printer command language, opens connection to printer, sends data, and closes the connection. 

The printer accepts the combined set of data and commands, adds data from its own memory (such as a logo) if required, and prints the required item.

## Template Files
To get the full functionality of APD, you will probably require a template file. This is normally a simple text file, stored in the terminal's memory, that APD uses as a guide to format the data.

However, in some cases, not even this is required. APD has a built-in set of rules for the most popular printers (Zebra, Paxar, Toshiba-TEC etc.) to format data without a template file.

Also, if the data from the application is already formatted, APD needs nothing else.

### Coding using Zebra CPCL
The header and footer of our receipt can be designed using Zebra's "Label Vista" design software for Windows PCs, as shown below.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Zebra-CPCL.jpg)

This software allows the user to place text, barcode, and graphic fields onto a working area (the dotted area) and to select such parameters as font style, font size, line width, etc., as well as the position of each field.

Using the "Save" option, Label Vista converts the on-screen information to a set of commands that are saved in a simple text file.

Alternatively, you can work directly from the CPCL Programmers Manual and produce the set of commands directly using a text editor such as Notepad.

Either way, the command set will be very similar.

Note however, that Label Vista (or any other design software) can only approximate to what the printer actually produces. For example, in the example screen, "Al's Restaurant" is not displayed in the correct script-like font.

### CPCL Coding - Header
The CPCL commands for the header section are shown below.

	:::term
	! 0 200 200 250 1
	JOURNAL 
	COUNTRY CP850
	LEFT
	PCX 20 0 !<AlsLogo.pcx
	TEXT 1 0 50 100 Al's Restaurant
	TEXT 5 0 0 160 Date: 02/03/2004     Table: 14
	TEXT 5 0 0 190 Your waiter today:   Alphonso
	LINE 0 230 350 230 3
	POSTFEED 0
	PRINT

A few things to note about this:

* The first line starts with "!" which indicates the start of a command set. “PRINT” indicates the end of the command set.
* The rest of line 1, and Lines 2 to 4 define various parameter settings to suit our receipt (see the Zebra CPCL Programmers Manual for details).
* The “PCX” command inserts the restaurant logo and the “TEXT” commands define the font, size and position of the specified text fields.
* “LINE” draws a line 350 dots long, at a position 230 dots down from the top of the receipt and having a line width of 3 dots.
* “POSTFEED 0” is used to cancel the postfeed command used in the footer section.

### CPCL coding - Footer
The CPCL commands for the footer section, shown below, are similar to those in the header.

	:::term
	! 0 200 200 300 1
	LEFT
	LINE 0 0 350 0 3
	TEXT 4 0 20 20 TOTAL: oe 45.75
	TEXT 5 0 70 70 Includes oe 6.87 VAT 
	TEXT 1 0 100 110 Thank you.
	TEXT 5 0 10 160 We hope to see you again soon!
	B 39 2 1 50 20 200 45.75
	POSTFEED 80
	PRINT

* As before, the command set starts with “!” and ends with “PRINT”.
* The “LINE” command is identical to that in the header, except that the line is drawn above the three lines of text.
* Note that the Pound (currency) character is displayed as a "oe". This is because the printer uses ASCII character “9C” (hex) for “Pound”, whereas “Notepad” (on the PC) uses “A3”.
* The “B” command defines the symbology, size, position and content of the barcode.
* “POSTFEED 80” is used to advance the paper to a convenient tear off point below the barcode.

> Note: For full details of these commands refer to the Zebra CPCL Programmers Manual.

### CPCL – Line printer Section
The line printer section is shown below.

	:::term
	! U1 SETLP 7 0 20
	1 Chicken Soup      œ  2.50
	1 Melon + Parma     œ  3.00
	1 Beef Stroganoff   œ 12.50
	1 Lasagne           œ 10.50
	2 Green Salad       œ  4.50
	1 Banana Delight    œ  3.25
	1 Tiramisu          œ  3.50
	2 Coffee            œ  4.00
	1 Liqueur           œ  2.00

* The first line is not strictly using line printer mode. It is a command to set the font style and size that line printer mode will use.
* The other nine lines comprise the data to be printed in line printer mode, with no other information added. The printer will print this data, line-by-line, using the font defined earlier.
* Note that, as in the footer, the Pound (currency) character is displayed as a "oe" because the printer uses ASCII character “9C” (hex) for “Pound”, whereas “Notepad” uses “A3”.
* Note also, that as tab or other position setting commands cannot be used, spaces are inserted to correctly position the data in columns. However, this will not work if a proportionally spaced font is selected.

> Note: For full details of line printer mode, please refer to the Zebra CPCL Programmers Manual.

### CPCL – Combine all sections
The complete data file to print our receipt on the Zebra Cameo 2 printer is shown below.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Zebra-CPCP-combine-all.jpg)

However, there is one major problem: This will always print exactly the same receipt! So we need to define which parts of the receipt need to change for each new receipt printed, and which can stay the same. In the text above, all the variable data has been highlighted in red.

So now, we can produce a template file which is the same as the text shown left, except that all the red text is replaced by markers to indicate the points at which new variable data is to be inserted by the application.

Using the Zebra Adaptive Printer Driver, the template is external to the application. For the application programmer, this means that:

* The application only needs to produce the variable text (I.e. the red bits)
* The application programmer need have no knowledge of CPCL. (The template can be produced by someone else).
* The application can also work with printers that do not use CPCL.

### Example Template 1
![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Zebra-CPCP-example-template-label.jpg)

The box below shows the contents of the template file used to generate the above label using a Zebra QL220 portable printer.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Zebra-CPCP-example-template-1.jpg)

The markers (e.g. $$[1]$$) shown in red tell the APD where to insert the data from the user application (shown below). The rest of the information, in black, comprises commands that the printer requires to set out the label.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Zebra-CPCP-example-template-1a.jpg)

### Example Template
The template used by the Zebra Adaptive Printer Driver to print our receipt on the Zebra printer is shown below.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-Zebra-CPCP-example-template-2.jpg)

The “date” variable is inserted at the position indicated by marker $$[1]$$. “Table number” is inserted at $$[2]$$.

### Application data
Now that all the CPCL-specific commands and static data have been removed to the template file, the application software only needs to produce the variable data, as shown below.

	:::term
	$$[CMD:0101,1]$$ 
	TR2 
	02/03/2004 
	14
	Alphonso
	 45.75
	  6.87 
	 1 Chicken Soup        œ  2.50
	 1 Melon + Parma       œ  3.00
	 1 Beef Stroganoff     œ 12.50
	 1 Lasagne             œ 10.50
	 2 Green Salad         œ  4.50
	 1 Banana Delight      œ  3.25
	 1 Tiramisu            œ  3.50
	 2 Coffee              œ  4.00
	 1 Liqueur             œ  2.00

* The top line is only necessary if the application is making use of the Adaptive Printer Driver's embedded commands (as required when using Zebra PocketBrowser). Refer to APD Programmer's Manual for details of the APD's command set.
* The second line specifies the template file required, in this case “TR2”. 
* Note that the full name of the template file is actually “TR2.C22”, but the last part is determined automatically by the APD to suit the type of printer in use. In this way, the APD can select different template files if more than one printer type is in use; and the application need have no knowledge if which printer is in use.
* The variables (“date” onwards) are then listed, one line for each, in the numeric order that they are used by the template, which in this case is not the order in which they are printed.
* As stated on the previous page, the “total” and “vat” variables (4 and 5) come before the data to be inserted in the central, variable-length section. Also, “total” is only sent once, even though it is appears twice on the actual receipt (once as text, then again in the barcode).

>Note: A full explanation of this process is given in the APD Programmer's Manual.

## Change Printer: O'Neil 2T
Now, let's run the same application with an O'Neil 2T printer. Like the Zebra Cameo, this is a compact, portable printer, ideally suited to the task of printing receipts at the point of transaction. However, to use this printer, we need to code the data into O'Neil's “EZ Print” command language. If our application had been written with the “CPCL” commands within the application, changing to “EZ Print” would have required a substantial change to the application code. But, as we have extracted all the “CPCL” code into a template file, all that is needed to work with the O'Neil printer is a new template file.

Again, for the simplicity of this example, O'Neil's standard in-built fonts will be used. As these are not the same fonts as Zebra's, some of the text will look slightly different. If an exact match were required, appropriate new fonts could be downloaded to the printer. However, as with the Zebra Cameo, the “AlsLogo.pcx” file needs to be downloaded to the printer so it can print the logo.

As with the Zebra Cameo, The O'Neil 2T has a line printer mode. However, not all printers offer this facility and there may be other reasons for not using line printer mode. So, to illustrate the point, we will generate two templates for this printer: the first using line printer mode, and the second using “EZ Print” for the entire receipt.

### Coding for the O'Neil Printer
Following a similar process to that used for the Zebra printer, with “EZ Print” used for the header and footer sections and line printer mode for the central section, we can generate the complete print file shown below.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-ONeil-printer-coding.jpg)

* Again, all the variable data has been highlighted in red and this can be replaced by markers to produce the template file shown on the next page.
* This code contains non-printing characters: <esc> represents the escape character, 1B hexadecimal; <05h> represents binary number “5”.
* A string of 16 NUL characters (00 hex) is sent at the start to wake up the printer.
* EZ selects “EZ Print” mode and {LP} selects the line printer mode.
* w!A<05h> selects the font settings to be used for line printer mode.
* All assets must use a five-character name, so the graphic “AlsLogo.pcx” is called “ALSLO”. Font names start with “MF” and the barcode is “BC39N”.

### Template for O'Neil Printer (1)
Following the same process as used for the Zebra Cameo printer, all the red sections on the previous page have been replaced by the appropriate markers to give the template shown below.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-ONeil-template-1.jpg)

Exactly the same application data can be used with this template as was used with the template for the Zebra Cameo printer. In this case, the template will be called “TR2.N21”. The first part (TR2) is the same as before, as it relates to the same data; but the second part has been changed from “C22” to “N21” to show that it relates to an O'Neil 2T printer, rather than a Zebra Cameo 2.

The Adaptive Printer Driver will automatically select the appropriate version of “TR2” to suit the printer in use.

### Template for O'Neil Printer (2)
Although the template shown on the previous section will produce a perfectly good receipt, there is a slight issue with the central section. Because the standard O'Neil font used is narrower than that of the Zebra printer, there is a gap to the right of the price column.

![img](https://s3.amazonaws.com/docs.tau-technologies.com/images/moto-adaptive-printer-driver/APD-ONeil-template-1.jpg)

To improve the appearance of the receipt, the text can be centralized on the receipt. A simple way to do this is to insert spaces to the left of the text by changing:

	:::term
	$$[N6:%s\r\n]$$ 

to

	:::term
	$$[N6: %s\r\n]$$

Alternatively, “EZ Print” can be used for the whole receipt. Strictly this isn't necessary here, but “EZ Print” and has been implemented in the example, left, to demonstrate how it can be done. This process would also apply to printers that don't offer a line printer option.

The above template uses a different central section to the one on the previous page:

* The {LP} command to enter line printer mode for the central section, and the <esc>EZ command to return to “EZ Print” afterwards, have been removed.
* Each line of text in the central section is now preceded by the “EZ Print” command {PRINT:@5,50:MF204|, which moves the text to the right by 50 dots.
* {AHEAD 20} has also been added to set the correct vertical position.

## Conclusion
The previous pages show how the Zebra Adaptive Printer Driver makes use of template files to remove the need for application programs to deal with printer-specific command languages, and to allow the application to work with different types of printer without needing changes to the application program code.

Examples of templates for two popular printers were shown. Both of these printers offer a line printer mode, as well as a PCL (printer command language) mode, and the templates use both PCL mode and line printer mode. However, it is also possible to produce templates for printers that only offer a PCL mode, or only offer a line printer mode (the latter option assumes that the printer can print graphics and barcodes).

Zebra Moto, Zebra Technologies and the Stylized M Logo are trademarks or registered trademarks of Zebra Trademark Holdings, LLC and are used under license. All other trademarks are the property of their respective owners. ©2011 Zebra Technologies, Inc. All Rights Reserved.
