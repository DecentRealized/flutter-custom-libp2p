import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Bridge Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Go Bridge Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          key: Key('main-column'),
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
            SizedBox(height: 25),
            ElevatedButton(
                key: Key('submit-get-hello-message'),
                onPressed: _getHelloMessageFromGo,
                child: Text('Call Go Func!')),
            SizedBox(height: 25),
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
        ),
      ),
    );
  }
}
