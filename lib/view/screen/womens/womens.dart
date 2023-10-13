import 'package:eccomerce/routes/routes.dart';
import 'package:eccomerce/view/screen/filters/filters.dart';
import 'package:eccomerce/view/screen/womens/add_favorite.dart';
import 'package:eccomerce/view/screen/womens/choose_menue.dart';
import 'package:eccomerce/view/widget/sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Womens extends StatelessWidget {
  const Womens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffD3262640).withOpacity(0.2),
                    blurRadius: 25.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Women’s tops',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Sections(),
                    const SizedBox(
                      height: 23,
                    ),
                    Container(
                      height: 24,
                      width: 380,
                      decoration: const BoxDecoration(color: Color(0xffF9F9F9)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(bottom: 20),
                              icon: const Icon(Icons.filter_list_outlined),
                              onPressed: () {
                                Get.to(() => Filters());
                              },
                            ),
                            const Text(
                              'Filters',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              padding: const EdgeInsets.only(bottom: 20),
                              icon: const Icon(Icons.swap_vert),
                              onPressed: () {
                                chooseMenue();
                              },
                            ),
                            const Text(
                              'Price: lowest to high',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 47,
                            ),
                            IconButton(
                                padding: const EdgeInsets.only(bottom: 20),
                                icon: const Icon(Icons.view_module),
                                onPressed: () {
                                  Get.offNamed(Routes.womensHome);
                                }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemBuilder: (context, index) => Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18.0, left: 18, right: 18, bottom: 14),
                    child: Container(
                      width: 380,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffD3262640).withOpacity(0.2),
                              blurRadius: 25.0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/imagew.png',
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Pullover',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Mango',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
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
                                      rating: 4,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    const Text(
                                      '(3)',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  r'51$',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddFavorite(
                    top: 100,
                    right: 15,
                  )
                ],
              ),
              shrinkWrap: true,
              itemCount: 3,
            )
          ],
        ),
      )),
    );
  }
}
