import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetNodeId extends StatefulWidget {
  const GetNodeId({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetNodeId createState() => _GetNodeId();
}

class _GetNodeId extends State<GetNodeId> {
  String nodeId = "";

  void _getNodeIdFromGo() async {
    final _go_msg = await CustomLibP2P.getNodeId();
    setState(() {
      nodeId = _go_msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Card(
          color: Colors.lightBlueAccent,
          margin: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
            child: Column(children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Column(
                key: Key('main-column-get-node-id'),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 12),
                  ElevatedButton(
                      key: Key('submit-get-node-id'),
                      onPressed: _getNodeIdFromGo,
                      child: Text('Call Go Func!')),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap-get-node-id'),
                    children: [
                      Text(
                        'Node ID: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SelectableText(
                        key: Key('message-from-go-get-node-id'),
                        '$nodeId',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              )
            ]),
          )),
    ));
  }
}
