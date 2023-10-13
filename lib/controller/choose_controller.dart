import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChooseMenueController extends GetxController {
  List sortList = [
    'Popular',
    'Newest',
    'Customer review',
    'Price: lowest to high',
  ];

  int selectedItem = 0;
  onSelected(int index){
    selectedItem = index;
    update();
  }
}
