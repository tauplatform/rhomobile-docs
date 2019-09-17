# RhoMobile API Summary
Below is a list of the new common APIs for RhoMobile Suite 7.1, which are recommended for all new projects. If you're moving a app built with previous version of Rhodes to 7.x, please consult the [7.x migration guide](apiusage). 

## 7.1 APIs
<div class="alert alert-warning">
  <p>
    <span class="icon-check icon-primary icon-inverse"  rel="tooltip" title="Supported"></span>
    - API/platform is supported
  </p>
  <p>
    <img src="/img/zebra-logo.png" style="height:16px;padding-top: 0px;padding-left:3px" rel="tooltip" title="Zebra Devices Only">
    - API is available only on Symbol devices
  </p>
</div>

<table class="table table-condensed table-striped">
  <thead>
    <tr>
      <th></th>
      <th colspan="2" style="border-right:thin solid #cccccc;text-align:center">LANGUAGES</th>
      <th colspan = "6" style="text-align:center">PLATFORMS</th>
    </tr>
    <tr>
      <th>Class</th>
      <th style="text-align:center"><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="JavaScript"></th>
      <th style="text-align:center;border-right:thin solid #cccccc;"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"></th>
      <th style="text-align:center"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"></th>
      <th style="text-align:center"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"></th>
      <th style="text-align:center"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"></th>
      <th style="text-align:center"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"></th>
      <th style="text-align:center"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>
        <a href="../api/Application">Application</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
     <tr>
      <td>
        <a href="../api/audiocapture">AudioCapture</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/barcode">Barcode</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/battery">Battery</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/bluetoothmanager-api">BluetoothManager *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/bluetoothsession-api">BluetoothSession *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/camera">Camera </a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/cardreader">CardReader<img src="/img/zebra-logo.png" style="height: 16px;padding-top: 0px;padding-left:3px" rel="tooltip" title="Zebra Devices Only"></a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check-empty icon-primary"  rel="tooltip"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhoelements/comm">Comm </a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Config">Config </a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Database">Database</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/device">Device<img src="/img/zebra-logo.png" style="height: 16px;padding-top: 0px;padding-left:3px" rel="tooltip" title="Zebra Devices Only"></a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/DeviceSecurity">Device Security</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/geolocation">Geolocation</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Intent">Intent</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/keycapture">KeyCapture</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/keystate">KeyState<img src="/img/zebra-logo.png" style="height: 16px;padding-top: 0px;padding-left:3px" rel="tooltip" title="Zebra Devices Only"></a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Log">Log</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/mapview-api">Mapview *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/mediaplayer">Mediaplayer</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/NativeMenubar">NativeMenubar</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/NativeTabbar">NativeTabbar</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/NativeToolbar">NativeToolbar</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Navbar">Navbar</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NdefMessage-api">NdefMessage *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NdefRecord-api">NdefRecord *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Network">Network</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCManager-api">NFCManager *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTag-api">NFCTag *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_IsoDep-api">NFCTagTechnology_IsoDep *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_MifareClassic-api">NFCTagTechnology_MifareClassic *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_MifareUltralight-api">NFCTagTechnology_MifareUltralight *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_Ndef-api">NFCTagTechnology_Ndef *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_NdefFormatable-api">NFCTagTechnology_NdefFormatable *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_NfcA-api">NFCTagTechnology_NfcA *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_NfcB-api">NFCTagTechnology_NfcB *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_NfcF-api">NFCTagTechnology_NfcF *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology_NfcV-api">NFCTagTechnology_NfcV *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/NFCTagTechnology-api">NFCTagTechnology *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Notification">Notification</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Orm">ORM</a> &amp; <a href="../api/OrmModel">ORMModel</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/printing">Printer</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/printingzebra">Printer Zebra</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/push">Push</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/RhoConnectClient">RhoConnectClient</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhocontact-api">RhoContact *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhocontroller-api">RhoController *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhoerror-api">RhoError *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhoevent-api">RhoEvent *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/File">RhoFile</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhomsource-api">RhomSource *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhoprofiler-api">RhoProfiler *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/rhoutils-api">RhoUtils *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/screenorientation">ScreenOrientation</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/sensor">Sensor</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/signalindicators">SignalIndicators</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/signature">Signature</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../../2.2.0/rhodesapi/signaturecapture-api">SignatureCapture (inline) *</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/smartcradle">SmartCradle<img src="/img/zebra-logo.png" style="height: 16px;padding-top: 0px;padding-left:3px" rel="tooltip" title="Zebra Devices Only"></a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
      <td style="text-align:center" class=" "></td>
    </tr>
    <tr>
      <td>
        <a href="../api/system">System</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/Timer">Timer</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check-empty icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
       <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
    <tr>
      <td>
        <a href="../api/webview">Webview</a>
      </td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center;border-right:thin solid #cccccc;" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
      <td style="text-align:center" class=" "><span class="icon-check icon-primary"></span></td>
    </tr>
  </tbody>
</table>

**These API classes are implemented in RhoMobile Suite 2.2 but are not yet included in the new Common API class set for RhoMobile Suite 7.1. They use the older 2.2 format and support Ruby only except as noted.*


### JavaScript ORM
If you're using the JavaScript ORM API, include this line in any files that will be calling it:

    :::html
    <script type="text/javascript" charset="utf-8" src="/public/api/rhoapi-modules-ORM.js"></script>
