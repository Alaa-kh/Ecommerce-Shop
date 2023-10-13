import 'package:flutter/material.dart';

class KidsTab extends StatelessWidget {
  const KidsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          width: 343,
          height: 100,
          decoration: BoxDecoration(
              color: Color(0xffDB3022), borderRadius: BorderRadius.circular(8)),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SUMMER SALES',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Up to 50% off',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 343,
          height: 100,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.2),
              blurRadius: 25.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'New',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Image.asset('assets/images/image 4.1.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 343,
          height: 100,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.2),
              blurRadius: 25.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Clothes',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Image.asset('assets/images/imagec.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 343,
          height: 100,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.2),
              blurRadius: 25.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Image.asset('assets/images/image2.png'),
              ],
            ),
          ),
        ),
        SizedBox(height: 12),
        Container(
          width: 343,
          height: 100,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.2),
              blurRadius: 25.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Accesories',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Image.asset('assets/images/image 3.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
