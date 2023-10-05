import 'dart:async';
import 'dart:typed_data';

class Binding {
  static final Binding _singleton = Binding._internal();

  factory Binding() {
    return _singleton;
  }

  Binding._internal();

  Future<List<Uint8List>> callAsync(String name, Uint8List payload) async {
    List<Uint8List> result = [
      Uint8List.fromList(''.codeUnits),
      Uint8List.fromList('Binding not supported'.codeUnits)
    ];
    return result;
  }

  bool isSupported() {
    return false;
  }
}
