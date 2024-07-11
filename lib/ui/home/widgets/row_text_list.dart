import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RowTextList extends StatelessWidget {
  const RowTextList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          controller.textList.length,
              (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                controller.textList[index],
                style: GoogleFonts.notoSans(fontWeight: FontWeight.w700, fontSize: 10, color: ColorConstant.greyA0),
              ),
            );
          },
        ),
      ),
    );},);
  }
}
