//
//  Generated code. Do not modify.
//  source: file_metadata.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

enum FileMetadata_SpecificData {
  clientFileInfo, 
  serverFileInfo, 
  notSet
}

class FileMetadata extends $pb.GeneratedMessage {
  factory FileMetadata({
    $core.String? fileName,
    $core.String? fileSha256,
    $fixnum.Int64? fileSize,
    ClientFileInfo? clientFileInfo,
    ServerFileInfo? serverFileInfo,
  }) {
    final $result = create();
    if (fileName != null) {
      $result.fileName = fileName;
    }
    if (fileSha256 != null) {
      $result.fileSha256 = fileSha256;
    }
    if (fileSize != null) {
      $result.fileSize = fileSize;
    }
    if (clientFileInfo != null) {
      $result.clientFileInfo = clientFileInfo;
    }
    if (serverFileInfo != null) {
      $result.serverFileInfo = serverFileInfo;
    }
    return $result;
  }
  FileMetadata._() : super();
  factory FileMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FileMetadata_SpecificData> _FileMetadata_SpecificDataByTag = {
    4 : FileMetadata_SpecificData.clientFileInfo,
    5 : FileMetadata_SpecificData.serverFileInfo,
    0 : FileMetadata_SpecificData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'models'), createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'fileName')
    ..aOS(2, _omitFieldNames ? '' : 'fileSha256')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'fileSize', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ClientFileInfo>(4, _omitFieldNames ? '' : 'clientFileInfo', subBuilder: ClientFileInfo.create)
    ..aOM<ServerFileInfo>(5, _omitFieldNames ? '' : 'serverFileInfo', subBuilder: ServerFileInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileMetadata clone() => FileMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileMetadata copyWith(void Function(FileMetadata) updates) => super.copyWith((message) => updates(message as FileMetadata)) as FileMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileMetadata create() => FileMetadata._();
  FileMetadata createEmptyInstance() => create();
  static $pb.PbList<FileMetadata> createRepeated() => $pb.PbList<FileMetadata>();
  @$core.pragma('dart2js:noInline')
  static FileMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileMetadata>(create);
  static FileMetadata? _defaultInstance;

  FileMetadata_SpecificData whichSpecificData() => _FileMetadata_SpecificDataByTag[$_whichOneof(0)]!;
  void clearSpecificData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileSha256 => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileSha256($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileSha256() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileSha256() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get fileSize => $_getI64(2);
  @$pb.TagNumber(3)
  set fileSize($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileSize() => clearField(3);

  @$pb.TagNumber(4)
  ClientFileInfo get clientFileInfo => $_getN(3);
  @$pb.TagNumber(4)
  set clientFileInfo(ClientFileInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasClientFileInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientFileInfo() => clearField(4);
  @$pb.TagNumber(4)
  ClientFileInfo ensureClientFileInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  ServerFileInfo get serverFileInfo => $_getN(4);
  @$pb.TagNumber(5)
  set serverFileInfo(ServerFileInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasServerFileInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearServerFileInfo() => clearField(5);
  @$pb.TagNumber(5)
  ServerFileInfo ensureServerFileInfo() => $_ensure(4);
}

class ClientFileInfo extends $pb.GeneratedMessage {
  factory ClientFileInfo({
    $core.String? basePath,
    $core.String? fileServer,
  }) {
    final $result = create();
    if (basePath != null) {
      $result.basePath = basePath;
    }
    if (fileServer != null) {
      $result.fileServer = fileServer;
    }
    return $result;
  }
  ClientFileInfo._() : super();
  factory ClientFileInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientFileInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientFileInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'basePath')
    ..aOS(2, _omitFieldNames ? '' : 'fileServer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientFileInfo clone() => ClientFileInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientFileInfo copyWith(void Function(ClientFileInfo) updates) => super.copyWith((message) => updates(message as ClientFileInfo)) as ClientFileInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientFileInfo create() => ClientFileInfo._();
  ClientFileInfo createEmptyInstance() => create();
  static $pb.PbList<ClientFileInfo> createRepeated() => $pb.PbList<ClientFileInfo>();
  @$core.pragma('dart2js:noInline')
  static ClientFileInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientFileInfo>(create);
  static ClientFileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get basePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set basePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileServer => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileServer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileServer() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileServer() => clearField(2);
}

class ServerFileInfo extends $pb.GeneratedMessage {
  factory ServerFileInfo({
    $core.String? basePath,
    $core.Iterable<$core.String>? authorizedAccessors,
  }) {
    final $result = create();
    if (basePath != null) {
      $result.basePath = basePath;
    }
    if (authorizedAccessors != null) {
      $result.authorizedAccessors.addAll(authorizedAccessors);
    }
    return $result;
  }
  ServerFileInfo._() : super();
  factory ServerFileInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerFileInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerFileInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'basePath')
    ..pPS(2, _omitFieldNames ? '' : 'authorizedAccessors')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerFileInfo clone() => ServerFileInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerFileInfo copyWith(void Function(ServerFileInfo) updates) => super.copyWith((message) => updates(message as ServerFileInfo)) as ServerFileInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerFileInfo create() => ServerFileInfo._();
  ServerFileInfo createEmptyInstance() => create();
  static $pb.PbList<ServerFileInfo> createRepeated() => $pb.PbList<ServerFileInfo>();
  @$core.pragma('dart2js:noInline')
  static ServerFileInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerFileInfo>(create);
  static ServerFileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get basePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set basePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get authorizedAccessors => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
