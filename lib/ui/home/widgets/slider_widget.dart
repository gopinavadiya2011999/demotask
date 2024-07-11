import 'package:demotask/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                  padEnds: false,
                  controller: controller.pageController,
                  itemCount: controller.pages.length,
                  onPageChanged: (value) {
                    controller.selectedPage = value;
                    controller.update();
                  },
                  itemBuilder: (_, index) {
                    return Image.asset(
                      controller.pages[index],
                      fit: BoxFit.fill,
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.pages.length,
                        (index) {
                      return controller.selectedPage == index
                          ? Container(
                        height: 5,
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 15,
                      )
                          : Container(
                        height: 8,
                        margin: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        width: 8,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
