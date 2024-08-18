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
tar xf Downloads/flutter_linux_3.24.0-stable.tar.xz -C ~
```
<b>Android Studio</b>
```bash
tar xf Download/android-studio-2024.1.1.13-linux.tar.gz -C ~
```

## Setup Process

<b>Installing Required Packages</b>
```bash
sudo apt install clang cmake ninja-build libgtk-3-dev
```
<b>Export The Flutter Path</b>

```bash
export PATH="$PATH:`pwd`/flutter/bin" >> .bashrc && soruce .bashrc
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
curl -s https://raw.githubusercontent.com/mdzaif/My_Setup/main/manual/dart_flutter/android-studio.desktop.entry >> ~/.local/share/applications/android-studio.desktop
```

 <p>naviagtae that path:
 <b>~/.local/share/applications/</b> open the android-studio.desktop with text editor change the $user to your user name. </p>

## Last Steps

```bash
flutter config --android-sdk /home/zaifmahi/Android/sdk
```
```bash
flutter doctor --android-licenses
```

## References:

1. <a href='https://docs.flutter.dev/get-started/install'> Flutter Download </a><br>

2. <a href='https://docs.flutter.dev/'> Flutter Documentation </a><br>

3. <a href='https://developer.android.com/studio/index.html'> Android Studio Documentation</a><br>

4. <a href='https://dart.dev/language'> Dart Documentation </a>