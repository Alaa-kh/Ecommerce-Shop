import 'package:get/get.dart';

class OrderController extends GetxController {
  int selectedItem = 0;
  List type = [
    'Delivered',
    'Processing',
    'Cancelled',
  ];
  onSelected(int index) {
    selectedItem = index;
    update();
  }
}
