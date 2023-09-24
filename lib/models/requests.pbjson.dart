//
//  Generated code. Do not modify.
//  source: requests.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createNodeRequestDescriptor instead')
const CreateNodeRequest$json = {
  '1': 'CreateNodeRequest',
  '2': [
    {'1': 'use_internet', '3': 1, '4': 1, '5': 8, '10': 'useInternet'},
    {'1': 'private_key', '3': 2, '4': 1, '5': 12, '10': 'privateKey'},
  ],
};

/// Descriptor for `CreateNodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNodeRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVOb2RlUmVxdWVzdBIhCgx1c2VfaW50ZXJuZXQYASABKAhSC3VzZUludGVybmV0Eh'
    '8KC3ByaXZhdGVfa2V5GAIgASgMUgpwcml2YXRlS2V5');

@$core.Deprecated('Use serveFileRequestDescriptor instead')
const ServeFileRequest$json = {
  '1': 'ServeFileRequest',
  '2': [
    {'1': 'file_path', '3': 1, '4': 1, '5': 9, '10': 'filePath'},
    {'1': 'peer_id', '3': 2, '4': 1, '5': 9, '10': 'peerId'},
  ],
};

/// Descriptor for `ServeFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serveFileRequestDescriptor = $convert.base64Decode(
    'ChBTZXJ2ZUZpbGVSZXF1ZXN0EhsKCWZpbGVfcGF0aBgBIAEoCVIIZmlsZVBhdGgSFwoHcGVlcl'
    '9pZBgCIAEoCVIGcGVlcklk');

@$core.Deprecated('Use sendMessageRequestDescriptor instead')
const SendMessageRequest$json = {
  '1': 'SendMessageRequest',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 9, '10': 'peerId'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SendMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageRequestDescriptor = $convert.base64Decode(
    'ChJTZW5kTWVzc2FnZVJlcXVlc3QSFwoHcGVlcl9pZBgBIAEoCVIGcGVlcklkEhgKB21lc3NhZ2'
    'UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use downloadRequestDescriptor instead')
const DownloadRequest$json = {
  '1': 'DownloadRequest',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 9, '10': 'peerId'},
    {'1': 'file_sha256', '3': 2, '4': 1, '5': 9, '10': 'fileSha256'},
  ],
};

/// Descriptor for `DownloadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadRequestDescriptor = $convert.base64Decode(
    'Cg9Eb3dubG9hZFJlcXVlc3QSFwoHcGVlcl9pZBgBIAEoCVIGcGVlcklkEh8KC2ZpbGVfc2hhMj'
    'U2GAIgASgJUgpmaWxlU2hhMjU2');

