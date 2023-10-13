import 'package:eccomerce/controller/payment_controller.dart';
import 'package:eccomerce/view/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final paymentController = Get.put(PaymentController());

Future<dynamic> addNewCard() {
  return Get.bottomSheet(
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffD3262640).withOpacity(0.1),
                  offset: const Offset(
                    0.0,
                    04.0,
                  ),
                  blurRadius: 8.0,
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(34), topRight: Radius.circular(34))),
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Add new card',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextfiledContainer(
                  hintText: 'Name on card',
                  suffix: Text(''),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextfiledContainer(
                  hintText: 'Card number',
                  suffix: Image.asset('assets/images/mastercard.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextfiledContainer(
                  hintText: 'Expire Date',
                  suffix: Text(''),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextfiledContainer(
                  hintText: 'CVV',
                  suffix: Image.asset('assets/images/help_outline.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          value: paymentController.selected3.value,
                          onChanged: (value) => paymentController
                              .onChange(paymentController.selected3)),
                      const Text(
                        'Set as default payment method',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(
                      0xffDB3022,
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ADD CARD',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ));
}
