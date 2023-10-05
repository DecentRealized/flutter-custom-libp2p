import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetAllowedNodes extends StatefulWidget {
  const GetAllowedNodes({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetAllowedNodes createState() => _GetAllowedNodes();
}

class _GetAllowedNodes extends State<GetAllowedNodes> {
  List<String> _allowedNodes = [];

  void _onGetAllowedNodes() async {
    setState(() {
      _allowedNodes = [];
    });
    var stringArrMsg = await CustomLibP2P.getAllowedNodes();
    setState(() {
      _allowedNodes = stringArrMsg.message;
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
              key: Key('main-column-get-allowed-nodes'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                ElevatedButton(
                  key: Key('submit-get-allowed-nodes'),
                  onPressed: _onGetAllowedNodes,
                  child: Text('Call Go Func!'),
                ),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-get-allowed-nodes'),
                  children: [
                    Text(
                      'Allowed Nodes: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-get-allowed-nodes'),
                      '$_allowedNodes',
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
