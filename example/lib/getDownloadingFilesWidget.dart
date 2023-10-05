import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class GetDownloadingFiles extends StatefulWidget {
  const GetDownloadingFiles({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetDownloadingFiles createState() => _GetDownloadingFiles();
}

class _GetDownloadingFiles extends State<GetDownloadingFiles> {
  List<FileMetadata> _downloadingFiles = [];

  void _onGetDownloadingFiles() async {
    setState(() {
      _downloadingFiles = [];
    });
    var metadataMsg = await CustomLibP2P.getDownloadingFiles();
    setState(() {
      _downloadingFiles = metadataMsg.filesMetadata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.amberAccent,
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
                          onPressed: _onGetDownloadingFiles,
                          child: Text('Call Go Func!'),
                        ),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Downloading Files: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            _downloadingFiles.toString(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ])
                ])));
  }
}
