import 'package:demotask/infrastructure/constant/app_constant.dart';
import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/home/widgets/electric_item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';
import 'widgets/info_view.dart';
import 'widgets/logo_with_textfield.dart';
import 'widgets/slider_widget.dart';
import 'widgets/top_user_list.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteEe,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LogoWithTextField(),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SliderWidget(),
                      Container(width: double.infinity, color: Colors.white, height: 8),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      AppConstants.titleText.tr,
                                      style: GoogleFonts.notoSans(fontSize: 12, fontWeight: FontWeight.w400, color: ColorConstant.gery61),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      AppConstants.desc.tr,
                                      style: GoogleFonts.notoSans(fontSize: 18, fontWeight: FontWeight.w500, color: ColorConstant.blackColor),
                                    )
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                            const SizedBox(height: 14),
                            const ElectricItemList()
                          ],
                        ),
                      ),
                      const TopUserList(),
                      const InfoView()
                    ],
                  ),
                )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ],
            ),
          ),
        );
      },
    );
  }
}
