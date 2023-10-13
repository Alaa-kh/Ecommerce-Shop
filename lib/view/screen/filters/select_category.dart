import 'package:eccomerce/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectCategory extends StatelessWidget {
  SelectCategory({
    super.key,
  });
  final filterController = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      builder: (controller) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 150,
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
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 40),
            child: Container(
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () => controller.onTapCategory(index),
                        child: Container(
                          width: 100,
                          child: Text(
                            controller.categoryList[index],
                            style: TextStyle(
                                color: controller.currentCategory == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: controller.currentCategory == index
                                  ? Color(0xffDB3022)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.4),
                                  width: 1)),
                        ));
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 35,
                      ),
                  itemCount: controller.categoryList.length),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 60),
            child: Container(
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () => controller.onTapCategory2(index),
                        child: Container(
                          width: 100,
                          child: Text(
                            controller.categoryList2[index],
                            style: TextStyle(
                                color: controller.currentCategory2 == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: controller.currentCategory2 == index
                                  ? Color(0xffDB3022)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.4),
                                  width: 1)),
                        ));
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 35,
                      ),
                  itemCount: controller.categoryList2.length),
            ),
          ),
        ],
      ),
    );
  }
}
