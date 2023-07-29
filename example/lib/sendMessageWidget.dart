import 'package:custom_libp2p/custom_libp2p.dart';
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
    final _go_msg = await CustomLibP2P.SendMessage(_peerId, _message);
    setState(() {
      _messageFromGo = _go_msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Card(
          color: Colors.orangeAccent,
          margin: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
            child: Column(children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Column(
                key: Key('main-column'),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 12),
                  SizedBox(
                    width: 250,
                    height: 36,
                    key: Key('peer-id-box'),
                    child: TextField(
                      key: Key('peer-id-text-field'),
                      decoration: new InputDecoration(hintText: 'Peer Id'),
                      onChanged: _onPeerIdChange,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    height: 36,
                    key: Key('message-box'),
                    child: TextField(
                      key: Key('message-text-field'),
                      decoration: new InputDecoration(hintText: 'Message'),
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
                    key: Key('message-wrap'),
                    children: [
                      Text(
                        'Message From Go: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        key: Key('message-from-go'),
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
