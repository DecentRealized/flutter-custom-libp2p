import 'dart:async';

import 'package:custom_libp2p/bridge/binding_stub.dart'
    if (dart.library.io) 'package:custom_libp2p/bridge/binding.dart'
    if (dart.library.js) 'package:custom_libp2p/bridge/binding_stub.dart';
import 'package:custom_libp2p/model/bridge_model_generated.dart' as model;
import 'package:flutter/services.dart';

class CustomLibP2PException implements Exception {
  String cause;

  CustomLibP2PException(this.cause) {
    print("CustomLibP2PException: $cause");
  }
}

class KeyPair {
  List<int> publicKey;
  List<int> privateKey;

  KeyPair(this.publicKey, this.privateKey);
}

class DownloadStatus {
  bool downloading;
  String fileBasePath;
  String fileName;
  String fileSha256;
  int fullFileSize;
  int currentFileSize;

  DownloadStatus(this.downloading, this.fileBasePath, this.fileName,
      this.fileSha256, this.fullFileSize, this.currentFileSize);

  @override
  String toString() {
    return "{" +
        "\n\tdownloading: ${this.downloading}," +
        "\n\tfileBasePath: ${this.fileBasePath}," +
        "\n\tfileName: ${this.fileName}," +
        "\n\tfileSha256: ${this.fileSha256}," +
        "\n\tfullFileSize: ${this.fullFileSize}B," +
        "\n\tcurrentFileSize: ${currentFileSize}B" +
        "\n}";
  }
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

  static Future<bool> _boolResponse(String name, Uint8List payload) async {
    var data = await _call(name, payload);
    var response = model.BoolResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    return response.output;
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

  static Future<List<String>> _stringArrayResponse(
      String name, Uint8List payload) async {
    var data = await _call(name, payload);
    var response = model.StringArrayResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    return response.output!;
  }

  static Future<KeyPair> _keyPairResponse(String name) async {
    var data = await _call(name, Uint8List(0));
    var response = model.KeyPairResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    var output = response.output!;
    return KeyPair(output.publicKey!, output.privateKey!);
  }

  static Future<DownloadStatus> _downloadStatusResponse(
      String name, Uint8List payload) async {
    var data = await _call(name, payload);
    var response = model.DownloadStatusResponse(data);
    if (response.error != null && response.error != "") {
      throw new CustomLibP2PException(response.error!);
    }
    var output = response.output!;
    return DownloadStatus(
        output.downloading,
        output.fileBasePath!,
        output.fileName!,
        output.fileSha256!,
        output.fullFileSize,
        output.currentFileSize);
  }

  static Future<String> getHelloMessage(String userName) async {
    var requestBuilder = model.StringRequestObjectBuilder(input: userName);
    return await _stringResponse("getHelloWorld", requestBuilder.toBytes());
  }

  static Future<KeyPair> createKeyPair() async {
    return await _keyPairResponse("createKeyPair");
  }

  static Future<bool> createNode(List<int> privateKey, bool useInternet) async {
    var requestBuilder = model.CreateNodeRequestObjectBuilder(
        privateKey: privateKey, useInternet: useInternet);
    return await _boolResponse("createNode", requestBuilder.toBytes());
  }

  static Future<bool> createRandomNode(bool useInternet) async {
    var keyPair = await createKeyPair();
    return await createNode(keyPair.privateKey, useInternet);
  }

  static Future<String> getNodeId() async {
    return await _stringResponse("getNodeId", Uint8List(0));
  }

  static Future<List<String>> getListenAddresses() async {
    return await _stringArrayResponse("getListenAddresses", Uint8List(0));
  }

  static Future<bool> allowNode(String peerId) async {
    assert(1 == 2, "Not Implemented");
    return await _boolResponse("allowNode", Uint8List(0));
  }

  static Future<bool> isAllowedNode(String peerId) async {
    assert(1 == 2, "Not Implemented");
    return await _boolResponse("isAllowedNode", Uint8List(0));
  }

  static Future<List<String>> getAllowedNodes() async {
    assert(1 == 2, "Not Implemented");
    return await _stringArrayResponse("getAllowedNodes", Uint8List(0));
  }

  static Future<bool> denyNode(String peerId) async {
    assert(1 == 2, "Not Implemented");
    return await _boolResponse("denyNode", Uint8List(0));
  }

  static Future<String> serveFile(String filePath, String peerId) async {
    var requestBuilder =
        model.ServeFileRequestObjectBuilder(filePath: filePath, peerId: peerId);
    return await _stringResponse("serveFile", requestBuilder.toBytes());
  }

  static Future<bool> stopServingFile(String sha256Sum) async {
    var requestBuilder = model.StringRequestObjectBuilder(input: sha256Sum);
    return await _boolResponse("stopServingFile", requestBuilder.toBytes());
  }

  static Future<bool> SendMessage(String peerId, String message) async {
    var requestBuilder =
        model.SendMessageRequestObjectBuilder(peerId: peerId, message: message);
    return await _boolResponse("sendMessage", requestBuilder.toBytes());
  }

  static Future<bool> pauseDownload(String sha256Sum, String peerId) async {
    var requestBuilder = model.DownloadRequestObjectBuilder(
        fileSha256: sha256Sum, peerId: peerId);
    return await _boolResponse("pauseDownload", requestBuilder.toBytes());
  }

  static Future<bool> resumeDownload(String sha256Sum, String peerId) async {
    var requestBuilder = model.DownloadRequestObjectBuilder(
        fileSha256: sha256Sum, peerId: peerId);
    return await _boolResponse("resumeDownload", requestBuilder.toBytes());
  }

  static Future<bool> stopDownload(String sha256Sum, String peerId) async {
    var requestBuilder = model.DownloadRequestObjectBuilder(
        fileSha256: sha256Sum, peerId: peerId);
    return await _boolResponse("stopDownload", requestBuilder.toBytes());
  }

  static Future<DownloadStatus> getDownloadStatus(
      String sha256Sum, String peerId) async {
    var requestBuilder = model.DownloadRequestObjectBuilder(
        fileSha256: sha256Sum, peerId: peerId);
    return await _downloadStatusResponse(
        "getDownloadStatus", requestBuilder.toBytes());
  }

  static Future<bool> stopNode() async {
    return await _boolResponse("stopNode", Uint8List(0));
  }
}
