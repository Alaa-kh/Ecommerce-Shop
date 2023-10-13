import 'package:eccomerce/controller/order_controller.dart';
import 'package:eccomerce/view/screen/profile/order/address_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Order extends StatelessWidget {
   Order({super.key});

  final orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            child: Column(children: [
          Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 18, bottom: 18, right: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'My Orders',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GetBuilder<OrderController>(
                          builder: (controller) => SizedBox(
                            height: 30,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.type.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () => controller.onSelected(index),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: controller.selectedItem == index
                                          ? Colors.black
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(29)),
                                  height: 30,
                                  width: 100,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      controller.type[index],
                                      style: TextStyle(
                                          color:
                                              controller.selectedItem == index
                                                  ? Colors.white
                                                  : Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 35,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ListView.separated(
                          itemBuilder: (context, index) => addressInfo(),
                          shrinkWrap: true,
                          itemCount: 3,
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 26,
                          ),
                        )
                      ])))
        ])),
      )),
    );
  }
}
