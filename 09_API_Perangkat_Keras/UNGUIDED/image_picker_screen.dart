import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';

class ImagePickerScreen extends StatefulWidget {
  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? _image; // Variable untuk menyimpan gambar yang diambil
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source, imageQuality: 50);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  void _deleteImage() {
    setState(() {
      _image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Latihan Memilih Gambar'),
        ),
        backgroundColor: Colors.yellow.shade300,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            DottedBorder(
              color: Colors.grey,
              strokeWidth: 2,
              dashPattern: [5, 4],
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              child: Container(
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: _image != null
                      ? Image.file(
                          _image!,
                          width: 400,
                          height: 250,
                          fit: BoxFit.cover,
                        )
                      : Icon(
                          Icons.image_outlined,
                          size: 150,
                          color: Colors.grey,
                        ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => _pickImage(ImageSource.camera),
                  icon: Icon(Icons.camera_alt, color: Colors.black),
                  label: Text(
                    'Camera',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[300],
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () => _pickImage(ImageSource.gallery),
                  icon: Icon(
                    Icons.photo,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Gallery',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[300],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _deleteImage,
              child: Text(
                'Hapus Gambar',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow.shade700,
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.yellow.shade50,
    );
  }
}
