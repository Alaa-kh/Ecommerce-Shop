import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List images = [
  'assets/images/Photo8.png',
  'assets/images/image 7.png',
  'assets/images/Photo8.png',
  'assets/images/image 7.png',
];

class ReviewBuild extends StatelessWidget {
  const ReviewBuild({
    Key? key,
    required this.text,
    required this.imageAvatar,
  }) : super(key: key);
  final String text;
  final String imageAvatar;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: 331,
            height: 380,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffD3262640).withOpacity(0.1),
                  offset: const Offset(
                    02.0,
                    04.0,
                  ),
                  blurRadius: 8.0,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 18, top: 18, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Helene Moore',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RatingBarIndicator(
                    unratedColor: Colors.grey,
                    itemSize: 17,
                    itemCount: 5,
                    rating: 4,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 14, height: 1.3),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 104,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (_, index) => Container(
                                margin: EdgeInsets.only(
                                  right: 15,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.fill,
                                  width: 104,
                                  height: 104,
                                ),
                              ))),
                  SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Helpful',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.thumb_up_rounded,
                          color: Colors.grey,
                          size: 13,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 9,
          child: CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage(imageAvatar),
          ),
        )
      ],
    );
  }
}
