
#Msi Decoder

<b>
The Msi Decoder is used to enable or disable the msi decoder.
</b>

##Syntax

<table class="re-table"><tr><th class="tableHeading">msi (Decoder) &lt;META&gt; Syntax
</th></tr><tr><td class="clsSyntaxCells clsOddRow"><p>&lt;META HTTP-Equiv="scanner" content="msi:[parameter]"&gt;</p></td></tr></table>
<table class="re-table"><tr><th class="tableHeading">msi JavaScript Object Syntax:</th></tr><tr><td class="clsSyntaxCells clsOddRow">
By default the JavaScript Object <b>'scanner'</b> will exist on the current page and can be used to interact directly with the msi.
</td></tr><tr><td class="clsSyntaxCells clsEvenRow">
To Set msi parameters via JavaScript use the following syntax: scanner.Parameter = Value;
<P />e.g. <b>scanner</b>.msi = Value;
</td></tr></table>
<table class="re-table"><tr><th class="tableHeading">Msi Ruby Object Syntax:</th></tr><tr><td class="clsSyntaxCells clsOddRow">
By default the Ruby Object <b>'Scanner'</b> will exist on the current page and can be used to interact directly with the Msi.
</td></tr><tr><td class="clsSyntaxCells clsEvenRow">
To Set Msi parameters via Ruby use the following syntax: Scanner.Parameter = Value
<P />e.g. <b>Scanner</b>.msi = Value
</td></tr></table>



##Parameters


Items listed in this section indicate parameters, or attributes which can be set.
<table class="re-table"><col width="20%" /><col width="20%" /><col width="38%" /><col width="22%" /><tr><th class="tableHeading">Name</th><th class="tableHeading">Possible Values</th><th class="tableHeading">Description</th><th class="tableHeading">Default Value</th></tr><tr><td class="clsSyntaxCells clsOddRow"><b>msi:[Value]
</b></td><td class="clsSyntaxCells clsOddRow">enabled/Disabled</td><td class="clsSyntaxCells clsOddRow">Enables/Disables the msi decoder.</td><td class="clsSyntaxCells clsOddRow">Device specific</td></tr></table>
<table class="re-table"><col width="78%" /><col width="8%" /><col width="1%" /><col width="5%" /><col width="1%" /><col width="5%" /><col width="2%" /></table>





##Requirements

<table class="re-table"><tr><th class="tableHeading">RhoElements Version</th><td class="clsSyntaxCell clsEvenRow">1.0.0 or above
</td></tr><tr><th class="tableHeading">Supported Devices</th><td class="clsSyntaxCell clsOddRow">All supported devices.</td></tr><tr><th class="tableHeading">Minimum Requirements</th><td class="clsSyntaxCell clsOddRow">Scanner or Imager module and device that supports MSI.</td></tr><tr><th class="tableHeading">Persistence</th><td class="clsSyntaxCell clsEvenRow">Transient - Decoder settings are only guaranteed to persist until the Scanner is disabled</td></tr></table>


##HTML/JavaScript Examples

The following example enables the scanner to read only msi labels:

	<META HTTP-Equiv="scanner" Content="allDecoders:disabled">
	<META HTTP-Equiv="scanner" Content="msi:enabled">
	<META HTTP-Equiv="scanner" Content="enabled">
	
Above example can also be written as shown below:

	<META HTTP-Equiv="scanner" Content="allDecoders:disabled;msi:enabled;enabled">
	
or

	<META HTTP-Equiv="scanner-all_decoders" Content="disabled">
	<META HTTP-Equiv="scanner-msi" Content="enabled">
	<META HTTP-Equiv="scanner-enabled" Content="SCN1">
	
The following example enables the scanner to read all labels except msi:

	<META HTTP-Equiv="scanner" Content="allDecoders:enabled">
	<META HTTP-Equiv="scanner" Content="msi:disabled">
	<META HTTP-Equiv="scanner" Content="enabled">
	


