# Custom LibP2P

Flutter plugin (macos, web, linux, windows, android, ios) for custom-libp2p-mobile.

[![Integration Tests Android](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_android.yml/badge.svg)](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_android.yml)

[![Integration Tests Linux](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_linux.yml/badge.svg)](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_linux.yml)

[![Integration Tests Windows](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_windows.yml/badge.svg)](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_windows.yml)

[![Integration Tests iOS](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_ios.yml/badge.svg)](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_ios.yml)

[![Integration Tests macOS](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_macos.yml/badge.svg)](https://github.com/DecentRealized/flutter-custom-libp2p/actions/workflows/tests_macos.yml)
## Contents
 
- [Custom LibP2P](#custom-libp2p)
  - [Contents](#contents)
  - [Usage](#usage)
    - [Encrypt methods](#encrypt-methods)
    - [Decrypt methods](#decrypt-methods)
    - [Sign methods](#sign-methods)
    - [Verify methods](#verify-methods)
    - [Generate Methods](#generate-methods)
    - [Convert Methods](#convert-methods)
    - [Util Methods](#util-methods)
  - [Setup](#setup)
    - [Android](#android)
    - [iOS](#ios)
    - [Web](#web)
    - [MacOS](#macos)
    - [Linux](#linux)
    - [Windows](#windows)
  - [Example](#example)
  - [Native Code](#native-code)

## Usage

### Encrypt methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.encryptOAEP(message, label, Hash.HASH_SHA256, publicKey)
var result = await CustomLibP2P.encryptPKCS1v15(message, publicKey)

var result = await CustomLibP2P.encryptOAEPBytes(messageBytes, label, Hash.SHA256, publicKey)
var result = await CustomLibP2P.encryptPKCS1v15Bytes(messageBytes, publicKey)

```

### Decrypt methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.decryptOAEP(message, label, Hash.HASH_SHA256, privateKey)
var result = await CustomLibP2P.decryptPKCS1v15(message, privateKey)

var result = await CustomLibP2P.decryptOAEPBytes(messageBytes, label, Hash.SHA256, privateKey)
var result = await CustomLibP2P.decryptPKCS1v15Bytes(messageBytes, privateKey)

```

### Sign methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.signPSS(message, Hash.SHA256, SaltLength.SALTLENGTH_AUTO, privateKey)
var result = await CustomLibP2P.signPKCS1v15(message, Hash.SHA256, privateKey)

var result = await CustomLibP2P.signPSSBytes(messageBytes, Hash.SHA256, SaltLength.SALTLENGTH_AUTO, privateKey)
var result = await CustomLibP2P.signPKCS1v15Bytes(messageBytes, Hash.SHA256, privateKey)

```

### Verify methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.verifyPSS(signature, message, Hash.SHA256, SaltLength.SALTLENGTH_AUTO, publicKey)
var result = await CustomLibP2P.verifyPKCS1v15(signature, message, Hash.SHA256, publicKey)

var result = await CustomLibP2P.verifyPSSBytes(signatureBytes, messageBytes, Hash.SHA256, SaltLength.SALTLENGTH_AUTO, publicKey)
var result = await CustomLibP2P.verifyPKCS1v15Bytes(signatureBytes, messageBytes, Hash.SHA256, publicKey)

```

### Generate Methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.generate(2048)

```

### Convert Methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.convertJWKToPrivateKey(data, keyId)
var result = await CustomLibP2P.convertJWKToPublicKey(data, keyId)

var result = await CustomLibP2P.convertKeyPairToPKCS12(privateKey, certificate, password)
var result = await CustomLibP2P.convertPKCS12ToKeyPair(pkcs12, password)

var result = await CustomLibP2P.convertPrivateKeyToPKCS8(privateKey)
var result = await CustomLibP2P.convertPrivateKeyToPKCS1(privateKey)
var result = await CustomLibP2P.convertPrivateKeyToJWK(privateKey)

var result = await CustomLibP2P.convertPrivateKeyToPublicKey(privateKey)

var result = await CustomLibP2P.convertPublicKeyToPKIX(publicKey)
var result = await CustomLibP2P.convertPublicKeyToPKCS1(publicKey)
var result = await CustomLibP2P.convertPublicKeyToJWK(publicKey)

var result = await CustomLibP2P.encryptPrivateKey(privateKey, password, PEMCipher.PEMCIPHER_AES256)
var result = await CustomLibP2P.decryptPrivateKey(privateKeyEncrypted, password)
```

### Util Methods
TODO: Change This
```dart
import 'package:custom_libp2p/custom_libp2p.dart';

var result = await CustomLibP2P.hash(message, Hash.SHA256)
var result = await CustomLibP2P.base64(message)

```

## Setup

### Android

No additional setup required.

### iOS

No additional setup required.

### Web

add to you `pubspec.yaml`

```yaml
assets:
  - packages/custom_libp2p/web/assets/worker.js
  - packages/custom_libp2p/web/assets/wasm_exec.js
  - packages/custom_libp2p/web/assets/customLibP2P.wasm
```

ref: https://github.com/DecentRealized/flutter-custom-libp2p/blob/master/example/pubspec.yaml

### MacOS

no additional setup required

### Linux

No additional setup required.

### Windows

No additional setup required.

## Example

Inside example folder

```bash
cd example && flutter run
```

## Native Code

the native library is made in Golang and build with gomobile for faster performance

https://github.com/DecentRealized/flutter-custom-libp2p
