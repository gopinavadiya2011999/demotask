import 'package:demotask/infrastructure/constant/app_constant.dart';
import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:demotask/infrastructure/routes/app_routes.dart';
import 'package:demotask/ui/common_widgets/common_inkwell.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/constant/color_constant.dart';
import '../../../infrastructure/models/user_model.dart';

class TopUserList extends StatelessWidget {
  const TopUserList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstants.horizontalTitle.tr,
              style: GoogleFonts.lato(color: ColorConstant.gery61, fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 3),
            Text(
              AppConstants.horizontalDesc.tr,
              style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, fontSize: 18, color: ColorConstant.blackColor),
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: controller.userDataList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  UserModel userItem = controller.userDataList[index];

                  return CommonInkwell(
                    onTap: () {
                      for (var element in controller.userDataList) {
                          if (element.selected) {
                            element.selected = false;
                          }
                        }
                      userItem.selected = !userItem.selected;
                      controller.selectedUser=userItem;
                      controller.update();
                      Get.toNamed(RouteConstant.userDetailScreen);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 74.5,
                            child: Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                if (userItem.selected)
                                  Positioned(top: 0, left: 0, child: SvgPicture.asset(ImageConstant.yellowPremium)),
                                Container(
                                  width: 68,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                    Border.all(color: userItem.selected ? ColorConstant.yellow33 : Colors.transparent, width: 4),
                                  ),
                                  child: Image.asset(userItem.image),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            userItem.name,
                            style: GoogleFonts.notoSans(fontWeight: FontWeight.w400, fontSize: 14, color: ColorConstant.gery61),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    },);
  }
}
