import 'package:demotask/infrastructure/constant/app_constant.dart';
import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/common_widgets/common_text_field.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/constant/image_constant.dart';

class LogoWithTextField extends StatelessWidget {
  const LogoWithTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                child: Text(
                  "LOGO",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 24, color: ColorConstant.blueEf),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: ColorConstant.greyD7,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 24, bottom: 26, left: 16, right: 16),
                  child: CommonTextField(
                      hintText: AppConstants.searchHint.tr,
                      suffix: Container(margin: const EdgeInsets.only(right: 10, left: 10), child: SvgPicture.asset(ImageConstant.search)),
                      controller: controller.searchController)),
            ],
          ),
        );
      }
    );
  }
}
