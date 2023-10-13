import 'package:eccomerce/view/screen/profile/order/order_details/order_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container addressInfo() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: const Color(0xffD3262640).withOpacity(0.1),
          offset: const Offset(
            0.0,
            02.0,
          ),
          blurRadius: 8.0,
        ),
      ],
    ),
    width: double.infinity,
    child: Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Order №1947034',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                '05-12-2019',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Tracking number:',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'IW3475453455',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text(
                      'Quantity:',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '3',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Total Amount:',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    r'112$',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 98,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.black)),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const OrderDetails());
                    },
                    child: const Text(
                      'Details',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const Text(
                  'Delivered',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2AA952)),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
