import 'package:eccomerce/controller/address_controller.dart';
import 'package:eccomerce/routes/routes.dart';
import 'package:eccomerce/view/screen/address/shipping_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final addressController = Get.put(AddressController());

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Shipping Addresses',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        elevation: 4,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Obx(
          () => Column(
            children: [
              addressInfo(
                '3 Newbridge Court',
                Checkbox(
                  activeColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  value: addressController.selected1.value,
                  onChanged: (value) =>
                      addressController.onChange(addressController.selected1),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              addressInfo(
                '3 Newbridge Court',
                Checkbox(
                  activeColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  value: addressController.selected2.value,
                  onChanged: (value) =>
                      addressController.onChange(addressController.selected2),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              addressInfo(
                '51 Riverside',
                Checkbox(
                  activeColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  value: addressController.selected3.value,
                  onChanged: (value) =>
                      addressController.onChange(addressController.selected3),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffD3262640).withOpacity(0.2),
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
                          Get.offNamed(Routes.shippingAddress);
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ))),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
