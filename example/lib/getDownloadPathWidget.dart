import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetDownloadPath extends StatefulWidget {
  const GetDownloadPath({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetDownloadPath createState() => _GetDownloadPath();
}

class _GetDownloadPath extends State<GetDownloadPath> {
  String _downloadPath = "";

  void _onGetDownloadPath() async {
    setState(() {
      _downloadPath = "";
    });
    var strMsg = await CustomLibP2P.getDownloadPath();
    setState(() {
      _downloadPath = strMsg.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white24,
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
                        ElevatedButton(
                          onPressed: _onGetDownloadPath,
                          child: Text('Call Go Func!'),
                        ),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Download Directory: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            _downloadPath,
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ])
                ])));
  }
}
