import 'package:eccomerce/controller/main_controller.dart';
import 'package:eccomerce/view/screen/profile/order/order_details/description_info.dart';
import 'package:eccomerce/view/screen/profile/order/order_details/item_order.dart';
import 'package:eccomerce/view/screen/profile/order/order_details/label_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int currentIndex = 0;

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}
final contro = Get.put(MainController());
class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 4,
            shadowColor: Colors.grey.shade100.withOpacity(.2),
            title: const Text(
              'Order Details',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ],
            leading: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
              child: SafeArea(
                  child: Container(
                      child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order №1947034',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '05-12-2019',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tracking number:',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'IW3475453455',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2AA952)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  '3 items',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(child: Container(child: ItemOrder())),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  'Order information',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LabelInfo(),
                    DescreiptionInfo(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: Colors.black)),
                      child: const Text(
                        'Reorder',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color(0xffDB3022),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Text(
                        'Leave feedback',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )))),
          bottomNavigationBar: Obx(() =>  Container(
              height: 83,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                  setState(() {
                    currentIndex = index;
                  });
                },
                backgroundColor: Colors.white,
                currentIndex: currentIndex,
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
        ),
        
        IndexedStack(children: [
        
            
        ],)
      ],
    );
  }
}
