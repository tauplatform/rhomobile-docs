# Timer API

Lets the device use a timer.

## start

Start the timer and call the callback when the timer has run.

	:::ruby
	Rho::Timer.start(interval_milliseconds, callback_url, callback_data)

Refer to [timer in device capabilities](../rhodes/device-caps#timer) for an example.

<table border="1">
<tr>
	<td><code>interval_millisecond</code></td>
	<td>Duration of timer in milliseconds.</td>
</tr>
<tr>
	<td><code>callback_url</code></td>
	<td>callback to call at end of timer duration.</td>
</tr>
<tr>
	<td><code>callback_data</code></td>
	<td>data for callback.</td>
</tr>
</table>

## stop

Stop the timer by callback.

	:::ruby
	Rho::Timer.stop(callback_url)

<table border="1">
<tr>
	<td><code>callback_url</code></td>
	<td>the callback_url for this timer; stopped by this method.</td>
</tr>
</table>






