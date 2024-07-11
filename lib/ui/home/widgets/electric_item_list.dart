import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:demotask/infrastructure/models/electronic_model.dart';
import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectricItemList extends StatelessWidget {
  const ElectricItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.electronicDataList.length,
          itemBuilder: (context, index) {
            ElectronicModel electronicItem = controller.electronicDataList[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 104,
                      width: 104,
                      padding: const EdgeInsets.all(6),
                      decoration:
                      BoxDecoration(border: Border.all(color: ColorConstant.geryCE), borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(electronicItem.premiumIcon),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.center, child: Image.asset(electronicItem.image, fit: BoxFit.contain))),
                        ],
                      )),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          electronicItem.title,
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.notoSans(fontWeight: FontWeight.w700, fontSize: 14, color: ColorConstant.grey1D),
                        ),
                        const SizedBox(height: 2),
                        Column(
                          children: List.generate(
                            electronicItem.points.length,
                                (index) {
                              return Row(
                                children: [
                                  Container(
                                    height: 6,
                                    width: 6,
                                    margin: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(shape: BoxShape.circle, color: ColorConstant.grey1D),
                                  ),
                                  Expanded(
                                      child: Text(
                                        electronicItem.points[index],
                                        maxLines: 1,
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.notoSans(
                                            fontWeight: FontWeight.w400, fontSize: 12, color: ColorConstant.grey1D),
                                      )),
                                ],
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.star),
                              const SizedBox(width: 2),
                              Text(
                                electronicItem.review,
                                style: GoogleFonts.notoSans(
                                    fontSize: 10, fontWeight: FontWeight.w700, color: ColorConstant.yellow33),
                              ),
                              const SizedBox(width: 2),
                              Text(
                                "(${electronicItem.total})",
                                style:
                                GoogleFonts.notoSans(color: ColorConstant.greyC4, fontSize: 10, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                            children: List.generate(
                              electronicItem.list.length,
                                  (index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 4),
                                  decoration: BoxDecoration(color: ColorConstant.whiteF0, borderRadius: BorderRadius.circular(6)),
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                                  child: Text(
                                    electronicItem.list[index],
                                    style:
                                    GoogleFonts.notoSans(fontWeight: FontWeight.w400, fontSize: 11, color: ColorConstant.grey86),
                                  ),
                                );
                              },
                            )),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );

    },);
  }
}
