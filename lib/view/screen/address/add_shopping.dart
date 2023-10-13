import 'package:eccomerce/routes/routes.dart';
import 'package:eccomerce/view/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddShopping extends StatelessWidget {
  const AddShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
     leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
          title: const Text(
            'Adding Shipping Address',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          elevation: 4,
          shadowColor: Colors.grey.shade100.withOpacity(.2),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const TextfiledContainer(
                            hintText: 'Full name',
                            suffix: Text(''),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextfiledContainer(
                            hintText: 'Address',
                            suffix: Text(''),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextfiledContainer(
                            hintText: 'City',
                            suffix: Text(''),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextfiledContainer(
                            hintText: 'State/Province/Region',
                            suffix: Text(''),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextfiledContainer(
                            hintText: 'Zip Code (Postal Code)',
                            suffix: Text(''),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextfiledContainer(
                            hintText: 'Zip Code (Postal Code)',
                            suffix: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.offAllNamed(Routes.whiteSuccess);
                            },
                            child: Container(
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
                                  'SAVE ADDRESS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ])
                  ]))),
        ));
  }
}
