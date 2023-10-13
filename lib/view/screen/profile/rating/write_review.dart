import 'package:eccomerce/controller/rating_controller.dart';
import 'package:eccomerce/view/screen/profile/rating/send_review.dart';
import 'package:eccomerce/view/screen/profile/rating/text_filed_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

final ratingController = Get.put(RatingController());

Future<dynamic> writeReview() {
  return Get.bottomSheet(
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffD3262640).withOpacity(0.1),
                  offset: const Offset(
                    0.0,
                    04.0,
                  ),
                  blurRadius: 8.0,
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(34), topRight: Radius.circular(34))),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'What is you rate?',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                RatingBarIndicator(
                  itemPadding: const EdgeInsets.all(8),
                  unratedColor: Colors.grey,
                  itemSize: 36,
                  itemCount: 5,
                  rating: 3,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star_border_purple500_sharp,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        'Please share your opinion',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'about the product',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextFiledReview(),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<RatingController>(
                  builder: (controller) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffD3262640).withOpacity(0.1),
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 8.0,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        width: 104,
                        height: 104,
                        child: Column(
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
                              height: 10,
                            ),
                            const Text(
                              'Add your photo',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      controller.pickImage == null
                          ? const Center(
                              child: Text(
                              'No Image',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                          : Image.file(
                              controller.pickImage!,
                              fit: BoxFit.fill,
                              width: 104,
                              height: 104,
                            )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SendReview(),
              ],
            ),
          ),
        ),
      ));
}
