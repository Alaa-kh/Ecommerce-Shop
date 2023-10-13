import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class TakePhotoController extends GetxController {
  File? pickImage;
  final ImagePicker picker = ImagePicker();

  fetchImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      pickImage = File(image.path);
    }

    update();
  }
}
