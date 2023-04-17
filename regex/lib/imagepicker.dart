import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();

  getImage({required ImageSource source}) {}
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff03fca5),
          leading: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          title: const Text('My AppBar',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2,
                  color: Colors.black)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.photo)),
          ],
          actionsIconTheme: const IconThemeData(color: Colors.white, size: 30),
          automaticallyImplyLeading: false,
        ),
        body: Column());
  }
}
