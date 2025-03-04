# Alert API - Popup, Vibrate, Play for System Alerts

The [Alert Class API](device-caps#alerts) lets you call system alert methods for popup, vibrate, or playing audio files.

## Alert.hide_popup

Closes the current popup window.

## Alert.play_file(file_name.ext, media_type)

Play the file if the media type is supported by the phone. The file must in the application; for example, /apps/public/test-file.mp3.

file_name.ext - The path to the file name, ending in the file name and extension.  
media_type - Media type can be specified explicitly, or can be recognized from the file extension. Known file extensions are:  
 * .mp3 – audio/mpeg
 * .wav – audio/x-wav

## Alert.show_popup( { :message, :title, :icon, :buttons, :callback } )

Bring the application up front and show a popup message.

:message – text displayed in the popup window.  
:title – title of the popup window.  
:icon – path to an image, or :alert for ! icon, :question for ? icon, :info for information icon.
:buttons – array of buttons defined by id and title. Specify either by hash with :id and :title keys, or by string.  
:callback – url called when button is clicked. @params hash containing three keys: :button_id, :button_title and :button_index.

Example:

	:::ruby
	Alert.show_popup( {
	  :message => 'Some message', 
	  :title => 'Custom title', 
	  :icon => '/public/images/icon.png',
	  :buttons => ["Yes", "No", 
	    {:id => 'cancel', :title => 'Cancel all'}],
	    :callback => url_for(:action => :on_dissmiss_popup) } )

## Alert.vibrate(duration_in_milliseconds)

Vibrate the device.

`duration_in_milliseconds` - vibrate for the number of milliseconds, up to 25500; if 0 or no duration is specified, vibrate for 2500 milliseconds.

## Alert.show_status(title, status_text, hide_button_label)

Show status messages. The status window will close after clicking on hide button.

status_text – text displayed in status window  
hide_button_label – label of hide button

