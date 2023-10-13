import 'package:eccomerce/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectColor extends StatelessWidget {
  SelectColor({
    super.key,
  });
  final filterController = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      builder: (controller) => Container(
          height: 100,
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () => controller.onChangeColor(index),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: controller.colorList[index],
                          shape: BoxShape.circle,
                        ),
                        child: Text(''),
                      ));
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 25,
                    ),
                itemCount: controller.colorList.length),
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.2),
              offset: const Offset(
                0.0,
                .5,
              ),
              blurRadius: 1.0,
            ),
          ], color: Colors.white)),
    );
  }
}
