import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class StopServingFile extends StatefulWidget {
  const StopServingFile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _StopServingFile createState() => _StopServingFile();
}

class _StopServingFile extends State<StopServingFile> {
  String _fileSha265 = "";
  bool _messageFromGo = false;

  void _onFileSha256Change(String value) {
    setState(() {
      _fileSha265 = value;
    });
  }

  void _onStopServingFile() async {
    final _go_msg = await CustomLibP2P.stopServingFile(_fileSha265);
    setState(() {
      _messageFromGo = _go_msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Card(
          color: Colors.yellowAccent,
          margin: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
            child: Column(children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Column(
                key: Key('main-column-stop-serving-file'),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 12),
                  SizedBox(
                    width: 250,
                    height: 36,
                    key: Key('file-sha256-box'),
                    child: TextField(
                      key: Key('file-sha256-text-field'),
                      decoration: new InputDecoration(hintText: 'File SHA256'),
                      onChanged: _onFileSha256Change,
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                      key: Key('submit-serve-file'),
                      onPressed:
                          (_fileSha265 == "") ? null : _onStopServingFile,
                      child: Text('Call Go Func!')),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap-stop-serving-file'),
                    children: [
                      Text(
                        'Message From Go: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SelectableText(
                        key: Key('message-from-go-stop-serving-file'),
                        '$_messageFromGo',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  )
                ],
              ),
            ]),
          )),
    ));
  }
}
