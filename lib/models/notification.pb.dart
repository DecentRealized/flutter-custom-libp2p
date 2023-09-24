//
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'message.pb.dart' as $2;
import 'warning.pb.dart' as $1;

enum Notification_Data {
  warningNotification, 
  infoNotification, 
  messageNotification, 
  notSet
}

class Notification extends $pb.GeneratedMessage {
  factory Notification({
    $1.Warning? warningNotification,
    $core.String? infoNotification,
    $2.Message? messageNotification,
  }) {
    final $result = create();
    if (warningNotification != null) {
      $result.warningNotification = warningNotification;
    }
    if (infoNotification != null) {
      $result.infoNotification = infoNotification;
    }
    if (messageNotification != null) {
      $result.messageNotification = messageNotification;
    }
    return $result;
  }
  Notification._() : super();
  factory Notification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Notification_Data> _Notification_DataByTag = {
    1 : Notification_Data.warningNotification,
    2 : Notification_Data.infoNotification,
    3 : Notification_Data.messageNotification,
    0 : Notification_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification', package: const $pb.PackageName(_omitMessageNames ? '' : 'models'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$1.Warning>(1, _omitFieldNames ? '' : 'warningNotification', subBuilder: $1.Warning.create)
    ..aOS(2, _omitFieldNames ? '' : 'infoNotification')
    ..aOM<$2.Message>(3, _omitFieldNames ? '' : 'messageNotification', subBuilder: $2.Message.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification clone() => Notification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification)) as Notification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

  Notification_Data whichData() => _Notification_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Warning get warningNotification => $_getN(0);
  @$pb.TagNumber(1)
  set warningNotification($1.Warning v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWarningNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearWarningNotification() => clearField(1);
  @$pb.TagNumber(1)
  $1.Warning ensureWarningNotification() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get infoNotification => $_getSZ(1);
  @$pb.TagNumber(2)
  set infoNotification($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInfoNotification() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfoNotification() => clearField(2);

  @$pb.TagNumber(3)
  $2.Message get messageNotification => $_getN(2);
  @$pb.TagNumber(3)
  set messageNotification($2.Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageNotification() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageNotification() => clearField(3);
  @$pb.TagNumber(3)
  $2.Message ensureMessageNotification() => $_ensure(2);
}

class Notifications extends $pb.GeneratedMessage {
  factory Notifications({
    $core.Iterable<Notification>? notification,
  }) {
    final $result = create();
    if (notification != null) {
      $result.notification.addAll(notification);
    }
    return $result;
  }
  Notifications._() : super();
  factory Notifications.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notifications.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notifications', package: const $pb.PackageName(_omitMessageNames ? '' : 'models'), createEmptyInstance: create)
    ..pc<Notification>(1, _omitFieldNames ? '' : 'notification', $pb.PbFieldType.PM, subBuilder: Notification.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notifications clone() => Notifications()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notifications copyWith(void Function(Notifications) updates) => super.copyWith((message) => updates(message as Notifications)) as Notifications;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notifications create() => Notifications._();
  Notifications createEmptyInstance() => create();
  static $pb.PbList<Notifications> createRepeated() => $pb.PbList<Notifications>();
  @$core.pragma('dart2js:noInline')
  static Notifications getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notifications>(create);
  static Notifications? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Notification> get notification => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
