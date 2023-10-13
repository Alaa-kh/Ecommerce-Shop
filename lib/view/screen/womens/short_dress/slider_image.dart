import 'package:eccomerce/controller/dress_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final dressController = Get.put(DressController());

Widget buildImage(String image, int index) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: Image.asset(
      image,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
  );
}

Widget buildIndicator() {
  return GetBuilder<DressController>(
    builder: (controller) => AnimatedSmoothIndicator(
      activeIndex: controller.activeIndex,
      count: controller.images.length,
      effect: const ExpandingDotsEffect(
          activeDotColor: Colors.red, dotWidth: 15, dotHeight: 5),
    ),
  );
}
