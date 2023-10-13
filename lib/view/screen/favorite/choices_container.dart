import 'package:flutter/material.dart';

class ChoicesContainer extends StatelessWidget {
  const ChoicesContainer({
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
            const Icon(Icons.filter_list_outlined),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Filters',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              padding: const EdgeInsets.only(bottom: 20),
              icon: const Icon(Icons.filter_list_outlined),
              onPressed: () {},
            ),
            const Text(
              'Price: lowest to high',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 55,
            ),
            const Icon(Icons.filter_list_outlined),
          ],
        ),
      ),
    );
  }
}
