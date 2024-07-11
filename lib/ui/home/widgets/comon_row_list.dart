import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/constant/color_constant.dart';
import '../../../infrastructure/constant/image_constant.dart';

class CommonRowList extends StatelessWidget {
  const CommonRowList({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: [
        SvgPicture.asset(ImageConstant.energy,colorFilter: ColorFilter.mode(color, BlendMode.srcIn),),const SizedBox(width: 10),
        Flexible(
          child: Text(text,
              style: GoogleFonts.notoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color:ColorConstant.gery61
              )),
        )
      ],),
    );
  }
}
