import 'package:get/get.dart';

class BagController extends GetxController {
  RxInt startIndex = 0.obs;

  add() {
    startIndex++;
  }

  minus() {
    if (startIndex > 0) startIndex--;
  }
}
