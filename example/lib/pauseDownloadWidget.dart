import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PauseDownload extends StatefulWidget {
  const PauseDownload({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _PauseDownload createState() => _PauseDownload();
}

class _PauseDownload extends State<PauseDownload> {
  String _fileSha256 = "";
  String _peerId = "";
  bool _messageFromGo = false;

  void _onFileSha256Change(String value) {
    setState(() {
      _fileSha256 = value;
    });
  }

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onPauseDownload() async {
    await CustomLibP2P.pauseDownload(
        DownloadRequest(peerId: _peerId, fileSha256: _fileSha256));
    setState(() {
      _messageFromGo = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.amberAccent,
        margin: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
          child: Column(children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Column(
              key: Key('main-column-pause-download'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                SizedBox(
                  width: 250,
                  key: Key('file-sha256-box'),
                  child: TextField(
                    key: Key('file-sha256-text-field'),
                    decoration: new InputDecoration(labelText: 'File SHA256'),
                    onChanged: _onFileSha256Change,
                  ),
                ),
                SizedBox(
                  width: 250,
                  key: Key('peer-id-box'),
                  child: TextField(
                    key: Key('peer-id-text-field'),
                    decoration: new InputDecoration(labelText: 'Peer Id'),
                    onChanged: _onPeerIdChange,
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                    key: Key('submit-pause-download'),
                    onPressed: (_peerId == "" || _fileSha256 == "")
                        ? null
                        : _onPauseDownload,
                    child: Text('Call Go Func!')),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-pause-download'),
                  children: [
                    Text(
                      'Message From Go: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-pause-download'),
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
