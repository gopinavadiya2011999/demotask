import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController(initialPage:0);
  animateToPage(int page, {withAnimation = false}) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: withAnimation ? 250 : 1),
      curve: Curves.easeIn,
    );
  }


}
