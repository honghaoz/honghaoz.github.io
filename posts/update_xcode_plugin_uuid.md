### When you hit some errors like this
```shell
[MT] PluginLoading: Required plug-in compatibility UUID EE23884D-A5C0-4163-94CF-DBBF3A5ED8D6 for plug-in at path '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/IGInjectionPlugin.xcplugin' not present in DVTPlugInCompatibilityUUIDs
```

This means plugins need to add new Xcode UUID to work.

### Fix it:

- Read Xcode UUID you'd like to update
```shell
XCODE_UUID=`defaults read /Applications/Xcode_9.3.0.app/Contents/Info DVTPlugInCompatibilityUUID` 
```

- Update UUID to plugins
```shell
for f in ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/*; do defaults write "$f/Contents/Info" DVTPlugInCompatibilityUUIDs -array-add $XCODE_UUID; done
```
