import 'package:demotask/infrastructure/constant/app_constant.dart';
import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/common_widgets/common_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailAppbar extends StatelessWidget {
  const UserDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.whiteColor,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 15, left: 16, right: 16),
            child: Row(
              children: [
                CommonInkwell(
                   onTap: () {
                     Get.back();
                   },
                    child: const Icon(Icons.arrow_back)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppConstants.detailTitle.tr,
                        style: GoogleFonts.notoSans(fontWeight: FontWeight.w400, fontSize: 10, color: ColorConstant.grey86),
                      ),
                      Text(
                        AppConstants.detailDesc.tr,
                        style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, fontSize: 16, color: ColorConstant.grey1D),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: ColorConstant.greyD7,
            height: 1,
          ),
        ],
      ),
    );
  }
}
