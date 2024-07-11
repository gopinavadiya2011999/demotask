import 'package:demotask/infrastructure/routes/app_routes.dart';
import 'package:demotask/ui/home/home_binding.dart';
import 'package:demotask/ui/home/home_screen.dart';
import 'package:demotask/ui/home/subfiles/user_detail.dart';
import 'package:demotask/ui/mian_screen/main_binding.dart';
import 'package:demotask/ui/mian_screen/main_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(name: RouteConstant.homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
    GetPage(name: RouteConstant.mainScreen, page: () => const MainScreen(), binding: MainBinding()),
    GetPage(name: RouteConstant.userDetailScreen, page: () => const UserDetailView(), binding: MainBinding()),
  ];
}
