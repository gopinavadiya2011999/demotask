import 'package:demotask/infrastructure/constant/app_constant.dart';
import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:demotask/ui/common_widgets/common_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

GlobalKey connect = GlobalKey();

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.active,
    this.homeTap,
    this.profileTap,
    this.communityTap,
    this.notification = false,
    this.categoryTap,
  });

  final GestureTapCallback? homeTap;
  final GestureTapCallback? categoryTap;
  final GestureTapCallback? profileTap;
  final GestureTapCallback? communityTap;
  final int active;
  final bool notification;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width,
        height: height * .102,
        decoration: BoxDecoration(
            border: const Border.fromBorderSide(BorderSide(color: ColorConstant.greyD7)),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10, spreadRadius: 1, offset: const Offset(0, 3))]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            commonIconTextView(text: AppConstants.home.tr, icon: ImageConstant.home, width: width, tap: homeTap,current:0),
            commonIconTextView(text: AppConstants.category.tr, icon: ImageConstant.category, width: width, tap: categoryTap,current:1),
            commonIconTextView(text: AppConstants.community.tr, icon: ImageConstant.community, width: width, tap: communityTap,current:2),
            commonIconTextView(text: AppConstants.profile.tr, icon: ImageConstant.profile, width: width, tap: profileTap,current:3),



          ],
        ),
      ),
    );
  }

  commonIconTextView({GestureTapCallback? tap, required double width, required String text, required String icon, required int current}) {
    return CommonInkwell(
      onTap: tap ?? () {},
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: width / 5,
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 24.0,
              height: 24.0,
            ),
            Text(
              text,
              style: GoogleFonts.notoSansAnatolianHieroglyphs(fontSize: 10, fontWeight: FontWeight.w400, color:current==active? ColorConstant.grey1D:ColorConstant.greyD9),
            )
          ],
        ),
      ),
    );
  }
}
