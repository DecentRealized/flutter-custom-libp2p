//
//  Generated code. Do not modify.
//  source: download_status.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DownloadStatus extends $pb.GeneratedMessage {
  factory DownloadStatus({
    $core.bool? downloading,
    $core.String? fileBasePath,
    $core.String? fileName,
    $core.String? fileSha256,
    $fixnum.Int64? fullFileSize,
    $fixnum.Int64? currentFileSize,
  }) {
    final $result = create();
    if (downloading != null) {
      $result.downloading = downloading;
    }
    if (fileBasePath != null) {
      $result.fileBasePath = fileBasePath;
    }
    if (fileName != null) {
      $result.fileName = fileName;
    }
    if (fileSha256 != null) {
      $result.fileSha256 = fileSha256;
    }
    if (fullFileSize != null) {
      $result.fullFileSize = fullFileSize;
    }
    if (currentFileSize != null) {
      $result.currentFileSize = currentFileSize;
    }
    return $result;
  }
  DownloadStatus._() : super();
  factory DownloadStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'models'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'downloading')
    ..aOS(2, _omitFieldNames ? '' : 'fileBasePath')
    ..aOS(3, _omitFieldNames ? '' : 'fileName')
    ..aOS(4, _omitFieldNames ? '' : 'fileSha256')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'fullFileSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'currentFileSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadStatus clone() => DownloadStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadStatus copyWith(void Function(DownloadStatus) updates) => super.copyWith((message) => updates(message as DownloadStatus)) as DownloadStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadStatus create() => DownloadStatus._();
  DownloadStatus createEmptyInstance() => create();
  static $pb.PbList<DownloadStatus> createRepeated() => $pb.PbList<DownloadStatus>();
  @$core.pragma('dart2js:noInline')
  static DownloadStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadStatus>(create);
  static DownloadStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get downloading => $_getBF(0);
  @$pb.TagNumber(1)
  set downloading($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDownloading() => $_has(0);
  @$pb.TagNumber(1)
  void clearDownloading() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileBasePath => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileBasePath($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileBasePath() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileBasePath() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fileSha256 => $_getSZ(3);
  @$pb.TagNumber(4)
  set fileSha256($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileSha256() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileSha256() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get fullFileSize => $_getI64(4);
  @$pb.TagNumber(5)
  set fullFileSize($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFullFileSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearFullFileSize() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get currentFileSize => $_getI64(5);
  @$pb.TagNumber(6)
  set currentFileSize($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentFileSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentFileSize() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
