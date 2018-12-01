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