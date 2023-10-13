import 'package:eccomerce/view/screen/bag/bottomSheet/apply_code.dart';
import 'package:eccomerce/view/screen/bag/promo_code.dart';
import 'package:flutter/material.dart';

class CodeInfo extends StatelessWidget {
  const CodeInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.separated(
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
                  height: 85,
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
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/bg.png',
                                      fit: BoxFit.fill,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '10',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 34,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '%',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              'off',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ))),
                      ),
                      const SizedBox(width: 13),
                      Expanded(
                          flex: 1,
                          child: Row(children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titlesSheet[index],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                const Text(
                                  'mypromocode2020',
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                            const Column(
                              children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  '6 days remaining',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                ),
                                ApplyCode(),
                              ],
                            ),
                          ]))
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: titlesSheet.length));
  }
}
