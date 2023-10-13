import 'package:eccomerce/controller/rating_controller.dart';
import 'package:eccomerce/view/screen/profile/rating/lines_rate.dart';
import 'package:eccomerce/view/screen/profile/rating/numbers_rate.dart';

import 'package:eccomerce/view/screen/profile/rating/review_build.dart';
import 'package:eccomerce/view/screen/profile/rating/stars_rate.dart';
import 'package:eccomerce/view/screen/profile/rating/write_review.dart';
import 'package:eccomerce/view/screen/profile/rating/write_review_under.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

List texts = [
  'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. The underarms were not too wide and the dress was made well.',
  'I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5\'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.',
];

double rate = 0;

class Rating extends StatelessWidget {
  Rating({super.key});

  @override
  final ratingController = Get.put(RatingController());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        elevation: 0,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rating&Reviews',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 25.0),
                          child: Column(
                            children: [
                              Text(
                                '4.3',
                                style: TextStyle(
                                    fontSize: 44, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '23 ratings',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        StarsRate(),
                        LinesRate(),
                        NumbersRate()
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '8 reviews',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        GetBuilder<RatingController>(
                          builder: (controller) => Row(
                            children: [
                              Checkbox(
                                  activeColor: Color(0xffDB3022),
                                  value: controller.selected,
                                  onChanged: (value) =>
                                      controller.onChange(controller.selected)),
                              const Text(
                                'With photo',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const ReviewBuild(
                      text:
                          'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. The underarms were not too wide and the dress was made well.',
                      imageAvatar: 'assets/images/imag.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewBuild(
                      text:
                          'I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5\'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.',
                      imageAvatar: 'assets/images/image 8.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewBuild(
                      text:
                          'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. The underarms were not too wide and the dress was made well.',
                      imageAvatar: 'assets/images/image 22.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewBuild(
                      text:
                          'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. The underarms were not too wide and the dress was made well.',
                      imageAvatar: 'assets/images/imag.png',
                    ),
                  ],
                ))),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          writeReview();
        },
        child: const WriteReviewUnder(),
      ),
    );
  }
}
