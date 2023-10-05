// Auto Generated Code. Do Not Edit.
import 'dart:async';
import 'dart:io';

import 'package:custom_libp2p/bridge/binding_stub.dart'
    if (dart.library.io) 'package:custom_libp2p/bridge/binding.dart'
    if (dart.library.js) 'package:custom_libp2p/bridge/binding_stub.dart';
import 'package:custom_libp2p/models/models.dart' as models;
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class CustomLibP2PException implements Exception {
  String cause;
  static final List<Function(String)> _onErrorCallbacks = [defaultErrorCallback];

  CustomLibP2PException(this.cause) {
    for (var callback in _onErrorCallbacks) {
	  callback(cause);
    }
  }

  static void defaultErrorCallback(String error) {	
    print("CustomLibP2PException: $error");
  }

  static void addOnErrorCallback(Function(String) callback) {
    _onErrorCallbacks.add(callback);
  }

  static void removeOnErrorCallback(Function(String) callback) {
    _onErrorCallbacks.remove(callback);
  }
}

class CustomLibP2P {
  static const MethodChannel _channel = const MethodChannel('custom_libp2p');
  static bool bindingEnabled = Binding().isSupported();
  static final List<Function(models.Warning)> _onWarningCallbacks = [];
  static final List<Function(String)> _onInfoCallbacks = [];
  static final List<Function(models.Message)> _onMessageCallbacks = [];
  static bool _notificationHandlerRunning = true;

  static Future<Uint8List> _handleRawResult(List<Uint8List> result) async {
    switch (result.length) {
      case 1:
        return result[0];
      case 2:
        var error = new String.fromCharCodes(result[1]);
        throw new CustomLibP2PException(error);
      default:
        throw new CustomLibP2PException("Unexpected result: $result");
    }
  }

  static Future<Uint8List> _call(String name, Uint8List payload) async {
    if (bindingEnabled) {
      List<Uint8List> result = await Binding().callAsync(name, payload);
      return _handleRawResult(result);
    }
    List<Uint8List> result = await _channel.invokeMethod(name, payload);
    return _handleRawResult(result);
  }

  static void startNotificationHandler() async {
    while (_notificationHandlerRunning) {
      var notifications = await _flushNotifications();
      for (var notification in notifications.notification) {
        if (notification.hasWarningNotification()) {
          _onWarningCallbacks.forEach(
              (callback) => callback(notification.warningNotification));
        } else if (notification.hasInfoNotification()) {
          _onInfoCallbacks
              .forEach((callback) => callback(notification.infoNotification));
        } else if (notification.hasMessageNotification()) {
          _onMessageCallbacks.forEach(
              (callback) => callback(notification.messageNotification));
        } else {
          print("Unhandled notification: $notification");
        }
      }
    }
  }

  static void stopNotificationHandler() {
    _notificationHandlerRunning = false;
  }

  static void addOnWarningCallback(Function(models.Warning) callback) {
    _onWarningCallbacks.add(callback);
  }

  static void addOnInfoCallback(Function(String) callback) {
    _onInfoCallbacks.add(callback);
  }

  static void addOnMessageCallback(Function(models.Message) callback) {
    _onMessageCallbacks.add(callback);
  }

  static void removeOnWarningCallback(Function(models.Warning) callback) {
    _onWarningCallbacks.remove(callback);
  }

  static void removeOnInfoCallback(Function(String) callback) {
    _onInfoCallbacks.remove(callback);
  }

  static void removeOnMessageCallback(Function(models.Message) callback) {
    _onMessageCallbacks.remove(callback);
  }

  static Future<models.Notifications> _flushNotifications() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('_flushNotifications', bytesInput);
    var output = models.Notifications.fromBuffer(bytesOutput);
    return output;
  }

  static Future<void> _setDatabaseDirectory(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('_setDatabaseDirectory', bytesInput);
  }

  static Future<void> _setDownloadPath(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('_setDownloadPath', bytesInput);
  }

  static Future<void> allowNode(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('allowNode', bytesInput);
  }

  static Future<void> blockNode(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('blockNode', bytesInput);
  }

  static Future<models.StringArrayMessage> checkConnectionStatus(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('checkConnectionStatus', bytesInput);
    var output = models.StringArrayMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<void> connectToPeer(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('connectToPeer', bytesInput);
  }

  static Future<models.KeyPair> createKeyPair() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('createKeyPair', bytesInput);
    var output = models.KeyPair.fromBuffer(bytesOutput);
    return output;
  }

  static Future<void> createNode(
      models.CreateNodeRequest input) async {
    Directory? _defaultDownloadDir = await getDownloadsDirectory();
    if (_defaultDownloadDir == null) {
      _defaultDownloadDir = await getApplicationDocumentsDirectory();
    }
    var _tmp = models.StringMessage();
    _tmp.message = _defaultDownloadDir.path;
    await _setDownloadPath(_tmp);
    Directory _defaultDbBaseDir = await getApplicationSupportDirectory();
    var _defaultDbDirPath = p.join(_defaultDbBaseDir.path, '.db');
    Directory _defaultDbDir = await Directory(_defaultDbDirPath).create();
    _tmp.message = _defaultDbDir.path;
    await _setDatabaseDirectory(_tmp);    var bytesInput = input.writeToBuffer();
    await _call('createNode', bytesInput);
  }

  static Future<models.StringArrayMessage> getAllowedNodes() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getAllowedNodes', bytesInput);
    var output = models.StringArrayMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringArrayMessage> getBlockedNodes() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getBlockedNodes', bytesInput);
    var output = models.StringArrayMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringMessage> getDatabaseDirectory() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getDatabaseDirectory', bytesInput);
    var output = models.StringMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringMessage> getDownloadPath() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getDownloadPath', bytesInput);
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

  static Future<models.FileMetadataList> getDownloadingFiles() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getDownloadingFiles', bytesInput);
    var output = models.FileMetadataList.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringMessage> getHelloMessage(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('getHelloMessage', bytesInput);
    var output = models.StringMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringArrayMessage> getListenAddresses() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getListenAddresses', bytesInput);
    var output = models.StringArrayMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.StringMessage> getNodeId() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getNodeId', bytesInput);
    var output = models.StringMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.FileMetadataList> getUploadingFiles() async {
    var bytesInput = Uint8List.fromList([]);
    var bytesOutput = await _call('getUploadingFiles', bytesInput);
    var output = models.FileMetadataList.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.BoolMessage> isAllowedNode(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('isAllowedNode', bytesInput);
    var output = models.BoolMessage.fromBuffer(bytesOutput);
    return output;
  }

  static Future<models.BoolMessage> isBlockedNode(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('isBlockedNode', bytesInput);
    var output = models.BoolMessage.fromBuffer(bytesOutput);
    return output;
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

  static Future<void> sendMessage(
      models.SendMessageRequest input) async {
    var bytesInput = input.writeToBuffer();
    await _call('sendMessage', bytesInput);
  }

  static Future<models.FileMetadata> serveFile(
      models.ServeFileRequest input) async {
    var bytesInput = input.writeToBuffer();
    var bytesOutput = await _call('serveFile', bytesInput);
    var output = models.FileMetadata.fromBuffer(bytesOutput);
    return output;
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

  static Future<void> stopServingFile(
      models.StringMessage input) async {
    var bytesInput = input.writeToBuffer();
    await _call('stopServingFile', bytesInput);
  }
}
