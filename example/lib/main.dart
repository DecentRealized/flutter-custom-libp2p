import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

import './allowNodeWidget.dart';
import './blockNodeWidget.dart';
import './checkConnectionStatusWidget.dart';
import './connectToPeerWidget.dart';
import './createKeyPairWidget.dart';
import './createNodeWidget.dart';
import './getAllowedNodesWidget.dart';
import './getBlockedNodesWidget.dart';
import './getDatabaseDirectoryWidget.dart';
import './getDownloadPathWidget.dart';
import './getDownloadStatusWidget.dart';
import './getDownloadingFilesWidget.dart';
import './getHelloMessageWidget.dart';
import './getListenAddressesWidget.dart';
import './getNodeIdWidget.dart';
import './getUploadingFilesWidget.dart';
import './isAllowedNodeWidget.dart';
import './isBlockedNodeWidget.dart';
import './pauseDownloadWidget.dart';
import './resumeDownloadWidget.dart';
import './sendMessageWidget.dart';
import './serveFileWidget.dart';
import './stopDownloadWidget.dart';
import './stopNodeWidget.dart';
import './stopServingFileWidget.dart';

void main() {
  CustomLibP2P.startNotificationHandler();
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
  int currentPageIndex = 0;
  bool errorHandlerIsSet = false;
  List<Warning> warnings = [];
  List<String> infos = [];
  List<Message> messages = [];
  List<int> pending = [0, 0, 0, 0];

  @override
  void initState() {
    super.initState();
    CustomLibP2PException.addOnErrorCallback((p0) => {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                      title: const Text('CustomLibP2PException'),
                      content: Text(p0),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ]))
        });
    CustomLibP2P.addOnWarningCallback((p0) => {
          setState(() {
            warnings.add(p0);
            pending[1] += 1;
          })
        });
    CustomLibP2P.addOnInfoCallback((p0) => {
          setState(() {
            infos.add(p0);
            pending[2] += 1;
          })
        });
    CustomLibP2P.addOnMessageCallback((p0) => {
          setState(() {
            messages.add(p0);
            pending[3] += 1;
          })
        });
  }

  void removeWarning(Warning warning) {
    setState(() {
      warnings.remove(warning);
    });
  }

  void removeInfo(String info) {
    setState(() {
      infos.remove(info);
    });
  }

  void removeMessage(Message message) {
    setState(() {
      messages.remove(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
            [widget.title, "Warnings", "Info", "Messages"][currentPageIndex]),
      ),
      bottomNavigationBar: NavigationBar(
          backgroundColor:
              Theme.of(context).colorScheme.inversePrimary.withAlpha(80),
          onDestinationSelected: (int index) {
            setState(() {
              pending[currentPageIndex] = 0;
              currentPageIndex = index;
              pending[index] = 0;
            });
          },
          indicatorColor: Colors.redAccent,
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
                selectedIcon: Icon(Icons.add_circle, color: Colors.white),
                icon: Badge.count(
                  child:
                      Icon(Icons.add_circle_outline, color: Colors.redAccent),
                  count: pending[0],
                  isLabelVisible: pending[0] > 0,
                ),
                label: 'Actions'),
            NavigationDestination(
                selectedIcon: Icon(Icons.warning_rounded, color: Colors.white),
                icon: Badge.count(
                  child: Icon(Icons.warning_amber_rounded,
                      color: Colors.redAccent),
                  count: pending[1],
                  isLabelVisible: pending[1] > 0,
                ),
                label: 'Warnings'),
            NavigationDestination(
                selectedIcon: Icon(Icons.info, color: Colors.white),
                icon: Badge.count(
                  child: Icon(Icons.info_outline, color: Colors.redAccent),
                  count: pending[2],
                  isLabelVisible: pending[2] > 0,
                ),
                label: 'Info'),
            NavigationDestination(
                selectedIcon: Icon(Icons.message, color: Colors.white),
                icon: Badge.count(
                  child: Icon(Icons.message_outlined, color: Colors.redAccent),
                  count: pending[3],
                  isLabelVisible: pending[3] > 0,
                ),
                label: 'Messages'),
          ]),
      body: <Widget>[
        SingleChildScrollView(
            child: Wrap(alignment: WrapAlignment.center, children: [
          GetHelloMessage(
            title: "Get Hello Message",
            key: Key("get-hello-message"),
          ),
          CreateKeyPair(title: "Create Key Pair"),
          CreateNode(title: "Create Random Node"),
          GetNodeId(title: "Get Node ID"),
          GetListenAddresses(title: "Get Listen Addresses"),
          ConnectToPeer(title: "Connect To Peer"),
          CheckConnectionStatus(title: "Check Connection Status"),
          StopNode(title: "Stop Node"),
          GetDatabaseDirectory(title: "Get Database Directory"),
          GetDownloadPath(title: "Get Download Path"),
          AllowNode(title: "Allow Node"),
          IsAllowedNode(title: "Is Allowed Node"),
          GetAllowedNodes(title: "Get Allowed Nodes"),
          BlockNode(title: "Block Node"),
          IsBlockedNode(title: "Is Blocked Node"),
          GetBlockedNodes(title: "Get Blocked Nodes"),
          ServeFile(title: "Serve File"),
          StopServingFile(title: "Stop Serving File"),
          GetUploadingFiles(title: "Get Uploading Files"),
          SendMessage(title: "Send Message"),
          PauseDownload(title: "Pause Download"),
          ResumeDownload(title: "Resume Download"),
          StopDownload(title: "Stop Download"),
          GetDownloadingFiles(title: "Get Downloading Files"),
          GetDownloadStatus(title: "Get Download Status")
        ])),
        ListView(
          children: <Widget>[
            for (var warning in warnings)
              Column(children: [
                ListTile(
                  leading:
                      CircleAvatar(child: Icon(Icons.warning_amber_rounded)),
                  title: SelectableText(warning.error),
                  subtitle: SelectableText(warning.info),
                  trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => {removeWarning(warning)}),
                ),
                Divider(height: 0)
              ])
          ],
        ),
        ListView(
          children: <Widget>[
            for (var info in infos)
              Column(children: [
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.info_outline)),
                  title: SelectableText(info),
                  trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => {removeInfo(info)}),
                ),
                Divider(height: 0)
              ])
          ],
        ),
        ListView(
          children: <Widget>[
            for (var message in messages)
              Column(children: [
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.message_outlined)),
                  title: Text(
                    message.data.hasStringMessage() ? 'Message' : 'File',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(children: [
                    Row(children: [
                      Text(
                        'From: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SelectableText(message.metadata.from),
                    ]),
                    Row(children: [
                      Text(
                        'To: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SelectableText(message.metadata.to),
                    ]),
                    Row(children: [
                      Text(
                        'Timestamp: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SelectableText(DateTime.fromMillisecondsSinceEpoch(
                              message.metadata.timestamp.toInt() * 1000)
                          .toString()),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                      alignment: Alignment.centerLeft,
                      child: SelectableText(
                        message.data.hasStringMessage()
                            ? message.data.stringMessage
                            : message.data.fileMetadataMessage.toString(),
                      ),
                    ),
                  ]),
                  trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => {removeMessage(message)}),
                ),
                Divider(height: 0)
              ])
          ],
        ),
      ][currentPageIndex],
    );
  }
}
