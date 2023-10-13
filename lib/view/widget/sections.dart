import 'package:eccomerce/view/widget/type_container.dart';
import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  const Sections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TypeContainer(),
          SizedBox(
            width: 8,
          ),
          TypeContainer(),
          SizedBox(
            width: 8,
          ),
          TypeContainer(),
          SizedBox(
            width: 8,
          ),
          TypeContainer(),
          SizedBox(
            width: 8,
          ),
          TypeContainer(),
          SizedBox(
            width: 8,
          ),
          TypeContainer(),
          SizedBox(
            width: 8,
          ),
          TypeContainer(),
        ],
      ),
    );
  }
}
