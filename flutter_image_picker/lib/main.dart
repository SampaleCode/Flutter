import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Picker',
      home: ImagePick(),
    );
  }
}

class ImagePick extends StatefulWidget {
  @override
  _ImagePickState createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File _image;

  Future getImage() async {
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: _image == null ? Text('Image') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Capture Image',
        onPressed: getImage,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
