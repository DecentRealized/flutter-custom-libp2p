import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _SendMessage createState() => _SendMessage();
}

class _SendMessage extends State<SendMessage> {
  String _peerId = "";
  String _message = "";
  bool _messageFromGo = false;

  void _onMessageChange(String value) {
    setState(() {
      _message = value;
    });
  }

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onSendMessage() async {
    await CustomLibP2P.sendMessage(
        SendMessageRequest(peerId: _peerId, message: _message));
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
              key: Key('main-column-send-message'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                SizedBox(
                  width: 250,
                  key: Key('peer-id-box'),
                  child: TextField(
                    key: Key('peer-id-text-field'),
                    decoration: new InputDecoration(labelText: 'Peer Id'),
                    onChanged: _onPeerIdChange,
                  ),
                ),
                SizedBox(
                  width: 250,
                  key: Key('message-box'),
                  child: TextField(
                    key: Key('message-text-field'),
                    decoration: new InputDecoration(labelText: 'Message'),
                    onChanged: _onMessageChange,
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                    key: Key('submit-serve-file'),
                    onPressed: (_peerId == "" || _message == "")
                        ? null
                        : _onSendMessage,
                    child: Text('Call Go Func!')),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-send-message'),
                  children: [
                    Text(
                      'Message From Go: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-send-message'),
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
