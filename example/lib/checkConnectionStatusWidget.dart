import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class CheckConnectionStatus extends StatefulWidget {
  const CheckConnectionStatus({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _CheckConnectionStatus createState() => _CheckConnectionStatus();
}

class _CheckConnectionStatus extends State<CheckConnectionStatus> {
  String _peerId = "";
  List<String> _connectionStatus = [];

  void _onPeerIdChange(String value) {
    setState(() {
      _peerId = value;
    });
  }

  void _onCheckConnectionStatus() async {
    setState(() {
      _connectionStatus = [];
    });
    var stringArrMsg = await CustomLibP2P.checkConnectionStatus(
        StringMessage(message: _peerId));
    setState(() {
      _connectionStatus = stringArrMsg.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlueAccent,
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
              key: Key('main-column-check-connection-status'),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 12),
                SizedBox(
                  width: 300,
                  child: TextField(
                      key: Key('peer-id-check-connection-status'),
                      onChanged: _onPeerIdChange,
                      decoration: const InputDecoration(
                        labelText: 'Peer ID',
                      )),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  key: Key('submit-check-connection-status'),
                  onPressed: _onCheckConnectionStatus,
                  child: Text('Call Go Func!'),
                ),
                SizedBox(height: 12),
                Wrap(
                  key: Key('message-wrap-check-connection-status'),
                  children: [
                    Text(
                      'Connection Status: ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SelectableText(
                      key: Key('message-from-go-check-connection-status'),
                      '$_connectionStatus',
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
