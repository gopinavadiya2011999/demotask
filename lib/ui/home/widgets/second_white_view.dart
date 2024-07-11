import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:demotask/ui/home/widgets/comon_row_list.dart';
import 'package:demotask/ui/home/widgets/dropdown_row.dart';
import 'package:demotask/ui/home/widgets/image_list.dart';
import 'package:demotask/ui/home/widgets/rating_row.dart';
import 'package:demotask/ui/home/widgets/row_text_list.dart';
import 'package:demotask/ui/home/widgets/save_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondWhiteView extends StatelessWidget {
  const SecondWhiteView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 13),
          width: double.infinity,
          color: ColorConstant.whiteColor,
          child: Column(
            children: [
              const DropdownRow(),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                color: ColorConstant.greyD7,
                height: 1,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  children: [
                    const RatingRow(),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: double.infinity,
                      color: ColorConstant.greyD7,
                      height: 1,
                    ),
                    const SizedBox(height: 14),
                    const SaveButtonRow(),
                    const SizedBox(height: 26),
                    const RowTextList(),
                    const SizedBox(height: 18),
                    const CommonRowList(color: ColorConstant.blueC5, text: '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.'),
                    const SizedBox(height: 18),
                    const CommonRowList(color: ColorConstant.greyD7, text: '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.'),
                    const SizedBox(height: 18),
                    const ImageList(),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: double.infinity,
                      color: ColorConstant.greyD7,
                      height: 1,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset(ImageConstant.message),
                        const SizedBox(width: 2),
                        Text("댓글 달기..",
                            style: GoogleFonts.notoSans(fontWeight: FontWeight.w400, fontSize: 10, color: ColorConstant.gery61))
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        );
      }
    );
  }
}
