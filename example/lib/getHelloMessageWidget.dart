import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetHelloMessage extends StatefulWidget {
  const GetHelloMessage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetHelloMessageState createState() => _GetHelloMessageState();
}

class _GetHelloMessageState extends State<GetHelloMessage> {
  String _messageFromGo = "";
  String _userName = "";

  void _getHelloMessageFromGo() async {
    setState(() {
      _messageFromGo = "Loading...";
    });
    final _go_msg = await CustomLibP2P.getHelloMessage(_userName);
    setState(() {
      _messageFromGo = _go_msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Card(
          color: Colors.white24,
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
                  SizedBox(
                    width: 250,
                    height: 36,
                    key: Key('username-box'),
                    child: TextField(
                      key: Key('username-text-field'),
                      decoration: new InputDecoration(hintText: 'Your Name'),
                      onChanged: (value) {
                        setState(() {
                          _userName = value;
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          _userName = value;
                        });
                        _getHelloMessageFromGo();
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                      key: Key('submit-get-hello-message'),
                      onPressed: _getHelloMessageFromGo,
                      child: Text('Call Go Func!')),
                  SizedBox(height: 12),
                  Wrap(
                    key: Key('message-wrap'),
                    children: [
                      Text(
                        'Message From Go: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        key: Key('message-from-go'),
                        '$_messageFromGo',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  )
                ],
              )
            ]),
          )),
    ));
  }
}
