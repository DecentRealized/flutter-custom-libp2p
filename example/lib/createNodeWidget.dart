import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class CreateNode extends StatefulWidget {
  const CreateNode({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _CreateNode createState() => _CreateNode();
}

class _CreateNode extends State<CreateNode> {
  bool success = false;
  bool _useInternet = false;

  void _createNodeFromGo() async {
    final keyPair = await CustomLibP2P.createKeyPair();
    final _go_msg = await CustomLibP2P.createNode(CreateNodeRequest(
        useInternet: _useInternet, privateKey: keyPair.privateKey));
    setState(() {
      success = true;
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
                key: Key('main-column-create-node'),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 12),
                  SizedBox(
                    width: 250,
                    height: 36,
                    key: Key('use-internet-box'),
                    child: CheckboxListTile(
                      key: Key('use-internet-radio'),
                      title: Text('Use Internet'),
                      value: _useInternet,
                      onChanged: (value) {
                        setState(() {
                          _useInternet = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                      key: Key('submit-create-node'),
                      onPressed: _createNodeFromGo,
                      child: Text('Call Go Func!')),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap-create-node'),
                    children: [
                      Text(
                        'Success: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SelectableText(
                        key: Key('message-from-go-create-node'),
                        '$success',
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
