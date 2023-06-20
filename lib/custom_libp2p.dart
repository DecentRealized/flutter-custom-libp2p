import 'dart:async';

import 'package:custom_libp2p/bridge/binding_stub.dart'
    if (dart.library.io) 'package:custom_libp2p/bridge/binding.dart'
    if (dart.library.js) 'package:custom_libp2p/bridge/binding_stub.dart';
import 'package:custom_libp2p/model/bridge_model_generated.dart' as model;
import 'package:flutter/services.dart';

class CustomLibP2PException implements Exception {
  String cause;

  CustomLibP2PException(this.cause);
}

class PKCS12KeyPair {
  String publicKey;
  String privateKey;
  String certificate;

  PKCS12KeyPair(this.publicKey, this.privateKey, this.certificate);
}

class CustomLibP2P {
  static const MethodChannel _channel = const MethodChannel('custom_libp2p');
  static bool bindingEnabled = Binding().isSupported();

  static Future<Uint8List> _call(String name, Uint8List payload) async {
    if (bindingEnabled) {
      return await Binding().callAsync(name, payload);
    }
    return await _channel.invokeMethod(name, payload);
  }

  static Future<Uint8List> _bytesResponse(
      String name, Uint8List payload) async {
    var data = await _call(name, payload);
    var response = model.BytesResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    return Uint8List.fromList(response.output!);
  }

  static Future<String> _stringResponse(String name, Uint8List payload) async {
    var data = await _call(name, payload);
    var response = model.StringResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    return response.output!;
  }

  static Future<bool> _boolResponse(String name, Uint8List payload) async {
    var data = await _call(name, payload);
    var response = model.BoolResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    return response.output;
  }

  static Future<String> getHelloMessage(String userName) async {
    var requestBuilder =
        model.GetHelloMessageRequestObjectBuilder(userName: userName);
    return await _stringResponse("getHelloWorld", requestBuilder.toBytes());
  }

  // EXAMPLE FOR CUSTOM DATA TODO: Remove when done
  // static Future<PKCS12KeyPair> _pkcs12KeyPairResponse(
  //     String name, Uint8List payload) async {
  //   var data = await _call(name, payload);
  //   var response = model.PKCS12KeyPairResponse(data);
  //   if (response.error != null && response.error != "") {
  //     throw new CustomLibP2PException(response.error!);
  //   }
  //   var output = response.output!;
  //   return PKCS12KeyPair(
  //       output.publicKey!, output.privateKey!, output.certificate!);
  // }
  //
}
