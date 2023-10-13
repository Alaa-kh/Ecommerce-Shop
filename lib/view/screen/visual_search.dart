import 'package:eccomerce/view/screen/take_photo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VisualSearch extends StatelessWidget {
  VisualSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Visual search',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/image.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Search for an outfit by taking a photo or uploading an image',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffD3262640).withOpacity(0.2),
                            offset: const Offset(
                              0.0,
                              04.0,
                            ),
                            blurRadius: 8.0,
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffDB3022)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ))),
                          onPressed: () {
                            Get.to(TakePhoto());
                          },
                          child: const Text('TAKE A PHOTO')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
