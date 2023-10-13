import 'package:eccomerce/view/screen/filters/filters.dart';
import 'package:eccomerce/view/screen/womens/choose_menue.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class SectionWomens extends StatelessWidget {
  const SectionWomens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 380,
      decoration: const BoxDecoration(color: Color(0xffF9F9F9)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: [
            IconButton(
              padding: const EdgeInsets.only(bottom: 20),
              icon: const Icon(Icons.filter_list_outlined),
              onPressed: () {
                Get.to(() => Filters());
              },
            ),
            const Text(
              'Filters',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              padding: const EdgeInsets.only(bottom: 20),
              icon: const Icon(Icons.swap_vert),
              onPressed: () {
                chooseMenue();
              },
            ),
            const Text(
              'Price: lowest to high',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 47,
            ),
            IconButton(
                padding: const EdgeInsets.only(bottom: 20),
                icon: const Icon(Icons.view_list),
                onPressed: () {
                  Get.offNamed(Routes.womens);
                }),
          ],
        ),
      ),
    );
  }
}
