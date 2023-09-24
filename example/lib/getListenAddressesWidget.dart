import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetListenAddresses extends StatefulWidget {
  const GetListenAddresses({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetListenAddresses createState() => _GetListenAddresses();
}

class _GetListenAddresses extends State<GetListenAddresses> {
  List<String> nodeAddresses = [];

  void _getNodeAddressFromGo() async {
    final _go_msg = await CustomLibP2P.getListenAddresses();
    setState(() {
      nodeAddresses = _go_msg.message;
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
                key: Key('main-column-get-listen-addresses'),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 12),
                  ElevatedButton(
                      key: Key('submit-get-node-id'),
                      onPressed: _getNodeAddressFromGo,
                      child: Text('Call Go Func!')),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap-get-listen-addresses'),
                    children: [
                      Text(
                        'Node ID: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SelectableText(
                        key: Key('message-from-go-get-listen-addresses'),
                        '$nodeAddresses',
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
