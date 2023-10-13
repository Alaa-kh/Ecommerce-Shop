import 'package:eccomerce/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final filterController = Get.put(FilterController());

Container priceRange() {
  return Container(
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
    width: double.infinity,
    height: 100,
    child: SliderTheme(
      data: const SliderThemeData(trackHeight: 2),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r'$78',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(r'$143',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
              ],
            ),
          ),
          GetBuilder<FilterController>(
            builder: (controller) => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: RangeSlider(
                  labels: RangeLabels(
                      controller.values.start.round().toString(),
                      controller.values.end.round().toString()),
                  onChanged: (value) => controller.onChange(value),
                  values: controller.values,
                  max: controller.max,
                  min: controller.min,
                  activeColor: const Color(0xffDB3022),
                  inactiveColor: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
