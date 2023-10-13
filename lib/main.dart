import 'package:eccomerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: Routes.signupScreen,
        getPages: AppRoutes.routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'metropolis'));
  }
}
