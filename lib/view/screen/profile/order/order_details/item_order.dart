import 'package:flutter/material.dart';

List titles = [
  'Pullover',
  'Pullover',
];

class ItemOrder extends StatelessWidget {
  const ItemOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
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
              height: 120,
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
                              'assets/images/imagew.png',
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
                        Text(
                          titles[index],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          'Mango',
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Color:',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                            Text(
                              ' Gray',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              'Size:',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                            Text(
                              ' L',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Units:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                ),
                                Text(
                                  ' 1',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                r'32$',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: titles.length);
  }
}
