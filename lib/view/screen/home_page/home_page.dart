import 'package:eccomerce/view/screen/home_page/new_container.dart';
import 'package:eccomerce/view/screen/home_page/main_container.dart';
import 'package:eccomerce/view/screen/home_page/sale_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  'assets/images/mainImage.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                MainContainer()
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            NewContainer(),
            SaleContainer(),
          ],
        ),
      ),
    );
  }
}
