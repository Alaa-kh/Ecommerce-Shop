import 'package:eccomerce/controller/dress_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final dressController = Get.put(DressController());
dropDownSize() {
  return GetBuilder<DressController>(
    builder: (controller) => Container(
      width: 145,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton(
          underline: Text(''),
          elevation: 0,
          isExpanded: true,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          value: controller.selectedItem,
          items: items.values
              .map((e) => DropdownMenuItem(
                    child: Text(e.name),
                    value: e,
                  ))
              .toList(),
          onChanged: (val) {
            if (val == null) {
              return;
            }
            controller.changeSize(val);
          }),
    ),
  );
}
