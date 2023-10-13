import 'package:eccomerce/view/screen/womens/short_dress/short_dress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class InfoItemWomen extends StatelessWidget {
  const InfoItemWomen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => ShortDress());
                },
                child: Image.asset(
                  'assets/images/photoh.png',
                  width: 162,
                  height: 184,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: const Color(0xffDB3022)),
                  width: 40,
                  height: 24,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      '-20%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              RatingBarIndicator(
                unratedColor: Colors.grey,
                itemSize: 17,
                itemCount: 5,
                rating: 5,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                '(10)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Dorothy Perkins',
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Evening Dress',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Text(
                r'15$',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                r'12$',
                style: TextStyle(
                    color: Color(0xffDB3022),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
