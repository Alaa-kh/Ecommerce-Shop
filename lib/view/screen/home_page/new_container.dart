import 'package:eccomerce/view/screen/choose_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class NewContainer extends StatelessWidget {
  const NewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18, left: 18),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(ChooseCollection());
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    )),
              ],
            ),
            const Text(
              'You’ve never seen it before!',
              style: TextStyle(color: Colors.black, fontSize: 11),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => Stack(children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 150,
                    height: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/photo.png',
                              width: 148,
                              height: 184,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(29),
                                    color: Colors.black),
                                width: 40,
                                height: 24,
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'New',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
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
                          height: 5,
                        ),
                        const Text(
                          'Dorothy Perkins',
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Evening Dress',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          children: [
                            Text(
                              r'15$',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              r'12$',
                              style: TextStyle(
                                  color: Color(0xffDB3022),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 160,
                    right: 22,
                    child: Container(
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
                          borderRadius: BorderRadius.circular(29),
                          color: Colors.white),
                      width: 36,
                      height: 36,
                      child: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 20,
                          )),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
