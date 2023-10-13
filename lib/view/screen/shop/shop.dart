import 'package:eccomerce/view/screen/shop/kids_tab.dart';
import 'package:eccomerce/view/screen/shop/men_tab.dart';
import 'package:eccomerce/view/screen/shop/women_tab.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
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
          elevation: 4,
          shadowColor: Colors.grey.shade100.withOpacity(.2),
          backgroundColor: Colors.white,
          title: const Text(
            'Categories',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: const SafeArea(
            child: Column(
          children: [
            TabBar(
                indicatorColor: Color(0xffDB3022),
                indicatorWeight: 2.5,
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                dividerColor: Colors.red,
                tabs: [
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                WomenTab(),
                MenTab(),
                KidsTab(),
              ]),
            )
          ],
        )),
      ),
    );
  }
}
