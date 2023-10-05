import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetBlockedNodes extends StatefulWidget {
  const GetBlockedNodes({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetBlockedNodes createState() => _GetBlockedNodes();
}

class _GetBlockedNodes extends State<GetBlockedNodes> {
  List<String> _blockedNodes = [];

  void _onGetBlockedNodes() async {
    setState(() {
      _blockedNodes = [];
    });
    var stringArrMsg = await CustomLibP2P.getBlockedNodes();
    setState(() {
      _blockedNodes = stringArrMsg.message;
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
              key: Key('main-column-get-blocked-nodes'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                ElevatedButton(
                  key: Key('submit-get-blocked-nodes'),
                  onPressed: _onGetBlockedNodes,
                  child: Text('Call Go Func!'),
                ),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-get-blocked-nodes'),
                  children: [
                    Text(
                      'Blocked Nodes: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-get-blocked-nodes'),
                      '$_blockedNodes',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
