import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:custom_libp2p/models/models.dart';
import 'package:flutter/material.dart';

class GetUploadingFiles extends StatefulWidget {
  const GetUploadingFiles({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _GetUploadingFiles createState() => _GetUploadingFiles();
}

class _GetUploadingFiles extends State<GetUploadingFiles> {
  List<FileMetadata> _uploadingFiles = [];

  void _onGetUploadingFiles() async {
    setState(() {
      _uploadingFiles = [];
    });
    var metadataMsg = await CustomLibP2P.getUploadingFiles();
    setState(() {
      _uploadingFiles = metadataMsg.filesMetadata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.yellowAccent,
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
                          onPressed: _onGetUploadingFiles,
                          child: Text('Call Go Func!'),
                        ),
                        SizedBox(height: 12),
                        Wrap(children: [
                          Text(
                            'Uploading Files: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SelectableText(
                            _uploadingFiles.toString(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ])
                      ])
                ])));
  }
}
