import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:demotask/ui/home/widgets/first_white_view.dart';
import 'package:demotask/ui/home/widgets/second_white_view.dart';
import 'package:demotask/ui/home/widgets/user_detail_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return const Scaffold(
          backgroundColor: ColorConstant.whiteEe,
          body: SafeArea(
            child: Column(
              children: [
                UserDetailAppbar(),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FirstWhiteView(),
                      SizedBox(height: 14),
                      SecondWhiteView()
                    ],
                  ),
                )),
                SizedBox(height: 14),
              ],
            ),
          ),
        );
      },
    );
  }
}
