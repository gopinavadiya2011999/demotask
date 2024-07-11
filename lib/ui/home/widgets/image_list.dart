import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          height: 70,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: controller.imageList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 73,
                child: ClipRRect(borderRadius: BorderRadius.circular(2), child: Image.asset(controller.imageList[index])),
              );
            },
          ),
        );
      }
    );
  }
}
