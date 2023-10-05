import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class StopNode extends StatefulWidget {
  const StopNode({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _StopNode createState() => _StopNode();
}

class _StopNode extends State<StopNode> {
  bool _msgFromGo = false;

  void _stopNodeFromGo() async {
    await CustomLibP2P.stopNode();
    setState(() {
      _msgFromGo = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
              key: Key('main-column-stop-node'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                ElevatedButton(
                    key: Key('submit-stop-node'),
                    onPressed: _stopNodeFromGo,
                    child: Text('Call Go Func!')),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-stop-node'),
                  children: [
                    Text(
                      'Node ID: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-stop-node'),
                      '$_msgFromGo',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            )
          ]),
        ));
  }
}
