import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 104,
            width: 104,
            padding: const EdgeInsets.all(6),
            decoration:
            BoxDecoration(border: Border.all(color: ColorConstant.geryCE), borderRadius: BorderRadius.circular(4)),
            child: Image.asset(ImageConstant.img, fit: BoxFit.contain)),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'AMD 라이젠 5 5600X 버미어\n정품 멀티팩',
                style: GoogleFonts.notoSans(fontWeight: FontWeight.w700, fontSize: 14, color: ColorConstant.grey1D),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Row(
                    children: List.generate(
                      5,
                          (index) {
                        return SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              ImageConstant.star,
                              colorFilter: ColorFilter.mode(
                                  index == 4 ? ColorConstant.whiteF0 : ColorConstant.yellow33, BlendMode.srcIn),
                            ));
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '4.07',
                    style: GoogleFonts.notoSans(
                        fontSize: 18, color: ColorConstant.blackColor, fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
