import 'package:demotask/ui/mian_screen/main_controller.dart';
import 'package:get/get.dart';


class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}