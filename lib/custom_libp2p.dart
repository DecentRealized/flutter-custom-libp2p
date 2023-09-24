// Auto Generated Code. Do Not Edit.
import 'dart:async';

import 'package:custom_libp2p/bridge/binding_stub.dart'
    if (dart.library.io) 'package:custom_libp2p/bridge/binding.dart'
    if (dart.library.js) 'package:custom_libp2p/bridge/binding_stub.dart';
import 'package:custom_libp2p/models/models.dart' as models;
import 'package:flutter/services.dart';

class CustomLibP2PException implements Exception {
  String cause;

  CustomLibP2PException(this.cause) {
    print("CustomLibP2PException: $cause");
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

  static Future<models.KeyPair> createKeyPair() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('createKeyPair', bytesInput);
    var output = models.KeyPair.fromBuffer(bytesOutput);
    return output;
  }

  static Future<void> createNode(
      models.CreateNodeRequest input) async {
    var bytesInput = input.writeToBuffer();
    await _call('createNode', bytesInput);
  }

  static Future<models.StringMessage> getNodeId() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getNodeId', bytesInput);
    var output = models.StringMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.DownloadStatus> getDownloadStatus(
      models.DownloadRequest input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('getDownloadStatus', bytesInput);
    var output = models.DownloadStatus.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringArrayMessage> getListenAddresses() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getListenAddresses', bytesInput);
    var output = models.StringArrayMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<void> stopServingFile(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('stopServingFile', bytesInput);
  }

  static Future<void> stopDownload(
      models.DownloadRequest input) async {
    var bytesInput = input.writeToBuffer();
    await _call('stopDownload', bytesInput);
  }

  static Future<void> stopNode() async {
    var bytesInput = Uint8List.fromList([]);
    await _call('stopNode', bytesInput);
  }

  static Future<void> pauseDownload(
      models.DownloadRequest input) async {
    var bytesInput = input.writeToBuffer();
    await _call('pauseDownload', bytesInput);
  }

  static Future<void> resumeDownload(
      models.DownloadRequest input) async {
    var bytesInput = input.writeToBuffer();
    await _call('resumeDownload', bytesInput);
  }

  static Future<models.Notifications> flushNotifications() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('flushNotifications', bytesInput);
    var output = models.Notifications.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringMessage> getHelloMessage(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('getHelloMessage', bytesInput);
    var output = models.StringMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringMessage> serveFile(
      models.ServeFileRequest input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('serveFile', bytesInput);
    var output = models.StringMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<void> sendMessage(
      models.SendMessageRequest input) async {
    var bytesInput = input.writeToBuffer();
    await _call('sendMessage', bytesInput);
  }
}