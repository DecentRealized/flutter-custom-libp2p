//
//  Generated code. Do not modify.
//  source: download_status.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use downloadStatusDescriptor instead')
const DownloadStatus$json = {
  '1': 'DownloadStatus',
  '2': [
    {'1': 'downloading', '3': 1, '4': 1, '5': 8, '10': 'downloading'},
    {'1': 'file_base_path', '3': 2, '4': 1, '5': 9, '10': 'fileBasePath'},
    {'1': 'file_name', '3': 3, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'file_sha256', '3': 4, '4': 1, '5': 9, '10': 'fileSha256'},
    {'1': 'full_file_size', '3': 5, '4': 1, '5': 4, '10': 'fullFileSize'},
    {'1': 'current_file_size', '3': 6, '4': 1, '5': 4, '10': 'currentFileSize'},
  ],
};

/// Descriptor for `DownloadStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadStatusDescriptor = $convert.base64Decode(
    'Cg5Eb3dubG9hZFN0YXR1cxIgCgtkb3dubG9hZGluZxgBIAEoCFILZG93bmxvYWRpbmcSJAoOZm'
    'lsZV9iYXNlX3BhdGgYAiABKAlSDGZpbGVCYXNlUGF0aBIbCglmaWxlX25hbWUYAyABKAlSCGZp'
    'bGVOYW1lEh8KC2ZpbGVfc2hhMjU2GAQgASgJUgpmaWxlU2hhMjU2EiQKDmZ1bGxfZmlsZV9zaX'
    'plGAUgASgEUgxmdWxsRmlsZVNpemUSKgoRY3VycmVudF9maWxlX3NpemUYBiABKARSD2N1cnJl'
    'bnRGaWxlU2l6ZQ==');

