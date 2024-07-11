import 'package:demotask/infrastructure/constant/app_constant.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/constant/color_constant.dart';
import '../../../infrastructure/constant/image_constant.dart';

class FirstWhiteView extends StatelessWidget {
  const FirstWhiteView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 24, bottom: 28),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Image.asset(controller.selectedUser.image),
              ),
              const SizedBox(height: 12),
              Text(
                controller.selectedUser.name,
                style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, color: ColorConstant.blackColor, fontSize: 20),
              ),
              const SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageConstant.yellowPremium),
                  const SizedBox(width: 2.5),
                  Text(
                    AppConstants.yellowText.tr,
                    style: GoogleFonts.notoSans(color: ColorConstant.yellow33, fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(color: ColorConstant.whiteF0, borderRadius: BorderRadius.circular(6)),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  AppConstants.greyDesc.tr,
                  style: GoogleFonts.notoSans(fontSize: 14, color: ColorConstant.grey86, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
