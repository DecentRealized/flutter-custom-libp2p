import 'package:flutter/material.dart';

import './createKeyPairWidget.dart';
import './createNodeWidget.dart';
import './getDownloadStatusWidget.dart';
import './getHelloMessageWidget.dart';
import './getListenAddressesWidget.dart';
import './getNodeIdWidget.dart';
import './pauseDownloadWidget.dart';
import './resumeDownloadWidget.dart';
import './sendMessageWidget.dart';
import './serveFileWidget.dart';
import './stopDownloadWidget.dart';
import './stopNodeWidget.dart';
import './stopServingFileWidget.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          GetHelloMessage(
            title: "Get Hello Message",
            key: Key("get-hello-message"),
          ),
          CreateKeyPair(title: "Create Key Pair"),
          CreateNode(title: "Create Random Node"),
          GetNodeId(title: "Get Node ID"),
          GetListenAddresses(title: "Get Listen Addresses"),
          StopNode(title: "Stop Node"),
          // AllowNode(title: "Allow Node"),
          // IsAllowedNode(title: "Is Allowed Node"),
          // GetAllowedNodes(title: "Get Allowed Nodes"),
          // DenyNode(title: "Deny Node"),
          ServeFile(title: "Serve File"),
          StopServingFile(title: "Stop Serving File"),
          SendMessage(title: "Send Message"),
          PauseDownload(title: "Pause Download"),
          ResumeDownload(title: "Resume Download"),
          StopDownload(title: "Stop Download"),
          GetDownloadStatus(title: "Get Download Status")
        ],
      )),
    );
  }
}
