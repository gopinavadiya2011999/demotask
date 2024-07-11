import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveButtonRow extends StatelessWidget {
  const SaveButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 34, height: 34, child: Image.asset(controller.selectedUser.image)),
            SizedBox(width: 7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.selectedUser.name,
                  style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, color: ColorConstant.blackColor, fontSize: 14),
                ),
                Row(
                  children: [
                    Row(
                      children: List.generate(
                        5,
                            (index) {
                          return Container(
                              height: 11,
                              width: 11,
                              child: SvgPicture.asset(
                                ImageConstant.star,
                                colorFilter: ColorFilter.mode(
                                    index == 4 ? ColorConstant.whiteF0 : ColorConstant.yellow33, BlendMode.srcIn),
                              ));
                        },
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '2022.12.09',
                      style: GoogleFonts.notoSans(fontSize: 10, color: ColorConstant.grey86, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(ImageConstant.save)
          ],
        );
      }
    );
  }
}
