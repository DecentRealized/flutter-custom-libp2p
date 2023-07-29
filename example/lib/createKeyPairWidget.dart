import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class CreateKeyPair extends StatefulWidget {
  const CreateKeyPair({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _CreateKeyPair createState() => _CreateKeyPair();
}

class _CreateKeyPair extends State<CreateKeyPair> {
  List<int> publicKey = [];
  List<int> privateKey = [];

  void _createKeyPairFromGo() async {
    final _go_msg = await CustomLibP2P.createKeyPair();
    setState(() {
      publicKey = _go_msg.publicKey!;
      privateKey = _go_msg.privateKey!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Card(
          color: Colors.lightGreenAccent,
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
                  ElevatedButton(
                      key: Key('submit-create-key-pair'),
                      onPressed: _createKeyPairFromGo,
                      child: Text('Call Go Func!')),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap-public'),
                    children: [
                      Text(
                        'Public Key: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        key: Key('message-from-go'),
                        '$publicKey',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap-private'),
                    children: [
                      Text(
                        'Private Key: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        key: Key('message-from-go'),
                        '$privateKey',
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
