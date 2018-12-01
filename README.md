# Flutter-dev-env-setup

Scripts and flutter installation document

## Useful flutter links

- <https://flutter.io/docs/get-started/test-drive?tab=vscode>

## Install

- run

```bash
    $git clone https://github.com/prakashpandey/flutter-dev-env-setup
    $cd flutter-dev-env-setup
    $chmod +x install.sh
    $./install.sh
```

- setup up android or ios environment seperately based on your requirement

    follow link <https://flutter.io/docs/get-started/install/> for more information

## Some useful flutter commands  

- Run flutter app in debug mode. Make sure to connect your mobile with usb debugging mode enabled and connected to machine

```bash
    $flutter run -v
```

- Upgrade flutter

```bash
    $flutter upgrade
```

- Check if you have any flutter environment issues

```bash
    $flutter doctor -v
```

- Analyze if your flutter app have any problems

```bash
    $flutter analyze
```

## Connect android over wifi for debugging

- connect your mobile device to your computer.

- make sure `usb` debugging is on 

- Get devices connected to your computer usng `adb`
    ```bash
        $adb devices
    ```
- It should show your devices in connected device list

- Change the device connection protocol from `usb` to `tcp`

    ```bash
        $adb tcpip 5555
    ```
- Connect to abdroid debug bridge(`adb`) using phone's `IP` address

    ```bash
        $adb connect IPADDRESS
    ```
- USeful link: <https://stackoverflow.com/questions/2604727/how-can-i-connect-to-android-with-adb-over-tcp>

## Troubleshoot

### Issues

- If you get error that android license is unknown, try doing following

    ```bash
        $export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
        $flutter doctor --android-licenses
    ```

    Link: <https://stackoverflow.com/a/51644766/4408364>

- If you get `Could not find or load main class java.se.ee` when running `flutter run -v`

    See link: <https://github.com/flutter/flutter/issues/16093#issuecomment-390489264>
