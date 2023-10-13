import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fashion',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48),
          ),
          const Text(
            'sale',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
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
            ),
            width: 160,
            height: 36,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffDB3022)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                onPressed: () {},
                child: const Text('Check')),
          ),
        ],
      ),
    );
  }
}
