import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class IsAllowedNode extends StatefulWidget {
  const IsAllowedNode({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _IsAllowedNode createState() => _IsAllowedNode();
}

class _IsAllowedNode extends State<IsAllowedNode> {
  String _peerId = "";
  bool _isAllowed = false;

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onIsAllowedNode() async {
    setState(() {
      _isAllowed = false;
    });
    var res = await CustomLibP2P.isAllowedNode(StringMessage(message: _peerId));
    setState(() {
      _isAllowed = res.message;
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
                              )),
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: _onIsAllowedNode,
                          child: Text('Check'),
                        ),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Is Allowed: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            _isAllowed.toString(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ]),
                ])));
  }
}
