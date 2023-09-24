//
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = {
  '1': 'Notification',
  '2': [
    {'1': 'warning_notification', '3': 1, '4': 1, '5': 11, '6': '.models.Warning', '9': 0, '10': 'warningNotification'},
    {'1': 'info_notification', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'infoNotification'},
    {'1': 'message_notification', '3': 3, '4': 1, '5': 11, '6': '.models.Message', '9': 0, '10': 'messageNotification'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24SRAoUd2FybmluZ19ub3RpZmljYXRpb24YASABKAsyDy5tb2RlbHMuV2'
    'FybmluZ0gAUhN3YXJuaW5nTm90aWZpY2F0aW9uEi0KEWluZm9fbm90aWZpY2F0aW9uGAIgASgJ'
    'SABSEGluZm9Ob3RpZmljYXRpb24SRAoUbWVzc2FnZV9ub3RpZmljYXRpb24YAyABKAsyDy5tb2'
    'RlbHMuTWVzc2FnZUgAUhNtZXNzYWdlTm90aWZpY2F0aW9uQgYKBGRhdGE=');

@$core.Deprecated('Use notificationsDescriptor instead')
const Notifications$json = {
  '1': 'Notifications',
  '2': [
    {'1': 'notification', '3': 1, '4': 3, '5': 11, '6': '.models.Notification', '10': 'notification'},
  ],
};

/// Descriptor for `Notifications`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationsDescriptor = $convert.base64Decode(
    'Cg1Ob3RpZmljYXRpb25zEjgKDG5vdGlmaWNhdGlvbhgBIAMoCzIULm1vZGVscy5Ob3RpZmljYX'
    'Rpb25SDG5vdGlmaWNhdGlvbg==');

