import 'package:eccomerce/view/screen/bag/bag_item.dart';
import 'package:eccomerce/view/screen/bag/promo_code.dart';
import 'package:eccomerce/view/screen/bag/under_container.dart';
import 'package:flutter/material.dart';

class Bag extends StatelessWidget {
  const Bag({super.key});

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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    top: 18,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Bag',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      BagItem(),
                    ],
                  ),
                ),
              ),
              const PromoCode(),
              const UnderContainer()
            ],
          ),
        )),
      ),
    );
  }
}
