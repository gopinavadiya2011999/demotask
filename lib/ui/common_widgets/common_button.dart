import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/common_widgets/common_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.text,this.fillButton=false, required this.onTap});
  final String text;
  final bool fillButton ;
  final GestureTapCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return CommonInkwell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          // color: fillButton?ColorConstant.primaryOrange:Colors.transparent,
           //border: Border.all(color: fillButton?Colors.transparent:ColorConstant.primaryOrange),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color:ColorConstant.blackColor
          ),
        ),
      ),
    );
  }
}
