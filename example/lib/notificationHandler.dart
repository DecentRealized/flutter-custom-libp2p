import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';

// This is a singleton class.
class NotificationHandler {
  static final NotificationHandler _singleton = NotificationHandler._internal();

  factory NotificationHandler() {
    return _singleton;
  }

  NotificationHandler._internal();

  final List<Function(Warning)> _onWarningCallbacks = [];
  final List<Function(String)> _onInfoCallbacks = [];
  final List<Function(Message)> _onMessageCallbacks = [];

  bool _running = true;

  void addOnWarningCallback(Function(Warning) callback) {
    _onWarningCallbacks.add(callback);
  }

  void addOnInfoCallback(Function(String) callback) {
    _onInfoCallbacks.add(callback);
  }

  void addOnMessageCallback(Function(Message) callback) {
    _onMessageCallbacks.add(callback);
  }

  void removeOnWarningCallback(Function(Warning) callback) {
    _onWarningCallbacks.remove(callback);
  }

  void removeOnInfoCallback(Function(String) callback) {
    _onInfoCallbacks.remove(callback);
  }

  void removeOnMessageCallback(Function(Message) callback) {
    _onMessageCallbacks.remove(callback);
  }

  void start() async {
    while (_running) {
      var notifications = await CustomLibP2P.flushNotifications();
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

  void stop() async {
    _running = false;
  }
}
