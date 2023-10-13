import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerce/controller/dress_controller.dart';
import 'package:eccomerce/view/screen/womens/add_favorite.dart';
import 'package:eccomerce/view/screen/womens/short_dress/checkout_under.dart';
import 'package:eccomerce/view/screen/womens/short_dress/dropdown_color.dart';
import 'package:eccomerce/view/screen/womens/short_dress/dropdown_size.dart';
import 'package:eccomerce/view/screen/womens/short_dress/slider_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ShortDress extends StatelessWidget {
  ShortDress({super.key});

  final dressController = Get.put(DressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        elevation: 4,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
        title: const Text(
          'Short dress',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GetBuilder<DressController>(
          builder: (controller) => SafeArea(
            child: Column(
              children: [
                CarouselSlider.builder(
                    itemCount: controller.images.length,
                    itemBuilder: (context, index, realIndex) =>
                        buildImage(controller.images[index], index),
                    options: CarouselOptions(
                        height: 400,
                        onPageChanged: ((index, reason) {
                          controller.changeSlider(index);
                        }))),
                const SizedBox(
                  height: 6,
                ),
                buildIndicator(),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dropDownSize(),
                      dropDownColor(),
                      const AddFavorite(top: 0, right: 0)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'H&M',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            r'$19.99',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Short black dress',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            unratedColor: Colors.grey,
                            itemSize: 17,
                            itemCount: 5,
                            rating: 5,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            '(10)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                        style: TextStyle(fontSize: 14, height: 1.3),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CheckOutUnder(),
    );
  }
}
