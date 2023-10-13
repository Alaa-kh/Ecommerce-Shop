import 'package:eccomerce/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controller = Get.put(MainController());

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            height: 83,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffD3262640).withOpacity(0.2),
                  offset: const Offset(
                    0.0,
                    04.0,
                  ),
                  blurRadius: 8.0,
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              onTap: (index) {
                controller.currentIndex.value = index;
              },
              backgroundColor: Colors.white,
              currentIndex: controller.currentIndex.value,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              iconSize: 30,
              selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500, color: Color(0xffD3262640)),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.home,
                    ),
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    label: 'Shop'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                    ),
                    label: 'Bag'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_outline_outlined,
                    ),
                    label: 'Favorites'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_2_outlined,
                    ),
                    label: 'Profile'),
              ],
            ),
          ),
        ),
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: controller.tabs.value,
        ),
      ),
    );
  }
}
