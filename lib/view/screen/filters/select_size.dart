import 'package:eccomerce/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectSize extends StatelessWidget {
  SelectSize({
    super.key,
  });
  final filterController = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 40,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () => controller.onTapSize(index),
                    child: Container(
                      child:  Text(
                        controller.sizeList[index],
                        style: TextStyle(
                            color: controller.currentSelected == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: 14),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: controller.currentSelected == index
                              ? Color(0xffDB3022)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.4), width: 1)),
                    ));
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: controller.sizeList.length),
        ),
      ),
    );
  }
}
