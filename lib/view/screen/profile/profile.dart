// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eccomerce/view/screen/address/add_shopping.dart';
import 'package:eccomerce/view/screen/profile/settings/listtile_build.dart';
import 'package:eccomerce/view/screen/profile/order/order.dart';
import 'package:eccomerce/view/screen/profile/payment/payment.dart';
import 'package:eccomerce/view/screen/profile/rating/rating.dart';
import 'package:eccomerce/view/screen/profile/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  child: Column(children: [
        Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My profile',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/image 8.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Matilda Brown',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'matildabrown@mail.com',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ListTileBuild(
                          text: 'My orders',
                          subtitle: 'Already have 12 orders',
                          onTap: () => Get.to(() =>  Order())),
                      ListTileBuild(
                          text: 'Shipping addresses',
                          subtitle: '3 ddresses',
                          onTap: () => Get.to(() => const AddShopping())),
                      ListTileBuild(
                          text: 'Payment methods',
                          subtitle: 'Visa  **34',
                          onTap: () => Get.to(() => const PayMent())),
                      ListTileBuild(
                          text: 'Promocodes',
                          subtitle: 'You have special promocodes',
                          onTap: () => Get.to(() =>  Order())),
                      ListTileBuild(
                          text: 'My reviews',
                          subtitle: 'Reviews for 4 items',
                          onTap: () => Get.to(() => Rating())),
                      ListTileBuild(
                          text: 'Settings',
                          subtitle: 'Notifications, password',
                          onTap: () => Get.to(() => Settings())),
                    ])))
      ])))),
    );
  }
}
