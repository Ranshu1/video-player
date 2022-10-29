import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newvideoplayer/VideoPlayerFile.dart';

class PickFile extends StatefulWidget {
  PickFile({ Key? key}) : super(key: key);

  @override
  _PickFileState createState() => _PickFileState();
}

class _PickFileState extends State<PickFile> {
  late PickedFile _pickedFile;
  final ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            _pickedFile = (await picker.getVideo(source: ImageSource.gallery))!;

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => VideoPlayerFileCustum(
                          videopath: _pickedFile.path,
                        )));
          },
          child: Text("Upload video"),
        ),
      ),
    );
  }
}
