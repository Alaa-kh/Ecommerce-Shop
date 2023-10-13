import 'package:eccomerce/controller/brand_controller.dart';
import 'package:eccomerce/view/screen/filters/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Brand extends StatelessWidget {
  Brand({super.key});

  final brandController = Get.put(BrandController());

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
        elevation: 4,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
        title: const Text(
          'Brand',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffD3262640).withOpacity(0.2),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    onChanged: (searchName) {},
                    decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xff8E8E93),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500)),
                  )),
              GetBuilder<BrandController>(
                builder: (controller) => Container(
                  child: Expanded(
                    child: ListView.builder(
                      itemExtent: 58,
                      itemCount: controller.brandCheck.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              contentPadding: const EdgeInsets.all(1),
                              onTap: () {
                                controller.onChange(index);
                              },
                              title: Text(
                                controller.brandCheck[index].name,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              trailing: Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                checkColor: Colors.white,
                                focusColor: Colors.red,
                                fillColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (!states
                                      .contains(MaterialState.selected)) {
                                    return Colors.white;
                                  }
                                  return const Color(0xffDB3022);
                                }),
                                value: controller.brandCheck[index].value,
                                onChanged: (bool? value) {
                                  controller.onChange(index);
                                },
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ])),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
