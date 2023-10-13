import 'package:get/get.dart';

class SettingsController extends GetxController {

  List<MoviesCheck> checkList = [
    MoviesCheck("Sales", false),
    MoviesCheck("New arrivals", false),
    MoviesCheck("Delivery status changes", false),
  ];

  onChange(index) {
    checkList[index].value = !checkList[index].value;
    update();
  }


}

class MoviesCheck {
  String name;
  bool value;
  MoviesCheck(
    this.name,
    this.value,
  );
}
