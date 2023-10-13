import 'package:eccomerce/controller/payment_controller.dart';
import 'package:eccomerce/view/screen/profile/payment/add_new_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final paymentController = Get.put(PaymentController());
bool selectedSheet = false;

class PayMent extends StatelessWidget {
  const PayMent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Payment methods',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        elevation: 4,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
                top: 10,
              ),
              child: Obx(
                () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Your payment cards',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Image.asset(
                        'assets/images/Card.png',
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              value: paymentController.selected1.value,
                              onChanged: (value) => paymentController
                                  .onChange(paymentController.selected1)),
                          const Text(
                            'Use as default payment method',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/Card 2.png'),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              value: paymentController.selected2.value,
                              onChanged: (value) => paymentController
                                  .onChange(paymentController.selected2)),
                          const Text(
                            'Use as default payment method',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xffD3262640)
                                      .withOpacity(0.2),
                                  offset: const Offset(
                                    0.0,
                                    04.0,
                                  ),
                                  blurRadius: 8.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(29),
                              color: Colors.black),
                          width: 36,
                          height: 36,
                          child: IconButton(
                              onPressed: () {
                                addNewCard();
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                      ),
                    ]),
              ))),
    );
  }
}
