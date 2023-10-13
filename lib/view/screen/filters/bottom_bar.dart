import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.4),
              offset: const Offset(
                0.0,
                04.0,
              ),
              blurRadius: 10.0,
            ),
          ],
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: Color(0xffD3262640)),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffD3262640).withOpacity(0.1),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      width: 160,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: () {},
                        child: const Text('Discard',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffD3262640).withOpacity(0.1),
                            blurRadius: 8.0,
                          ),
                        ],
                      ),
                      width: 160,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffDB3022),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: () {},
                        child: const Text('APPLY',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    )),
                label: ''),
          ],
        ),
      ),
    );
  }
}
