import 'dart:developer';

import 'package:dating/repositories/storage/storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageContainer extends StatelessWidget {
  final TabController tabController;

  const CustomImageContainer({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        right: 10,
      ),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
            ),
            top: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
            ),
            left: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
            ),
            right: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
              onPressed: () async {
                ImagePicker _picker = ImagePicker();
                final XFile? _image =
                    await _picker.pickImage(source: ImageSource.gallery);

                if (_image == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No pictures wsa selected'),
                    ),
                  );
                }
                if (_image != null) {
                  log('Uploading....');
                  StorageRepository().uploadImage(_image);
                }
              },
              icon: Icon(Icons.add_circle),
              color: Colors.red),
        ),
      ),
    );
  }
}
