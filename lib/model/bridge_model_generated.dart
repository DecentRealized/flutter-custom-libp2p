// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library model;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;


class GetHelloMessageRequest {
  GetHelloMessageRequest._(this._bc, this._bcOffset);
  factory GetHelloMessageRequest(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<GetHelloMessageRequest> reader = _GetHelloMessageRequestReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get userName => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);

  @override
  String toString() {
    return 'GetHelloMessageRequest{userName: $userName}';
  }
}

class _GetHelloMessageRequestReader extends fb.TableReader<GetHelloMessageRequest> {
  const _GetHelloMessageRequestReader();

  @override
  GetHelloMessageRequest createObject(fb.BufferContext bc, int offset) => 
    GetHelloMessageRequest._(bc, offset);
}

class GetHelloMessageRequestBuilder {
  GetHelloMessageRequestBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(1);
  }

  int addUserNameOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class GetHelloMessageRequestObjectBuilder extends fb.ObjectBuilder {
  final String? _userName;

  GetHelloMessageRequestObjectBuilder({
    String? userName,
  })
      : _userName = userName;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? userNameOffset = _userName == null ? null
        : fbBuilder.writeString(_userName!);
    fbBuilder.startTable(1);
    fbBuilder.addOffset(0, userNameOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class StringResponse {
  StringResponse._(this._bc, this._bcOffset);
  factory StringResponse(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<StringResponse> reader = _StringResponseReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get output => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get error => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'StringResponse{output: $output, error: $error}';
  }
}

class _StringResponseReader extends fb.TableReader<StringResponse> {
  const _StringResponseReader();

  @override
  StringResponse createObject(fb.BufferContext bc, int offset) => 
    StringResponse._(bc, offset);
}

class StringResponseBuilder {
  StringResponseBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addOutputOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addErrorOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class StringResponseObjectBuilder extends fb.ObjectBuilder {
  final String? _output;
  final String? _error;

  StringResponseObjectBuilder({
    String? output,
    String? error,
  })
      : _output = output,
        _error = error;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? outputOffset = _output == null ? null
        : fbBuilder.writeString(_output!);
    final int? errorOffset = _error == null ? null
        : fbBuilder.writeString(_error!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, outputOffset);
    fbBuilder.addOffset(1, errorOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class BytesResponse {
  BytesResponse._(this._bc, this._bcOffset);
  factory BytesResponse(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<BytesResponse> reader = _BytesResponseReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<int>? get output => const fb.Uint8ListReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get error => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'BytesResponse{output: $output, error: $error}';
  }
}

class _BytesResponseReader extends fb.TableReader<BytesResponse> {
  const _BytesResponseReader();

  @override
  BytesResponse createObject(fb.BufferContext bc, int offset) => 
    BytesResponse._(bc, offset);
}

class BytesResponseBuilder {
  BytesResponseBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addOutputOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addErrorOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class BytesResponseObjectBuilder extends fb.ObjectBuilder {
  final List<int>? _output;
  final String? _error;

  BytesResponseObjectBuilder({
    List<int>? output,
    String? error,
  })
      : _output = output,
        _error = error;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? outputOffset = _output == null ? null
        : fbBuilder.writeListUint8(_output!);
    final int? errorOffset = _error == null ? null
        : fbBuilder.writeString(_error!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, outputOffset);
    fbBuilder.addOffset(1, errorOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class BoolResponse {
  BoolResponse._(this._bc, this._bcOffset);
  factory BoolResponse(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<BoolResponse> reader = _BoolResponseReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  bool get output => const fb.BoolReader().vTableGet(_bc, _bcOffset, 4, false);
  String? get error => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'BoolResponse{output: $output, error: $error}';
  }
}

class _BoolResponseReader extends fb.TableReader<BoolResponse> {
  const _BoolResponseReader();

  @override
  BoolResponse createObject(fb.BufferContext bc, int offset) => 
    BoolResponse._(bc, offset);
}

class BoolResponseBuilder {
  BoolResponseBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addOutput(bool? output) {
    fbBuilder.addBool(0, output);
    return fbBuilder.offset;
  }
  int addErrorOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class BoolResponseObjectBuilder extends fb.ObjectBuilder {
  final bool? _output;
  final String? _error;

  BoolResponseObjectBuilder({
    bool? output,
    String? error,
  })
      : _output = output,
        _error = error;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? errorOffset = _error == null ? null
        : fbBuilder.writeString(_error!);
    fbBuilder.startTable(2);
    fbBuilder.addBool(0, _output);
    fbBuilder.addOffset(1, errorOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class KeyPairResponse {
  KeyPairResponse._(this._bc, this._bcOffset);
  factory KeyPairResponse(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<KeyPairResponse> reader = _KeyPairResponseReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  KeyPair? get output => KeyPair.reader.vTableGetNullable(_bc, _bcOffset, 4);
  String? get error => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'KeyPairResponse{output: $output, error: $error}';
  }
}

class _KeyPairResponseReader extends fb.TableReader<KeyPairResponse> {
  const _KeyPairResponseReader();

  @override
  KeyPairResponse createObject(fb.BufferContext bc, int offset) => 
    KeyPairResponse._(bc, offset);
}

class KeyPairResponseBuilder {
  KeyPairResponseBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addOutputOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addErrorOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class KeyPairResponseObjectBuilder extends fb.ObjectBuilder {
  final KeyPairObjectBuilder? _output;
  final String? _error;

  KeyPairResponseObjectBuilder({
    KeyPairObjectBuilder? output,
    String? error,
  })
      : _output = output,
        _error = error;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? outputOffset = _output?.getOrCreateOffset(fbBuilder);
    final int? errorOffset = _error == null ? null
        : fbBuilder.writeString(_error!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, outputOffset);
    fbBuilder.addOffset(1, errorOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class KeyPair {
  KeyPair._(this._bc, this._bcOffset);
  factory KeyPair(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<KeyPair> reader = _KeyPairReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get privateKey => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get publicKey => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'KeyPair{privateKey: $privateKey, publicKey: $publicKey}';
  }
}

class _KeyPairReader extends fb.TableReader<KeyPair> {
  const _KeyPairReader();

  @override
  KeyPair createObject(fb.BufferContext bc, int offset) => 
    KeyPair._(bc, offset);
}

class KeyPairBuilder {
  KeyPairBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addPrivateKeyOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addPublicKeyOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class KeyPairObjectBuilder extends fb.ObjectBuilder {
  final String? _privateKey;
  final String? _publicKey;

  KeyPairObjectBuilder({
    String? privateKey,
    String? publicKey,
  })
      : _privateKey = privateKey,
        _publicKey = publicKey;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? privateKeyOffset = _privateKey == null ? null
        : fbBuilder.writeString(_privateKey!);
    final int? publicKeyOffset = _publicKey == null ? null
        : fbBuilder.writeString(_publicKey!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, privateKeyOffset);
    fbBuilder.addOffset(1, publicKeyOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}