import 'package:eccomerce/controller/filter_controller.dart';
import 'package:eccomerce/routes/routes.dart';
import 'package:eccomerce/view/screen/filters/price_range.dart';
import 'package:eccomerce/view/screen/filters/select_category.dart';
import 'package:eccomerce/view/screen/filters/select_color.dart';
import 'package:eccomerce/view/screen/filters/select_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Filters extends StatelessWidget {
  Filters({super.key});

  @override
  final filterController = Get.put(FilterController());

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
        elevation: 4,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder<FilterController>(
            builder: (controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Price range',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                priceRange(),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Colors',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SelectColor(),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Sizes',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: const Color(0xffD3262640).withOpacity(0.2),
                          offset: const Offset(
                            0.0,
                            .5,
                          ),
                          blurRadius: 1.0,
                        ),
                      ], color: Colors.white),
                    ),
                    SelectSize(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SelectCategory(),
                ListTile(
                    onTap: () {
                      Get.offNamed(Routes.brand);
                    },
                    subtitle: const Text(
                      'adidas Originals, Jack & Jones, s.Oliver',
                      style: TextStyle(fontSize: 11),
                    ),
                    title: const Text(
                      'Brand',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xffD3262640).withOpacity(0.4),
                offset: const Offset(
                  0.0,
                  04.0,
                ),
                blurRadius: 10.0,
              ),
            ],
            color: Colors.white,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            iconSize: 30,
            selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500, color: Color(0xffD3262640)),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffD3262640).withOpacity(0.1),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        width: 160,
                        height: 36,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              )),
                          onPressed: () {},
                          child: const Text('Discard',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ),
                      )),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffD3262640).withOpacity(0.1),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        width: 160,
                        height: 36,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffDB3022),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                          onPressed: () {},
                          child: const Text('APPLY',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      )),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
