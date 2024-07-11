import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/common_widgets/common_dropdown.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/constant/image_constant.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LOGO Inc.",
                  style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, fontSize: 14, color: ColorConstant.grey88),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12, bottom: 18),
                  child: Row(
                    children: List.generate(
                      controller.infoList.length,
                      (index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              controller.infoList[index],
                              style: GoogleFonts.notoSans(fontSize: 13, fontWeight: FontWeight.w400, color: ColorConstant.grey88),
                            ),
                            if (index != controller.infoList.length - 1)
                              IntrinsicHeight(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 9),
                                  width: 2,
                                  height: 13,
                                  color: ColorConstant.grey88,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(ImageConstant.send),
                    const SizedBox(width: 3),
                    Text(
                      'review@logo.com',
                      style: GoogleFonts.notoSans(color: ColorConstant.grey86, fontWeight: FontWeight.w400, fontSize: 13),
                    ),
                    const Spacer(),
                    CommonDropdown(
                        onChanged: (String? newValue) {
                          controller.dropDownValue = newValue ?? "KOR";
                          controller.update();
                        },
                        dropDownValue: controller.dropDownValue,
                        list: const ['KOR', 'ENG', 'JPN', 'CHN'])
                  ],
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 14),
                  color: ColorConstant.greyC8,
                ),
                Text("@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구",
                    style: GoogleFonts.notoSans(fontWeight: FontWeight.w400, fontSize: 10, color: ColorConstant.grey86)),
                const SizedBox(height: 10),
              ],
            ),
          );
        });
  }
}
