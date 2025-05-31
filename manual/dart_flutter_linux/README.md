# Get Started
## Flutter Download
<b>first setup flutter(for linux+web): </b><a href='https://docs.flutter.dev/get-started/install/linux/web'>Flutter for linux</a>
<p>In that link read their documentation and Under <b>'Install the Flutter SDK'</b> go the Download and Install you will find the tar.gz file. besides.Launch your vscode and go market place install <b>'Flutter'</b> and <b>'Dart'</b> package.
</p>

## Android Studio
<b>Download Android Studio: </b><a href='https://developer.android.com/studio/index.html
'>Android Studio Package</a>

## Extract the Dowloaded Files:

<b>Flutter</b>

```bash
mkdir development  # create a development directory and navigate on it
```

```bash
tar xf ~/Downloads/<flutter.tar.gz_file> -C ~/development/
```
<b>Android Studio</b>
```bash
tar xf ~/Download/<android.tar.gz_file> -C ~/developement
```

## Setup Process

<b>Installing Required Packages</b>
```bash
sudo apt install clang cmake ninja-build libgtk-3-dev
```
<b>Export The Flutter Path</b>

```bash
cd development # navigate development directory
```

```bash
echo "export PATH=\"$PATH:`pwd`/flutter/bin\"" >> ~/.bashrc && source ~/.bashrc # change user to your user name and make sure you extract your tar.gz files on development directroy 
```

<b>Test The Install</b>

```bash
flutter doctor -v # test the installation
```

<b>Open the Android Studio</b>

```bash
./android-studio/bin/studio.sh
```
<p>1. then keep settings in default and click finish and wait for installation, if installation process is crashed then pop up comes click retry.</p>
<p>2. After that android studio is open now go More Action > SDK Manager</p>
<p>3. It will open Android SDK window go SDK Tools Tab then check <b>'Android SDK Command-line Tools(latest)'</b> then click apply accept the term and the install will complete soon.</p>

<b>Create Desktop Entry For Android Studio</b>

```bash
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/manual/dart_flutter/android-studio.desktop.entry > ~/.local/share/applications/android-studio.desktop && u=$(whoami) && sed -i "s/user/${u}/g" ~/.local/share/applications/android-studio.desktop
```

## Last Steps

```bash
flutter config --android-sdk ~/development/Android/Sdk
```
```bash
flutter doctor --android-licenses
```

## Connect Your Android phone while development (wireless + linux):

Following those commands:

```bash
sudo apt update && sudo apt install adb # if adb is not installed in your linux machine
```

Now, go to your android phone settings > Developer Options > allow the Wireless debuging. Now, open the wireless debugging section > pair device with pairing code.•

```bash
adb pair <ip_address>:port_number # from pop up
```
It will need the pairing code so enter your pairing code. Now, close the pop up of pair device with pairing code. You will also see "IP address & Port" section.

```bash
adb connect <ip_adress>:port_number # from IP addresss & Port section
```

Check the connection with adb command:

```bash
adb devices
```
Also, with flutter command:

```bash
flutter devices
```
Check the debug mode is working:

```bash
flutter run
```

## References:

1. <a href='https://docs.flutter.dev/get-started/install'> Flutter Download </a><br>

2. <a href='https://docs.flutter.dev/'> Flutter Documentation </a><br>

3. <a href='https://developer.android.com/studio/index.html'> Android Studio Documentation</a><br>

4. <a href='https://dart.dev/language'> Dart Documentation </a>

5. <a href='https://pub.dev/'> Flutter Package Repositories</a>
