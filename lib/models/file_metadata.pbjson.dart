//
//  Generated code. Do not modify.
//  source: file_metadata.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fileMetadataListDescriptor instead')
const FileMetadataList$json = {
  '1': 'FileMetadataList',
  '2': [
    {'1': 'files_metadata', '3': 1, '4': 3, '5': 11, '6': '.models.FileMetadata', '10': 'filesMetadata'},
  ],
};

/// Descriptor for `FileMetadataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileMetadataListDescriptor = $convert.base64Decode(
    'ChBGaWxlTWV0YWRhdGFMaXN0EjsKDmZpbGVzX21ldGFkYXRhGAEgAygLMhQubW9kZWxzLkZpbG'
    'VNZXRhZGF0YVINZmlsZXNNZXRhZGF0YQ==');

@$core.Deprecated('Use fileMetadataDescriptor instead')
const FileMetadata$json = {
  '1': 'FileMetadata',
  '2': [
    {'1': 'file_name', '3': 1, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'file_sha256', '3': 2, '4': 1, '5': 9, '10': 'fileSha256'},
    {'1': 'file_size', '3': 3, '4': 1, '5': 4, '10': 'fileSize'},
    {'1': 'client_file_info', '3': 4, '4': 1, '5': 11, '6': '.models.ClientFileInfo', '9': 0, '10': 'clientFileInfo'},
    {'1': 'server_file_info', '3': 5, '4': 1, '5': 11, '6': '.models.ServerFileInfo', '9': 0, '10': 'serverFileInfo'},
  ],
  '8': [
    {'1': 'SpecificData'},
  ],
};

/// Descriptor for `FileMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileMetadataDescriptor = $convert.base64Decode(
    'CgxGaWxlTWV0YWRhdGESGwoJZmlsZV9uYW1lGAEgASgJUghmaWxlTmFtZRIfCgtmaWxlX3NoYT'
    'I1NhgCIAEoCVIKZmlsZVNoYTI1NhIbCglmaWxlX3NpemUYAyABKARSCGZpbGVTaXplEkIKEGNs'
    'aWVudF9maWxlX2luZm8YBCABKAsyFi5tb2RlbHMuQ2xpZW50RmlsZUluZm9IAFIOY2xpZW50Rm'
    'lsZUluZm8SQgoQc2VydmVyX2ZpbGVfaW5mbxgFIAEoCzIWLm1vZGVscy5TZXJ2ZXJGaWxlSW5m'
    'b0gAUg5zZXJ2ZXJGaWxlSW5mb0IOCgxTcGVjaWZpY0RhdGE=');

@$core.Deprecated('Use clientFileInfoDescriptor instead')
const ClientFileInfo$json = {
  '1': 'ClientFileInfo',
  '2': [
    {'1': 'is_downloading', '3': 1, '4': 1, '5': 8, '10': 'isDownloading'},
    {'1': 'base_path', '3': 2, '4': 1, '5': 9, '10': 'basePath'},
    {'1': 'file_server', '3': 3, '4': 1, '5': 9, '10': 'fileServer'},
  ],
};

/// Descriptor for `ClientFileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientFileInfoDescriptor = $convert.base64Decode(
    'Cg5DbGllbnRGaWxlSW5mbxIlCg5pc19kb3dubG9hZGluZxgBIAEoCFINaXNEb3dubG9hZGluZx'
    'IbCgliYXNlX3BhdGgYAiABKAlSCGJhc2VQYXRoEh8KC2ZpbGVfc2VydmVyGAMgASgJUgpmaWxl'
    'U2VydmVy');

@$core.Deprecated('Use serverFileInfoDescriptor instead')
const ServerFileInfo$json = {
  '1': 'ServerFileInfo',
  '2': [
    {'1': 'base_path', '3': 1, '4': 1, '5': 9, '10': 'basePath'},
    {'1': 'authorized_accessors', '3': 2, '4': 3, '5': 9, '10': 'authorizedAccessors'},
  ],
};

/// Descriptor for `ServerFileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverFileInfoDescriptor = $convert.base64Decode(
    'Cg5TZXJ2ZXJGaWxlSW5mbxIbCgliYXNlX3BhdGgYASABKAlSCGJhc2VQYXRoEjEKFGF1dGhvcm'
    'l6ZWRfYWNjZXNzb3JzGAIgAygJUhNhdXRob3JpemVkQWNjZXNzb3Jz');

