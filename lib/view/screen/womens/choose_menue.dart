import 'package:eccomerce/controller/choose_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> chooseMenue() {
  final ChooseController = Get.put(ChooseMenueController());

  return Get.bottomSheet(Container(
    height: 300,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34), topRight: Radius.circular(34))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Sort by',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        GetBuilder<ChooseMenueController>(
            builder: (controller) => ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: GestureDetector(
                      onTap: () => controller.onSelected(index),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        color: controller.selectedItem == index
                            ? const Color(0xffDB3022)
                            : Colors.white,
                        width: double.infinity,
                        height: 48,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            controller.sortList[index],
                            style: TextStyle(
                                color: controller.selectedItem == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemCount: controller.sortList.length,
                ))
      ],
    ),
  ));
}
