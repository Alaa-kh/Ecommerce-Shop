import 'package:eccomerce/controller/main_controller.dart';
import 'package:eccomerce/view/screen/womens/womens_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controller = Get.put(MainController());

class ChooseCollection extends StatelessWidget {
  const ChooseCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(children: [
        Stack(alignment: Alignment.bottomLeft, children: [
          GestureDetector(
            onTap: () {
              Get.to(() => WomensHome());
            },
            child: Image.asset(
              'assets/images/image 4.png',
              width: double.infinity,
              fit: BoxFit.fill,
              height: 415,
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'New collection',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
              ))
        ]),
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: 220,
                  height: 160,
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Summer',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'sale',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(alignment: Alignment.bottomLeft, children: [
                  Image.asset(
                    'assets/images/image 2.png',
                    fit: BoxFit.fill,
                    width: 219,
                  ),
                  const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Black',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 34),
                        ),
                      ))
                ]),
              ],
            ),
            Stack(alignment: Alignment.center, children: [
              Image.asset(
                'assets/images/imagemen.png',
                fit: BoxFit.fill,
                height: 380,
              ),
              const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Men’s',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                      Text(
                        'hoodies',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                    ],
                  ))
            ]),
          ],
        ),
      ])),
    );
  }
}
