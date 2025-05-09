
#Korean3of5minLength Decoder Setting

<b>
The Korean3of5minLength Decoder Setting is used to set the korean3of5 minLength property.
</b>

##Syntax

<table class="re-table"><tr><th class="tableHeading">korean3of5minLength (Decoder Setting) &lt;META&gt; Syntax
</th></tr><tr><td class="clsSyntaxCells clsOddRow"><p>&lt;META HTTP-Equiv="scanner" content="korean3of5minLength:[parameter]"&gt;</p></td></tr></table>
<table class="re-table"><tr><th class="tableHeading">korean3of5minLength JavaScript Object Syntax:</th></tr><tr><td class="clsSyntaxCells clsOddRow">
By default the JavaScript Object <b>'scanner'</b> will exist on the current page and can be used to interact directly with the korean3of5minLength.
</td></tr><tr><td class="clsSyntaxCells clsEvenRow">
To Set korean3of5minLength parameters via JavaScript use the following syntax: scanner.Parameter = Value;
<P />e.g. <b>scanner</b>.korean3of5minLength = Value;
</td></tr></table>
<table class="re-table"><tr><th class="tableHeading">Korean3of5minLength Ruby Object Syntax:</th></tr><tr><td class="clsSyntaxCells clsOddRow">
By default the Ruby Object <b>'Scanner'</b> will exist on the current page and can be used to interact directly with the Korean3of5minLength.
</td></tr><tr><td class="clsSyntaxCells clsEvenRow">
To Set Korean3of5minLength parameters via Ruby use the following syntax: Scanner.Parameter = Value
<P />e.g. <b>Scanner</b>.korean3of5minLength = Value
</td></tr></table>



##Parameters


Items listed in this section indicate parameters, or attributes which can be set.
<table class="re-table"><col width="20%" /><col width="20%" /><col width="38%" /><col width="22%" /><tr><th class="tableHeading">Name</th><th class="tableHeading">Possible Values</th><th class="tableHeading">Description</th><th class="tableHeading">Default Value</th></tr><tr><td class="clsSyntaxCells clsOddRow"><b>korean3of5minLength:[Value]
</b></td><td class="clsSyntaxCells clsOddRow">Number (1 - 55)</td><td class="clsSyntaxCells clsOddRow">Numeric value setting the minimum number of characters in the barcode.</td><td class="clsSyntaxCells clsOddRow">Device specific</td></tr></table>
<table class="re-table"><col width="78%" /><col width="8%" /><col width="1%" /><col width="5%" /><col width="1%" /><col width="5%" /><col width="2%" /></table>





##Requirements

<table class="re-table"><tr><th class="tableHeading">RhoElements Version</th><td class="clsSyntaxCell clsEvenRow">1.0.0 or above
</td></tr><tr><th class="tableHeading">Supported Devices</th><td class="clsSyntaxCell clsOddRow">All supported devices except: Enterprise Tablet.</td></tr><tr><th class="tableHeading">Minimum Requirements</th><td class="clsSyntaxCell clsOddRow">Scanner or Imager module and device that supports korean_3of5.</td></tr><tr><th class="tableHeading">Persistence</th><td class="clsSyntaxCell clsEvenRow">Transient - Decoder settings are only guaranteed to persist until the Scanner is disabled</td></tr></table>


##HTML/JavaScript Examples

The following example enables the scanner and sets the minimum length of korean3of5 barcodes to read to 30

	<META HTTP-Equiv="scanner" Content="korean3of5:enabled">
	<META HTTP-Equiv="scanner" Content="korean3of5minLength:30">
	<META HTTP-Equiv="scanner" Content="enabled">
					


