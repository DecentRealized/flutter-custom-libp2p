import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

class GetDatabaseDirectory extends StatefulWidget {
  const GetDatabaseDirectory({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetDatabaseDirectory createState() => _GetDatabaseDirectory();
}

class _GetDatabaseDirectory extends State<GetDatabaseDirectory> {
  String _databaseDirectory = "";

  void _onGetDatabaseDirectory() async {
    setState(() {
      _databaseDirectory = "";
    });
    var strMsg = await CustomLibP2P.getDatabaseDirectory();
    setState(() {
      _databaseDirectory = strMsg.message;
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
                          onPressed: _onGetDatabaseDirectory,
                          child: Text('Call Go Func!'),
                        ),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Database Directory: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            _databaseDirectory,
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ])
                ])));
  }
}
