import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/common_widgets/common_dropdown.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownRow extends StatelessWidget {
  const DropdownRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                '작성한 리뷰',
                style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, color: ColorConstant.blackColor, fontSize: 16),
              ),
              const SizedBox(width: 4),
              Text(
                '총 35개',
                style: GoogleFonts.notoSans(fontWeight: FontWeight.w400, color: ColorConstant.gery61, fontSize: 12),
              ),
              const Spacer(),
              CommonDropdown(
                  color: ColorConstant.grey86,
                  onChanged: (String? newValue) {
                    controller.dropDownDetailValue = newValue ?? "최신순";
                    controller.update();
                  },
                  dropDownValue: controller.dropDownDetailValue,
                  list: const ['최신순', '새로운'])
            ],
          ),
        );
      }
    );
  }
}
