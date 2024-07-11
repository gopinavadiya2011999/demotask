
import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:demotask/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_controller.dart';
import 'widgets/bottom_nav_widget.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteColor,
          body: SafeArea(
            child: Stack(
              children: [
                PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    controller.currentPage.value = value;
                    controller.update();
                  },
                  controller: controller.pageController,
                  children: const [
                    HomeWrapper(),
                    CategoryWrapper(),
                    CommunityWrapper(),
                    ProfileWrapper(),
                  ],
                ),
                BottomNavigationBarWidget(
                  active: controller.currentPage.value,
                  homeTap: () {
                    controller.animateToPage(0);
                    FocusManager.instance.primaryFocus?.unfocus();
                    controller.update();
                  },
                  categoryTap: () {
                    controller.animateToPage(1);

                    FocusManager.instance.primaryFocus?.unfocus();
                    controller.update();
                  },
                  communityTap: () {
                    controller.animateToPage(2);
                    FocusManager.instance.primaryFocus?.unfocus();
                    controller.update();
                  },
                  profileTap: () {
                    controller.animateToPage(3);
                    FocusManager.instance.primaryFocus?.unfocus();
                    controller.update();
                  },

                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProfileWrapper extends StatefulWidget {
  const ProfileWrapper({
    super.key,
  });

  @override
  State<ProfileWrapper> createState() => _ProfileWrapperState();
}

class _ProfileWrapperState extends State<ProfileWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  Container();
  }
}

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({
    super.key,
  });

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  const HomeScreen();
  }
}

class CommunityWrapper extends StatefulWidget {
  const CommunityWrapper({
    super.key,
  });

  @override
  State<CommunityWrapper> createState() => _CommunityWrapperState();
}

class _CommunityWrapperState extends State<CommunityWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return  Container();
  }
}

class CategoryWrapper extends StatefulWidget {
  const CategoryWrapper({
    super.key,
  });

  @override
  State<CategoryWrapper> createState() => _CategoryWrapperState();
}

class _CategoryWrapperState extends State<CategoryWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  Container();
  }
}
