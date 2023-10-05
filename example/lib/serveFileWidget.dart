import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ServeFile extends StatefulWidget {
  const ServeFile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _ServeFile createState() => _ServeFile();
}

class _ServeFile extends State<ServeFile> {
  String _filePath = "";
  String _peerId = "";
  FileMetadata _messageFromGo = FileMetadata();

  void _onPickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filePath = result.files.single.path!;
      });
    } else {
      setState(() {
        _filePath = "";
      });
    }
  }

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onServeFileFromGo() async {
    final _go_msg = await CustomLibP2P.serveFile(
        ServeFileRequest(filePath: _filePath, peerId: _peerId));
    setState(() {
      _messageFromGo = _go_msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
              key: Key('main-column-serve-file'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                SizedBox(
                    key: Key('file-picker-box'),
                    child: ElevatedButton(
                      key: Key('file-picker-button'),
                      onPressed: _onPickFiles,
                      child: Text(_filePath == "" ? "Pick A File" : _filePath),
                    )),
                SizedBox(
                  width: 250,
                  key: Key('peer-id-box'),
                  child: TextField(
                    key: Key('peer-id-text-field'),
                    decoration:
                        new InputDecoration(labelText: 'Serve To (Peer Id)'),
                    onChanged: _onPeerIdChange,
                    onSubmitted: (value) {
                      _onPeerIdChange(value);
                    },
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                    key: Key('submit-serve-file'),
                    onPressed: (_filePath == "" || _peerId == "")
                        ? null
                        : _onServeFileFromGo,
                    child: Text('Call Go Func!')),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-serve-file'),
                  children: [
                    Text(
                      'Message From Go: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-serve-file'),
                      '$_messageFromGo',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
