import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class AllowNode extends StatefulWidget {
  const AllowNode({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _AllowNode createState() => _AllowNode();
}

class _AllowNode extends State<AllowNode> {
  String _peerId = "";
  bool _success = false;

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onAllowNode() async {
    setState(() {
      _success = false;
    });
    await CustomLibP2P.allowNode(StringMessage(message: _peerId));
    setState(() {
      _success = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.greenAccent,
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
                              onChanged: _onPeerIdChange,
                              decoration: const InputDecoration(
                                labelText: 'Peer ID',
                              ),
                              onSubmitted: (value) {
                                _onPeerIdChange(value);
                                _onAllowNode();
                              }),
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                            key: Key('submit-allow-node'),
                            onPressed: _onAllowNode,
                            child: Text('Call Go Func!')),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Success: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            key: Key('message-from-go-allow-node'),
                            '$_success',
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ])
                ])));
  }
}
