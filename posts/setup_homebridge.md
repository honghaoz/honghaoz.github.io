# How to set up homebridge

#### Install
1. Homebridge: https://github.com/nfarina/homebridge
2. TPLink Plugin: https://www.npmjs.com/package/homebridge-tplink-smarthome
3. Sony TV
    - v2.5: https://www.npmjs.com/package/homebridge-sonybravia-platform
    - v3.0: https://www.npmjs.com/package/homebridge-bravia-tv

#### Create the config file (`~/.homebrdige/config.json`)
```json
{
    "bridge": {
        "name": "Homebridge",
        "username": "CC:22:3D:E3:CE:30",
        "port": 51826,
        "pin": "650-56-538"
    },
    
    "description": "Homebridge",

    "accessories": [],

    "platforms": [
        {
            "platform": "TplinkSmarthome",
            "name": "TplinkSmarthome"
        },
        {
            "platform": "SonyBravia", 
            "name": "电视",
            "ipadress": "192.168.0.100",
            "psk": "honghao-x900f",
            "interval": 2,
            "inputsEnabled": true,
            "extraInputs": false,
            "volumeEnabled": true,
            "maxVolume": 35,
            "remoteControl" :true,
            "controlMode": "ADVANCED",
            "offState": "OFF"
        }
    ]
}
```

#### Setup auto launch with `launchd`
1. Add plist file `com.homebridge.server.plist` in `~/Library/LaunchAgents`
2. The content:
```plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
        <string>com.homebridge.server</string>
    <key>ProgramArguments</key>
        <array>
             <string>/usr/local/bin/homebridge</string>
             <string>--no-qrcode</string>
        </array>
    <key>StandardOutPath</key>
        <string>/Users/honghao/.homebridge/log.log</string>
    <key>StandardErrorPath</key>
        <string>/Users/honghao/.homebridge/log.log</string>
    <key>EnvironmentVariables</key>
        <dict>
        <key>PATH</key>
            <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</string>
        <key>HOME</key>
            <string>/Users/honghao</string>
        </dict>
    <key>RunAtLoad</key>
        <true/>
    <key>KeepAlive</key>
        <true/>
</dict>
</plist>
```
3. Correct `plist` file permission
4. Test with
```
launchctl load ~/Library/LaunchAgents/com.homebridge.server.plist
```
5. `LaunchControlCreate` is a great GUI for services: http://www.soma-zone.com/LaunchControl/

#### References:
- https://www.imore.com/how-connect-non-homekit-devices-homekit-using-homebridge
- https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/Introduction.html#//apple_ref/doc/uid/10000172i-SW1-SW1
- https://developer.apple.com/documentation/coreservices/launch_services
