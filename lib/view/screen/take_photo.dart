import 'package:eccomerce/controller/photo_controller.dart';
import 'package:eccomerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TakePhoto extends StatelessWidget {
  TakePhoto({super.key});

  final photoController = Get.put(TakePhotoController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TakePhotoController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Search by taking a photo',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: controller.pickImage == null
              ? const Center(
                  child: Text(
                  'No Image',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
              : Image.file(
                  controller.pickImage!,
                  fit: BoxFit.fill,
                  height: 630,
                ),
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 160.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    elevation: 0,
                    backgroundColor: const Color(0xffDB3022),
                    onPressed: () {
                      controller.fetchImage();
                    },
                    child: const Icon(
                      Icons.camera_alt_rounded,
                      size: 31,
                    )),
                const SizedBox(
                  width: 80,
                ),
                IconButton(
                    onPressed: () {
                      Get.offNamed(Routes.mainScreen);
                    },
                    icon: const Icon(
                      Icons.done,
                      size: 31,
                      color: Color(0xffDB3022),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
