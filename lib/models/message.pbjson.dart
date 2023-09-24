//
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageMetadataDescriptor instead')
const MessageMetadata$json = {
  '1': 'MessageMetadata',
  '2': [
    {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 4, '10': 'timestamp'},
  ],
};

/// Descriptor for `MessageMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageMetadataDescriptor = $convert.base64Decode(
    'Cg9NZXNzYWdlTWV0YWRhdGESEgoEZnJvbRgBIAEoCVIEZnJvbRIOCgJ0bxgCIAEoCVICdG8SHA'
    'oJdGltZXN0YW1wGAMgASgEUgl0aW1lc3RhbXA=');

@$core.Deprecated('Use messageDataDescriptor instead')
const MessageData$json = {
  '1': 'MessageData',
  '2': [
    {'1': 'string_message', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'stringMessage'},
    {'1': 'file_metadata_message', '3': 2, '4': 1, '5': 11, '6': '.models.FileMetadata', '9': 0, '10': 'fileMetadataMessage'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `MessageData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDataDescriptor = $convert.base64Decode(
    'CgtNZXNzYWdlRGF0YRInCg5zdHJpbmdfbWVzc2FnZRgBIAEoCUgAUg1zdHJpbmdNZXNzYWdlEk'
    'oKFWZpbGVfbWV0YWRhdGFfbWVzc2FnZRgCIAEoCzIULm1vZGVscy5GaWxlTWV0YWRhdGFIAFIT'
    'ZmlsZU1ldGFkYXRhTWVzc2FnZUIGCgRkYXRh');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.models.MessageMetadata', '10': 'metadata'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.models.MessageData', '10': 'data'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEjMKCG1ldGFkYXRhGAEgASgLMhcubW9kZWxzLk1lc3NhZ2VNZXRhZGF0YVIIbW'
    'V0YWRhdGESJwoEZGF0YRgCIAEoCzITLm1vZGVscy5NZXNzYWdlRGF0YVIEZGF0YQ==');

