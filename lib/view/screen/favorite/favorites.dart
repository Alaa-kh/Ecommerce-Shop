import 'package:eccomerce/view/screen/favorite/favorite_item.dart';
import 'package:eccomerce/view/screen/filters/filters.dart';
import 'package:eccomerce/view/screen/womens/choose_menue.dart';
import 'package:eccomerce/view/widget/sections.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

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
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
          Container(
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
                  padding: EdgeInsets.only(left: 18.0, top: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Favorites',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Sections(),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Container(
                          height: 24,
                          width: 380,
                          decoration:
                              const BoxDecoration(color: Color(0xffF9F9F9)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
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
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
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
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SingleChildScrollView(
                          child: FavoriteItem(),
                        )
                      ])))
        ])),
      ),
    );
  }
}
