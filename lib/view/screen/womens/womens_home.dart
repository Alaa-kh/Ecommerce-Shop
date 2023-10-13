import 'package:eccomerce/view/screen/womens/add_favorite.dart';
import 'package:eccomerce/view/screen/womens/info_item.dart';
import 'package:eccomerce/view/screen/womens/section_womens.dart';
import 'package:eccomerce/view/widget/sections.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WomensHome extends StatelessWidget {
  const WomensHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xffD3262640).withOpacity(0.2),
                blurRadius: 25.0,
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Women’s tops',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Sections(),
                SizedBox(
                  height: 23,
                ),
                SectionWomens()
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 18.0,
            left: 18,
          ),
          child: Container(
            margin: const EdgeInsets.only(
              left: 13,
            ),
            width: double.infinity,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: .6,
                  mainAxisSpacing: .4,
                  crossAxisSpacing: 6),
              itemCount: 8,
              itemBuilder: (context, index) => const Stack(children: [
                InfoItemWomen(),
                AddFavorite(
                  top: 160,
                  right: 22,
                ),
              ]),
            ),
          ),
        )
      ]))),
    );
  }
}
