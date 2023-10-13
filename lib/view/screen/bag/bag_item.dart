import 'package:eccomerce/controller/bag_cpntroller.dart';
import 'package:eccomerce/view/screen/bag/add_container.dart';
import 'package:eccomerce/view/screen/bag/minus_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final bagController = Get.put(BagController());

String item1 = 'Add to favorites';
String item2 = 'Delete from the list';
List titles = [
  'Pullover',
  'T-Shirt',
  'Sport Dress',
];

class BagItem extends StatelessWidget {
  const BagItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffD3262640).withOpacity(0.1),
                            offset: const Offset(
                              0.0,
                              02.0,
                            ),
                            blurRadius: 8.0,
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 110,
                      child: Row(
                        children: [
                          SizedBox(
                            child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                clipBehavior: Clip.antiAlias,
                                child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.asset(
                                      'assets/images/imagem.png',
                                      fit: BoxFit.fill,
                                    ))),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      titles[index],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Color:',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    Text(
                                      ' Black',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Size:',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    Text(
                                      ' L',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(
                                      () => Row(
                                        children: [
                                          minusContainer(bagController.minus),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              '${bagController.startIndex.value}'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          addContainer(bagController.add),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 11.0),
                                      child: Text(
                                        r'32$',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox();
            },
            itemCount: titles.length));
  }
}
