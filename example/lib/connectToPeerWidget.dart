import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class ConnectToPeer extends StatefulWidget {
  const ConnectToPeer({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _ConnectToPeerState createState() => _ConnectToPeerState();
}

class _ConnectToPeerState extends State<ConnectToPeer> {
  String _peerId = "";
  bool _success = false;

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onConnectToPeer() async {
    setState(() {
      _success = false;
    });
    await CustomLibP2P.connectToPeer(StringMessage(message: _peerId));
    setState(() {
      _success = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.lightBlueAccent,
        margin: const EdgeInsets.all(10),
        child: Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 12),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            key: Key('peer-id'),
                            onChanged: (value) {
                              setState(() {
                                _peerId = value;
                              });
                            },
                            decoration: const InputDecoration(
                              labelText: 'Peer ID',
                            ),
                            onSubmitted: (value) {
                              _onPeerIdChange(value);
                              _onConnectToPeer();
                            },
                          ),
                        ),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Success: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            key: Key('message-from-connect-to-peer-widget'),
                            '$_success',
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ]),
                ])));
  }
}
