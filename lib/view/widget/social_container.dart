import 'package:flutter/material.dart';

class SocialContainer extends StatelessWidget {
  const SocialContainer({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 64,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              shadowColor: MaterialStateProperty.all(Colors.grey),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.0),
              ))),
          onPressed: () {},
          child: Image.asset(
            image,
            width: 23,
            height: 24,
          )),
    );
  }
}
