import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RatingController extends GetxController {
  bool selected = false;
  onChange(bool selected) {
    this.selected = !selected;
    update();
  }

  final ImagePicker picker = ImagePicker();

  File? pickImage;

  fetchImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      pickImage = File(image.path);
    }

    update();
  }
}
