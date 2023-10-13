import 'package:eccomerce/view/screen/favorite/add_to_bag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List titles = [
  'Shirt',
  'Longsleeve Violeta',
  'T-Shirt',
  'Shirt',
  'Longsleeve Violeta',
  'Shirt',
];

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
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
                                    const Text(
                                      'LIME',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 11.0),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.grey.shade400,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  titles[index],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Color:',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    Text(
                                      ' Blue',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 30,
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      r'32$',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      width: 62,
                                    ),
                                    RatingBarIndicator(
                                      unratedColor: Colors.grey,
                                      itemSize: 17,
                                      itemCount: 5,
                                      rating: 5,
                                      itemBuilder: (context, index) =>
                                          const Icon(
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddToBag(),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: titles.length));
  }
}
