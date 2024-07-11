import 'dart:async';

import 'package:demotask/infrastructure/constant/image_constant.dart';
import 'package:demotask/infrastructure/models/electronic_model.dart';
import 'package:demotask/infrastructure/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final pageController = PageController();
  List<ElectronicModel> electronicDataList = electronicModel;
  List<String> textList = ['“가격 저렴해요”', '“CPU온도 고온”', '“서멀작업 가능해요”', '“게임 잘 돌아가요”'];
  List<UserModel> userDataList = userModel;
  UserModel selectedUser = UserModel(name: '', image: '');
  String dropDownValue = "KOR";
  String dropDownDetailValue = "최신순";
  List pages = [
    ImageConstant.img1,
    ImageConstant.img2,
    ImageConstant.img3,
    ImageConstant.img4,
  ]; List imageList = [
    ImageConstant.img_1,
    ImageConstant.img_2,
    ImageConstant.img_3,



  ];

  List<String> infoList = ["회사 소개", "인재 채용", "기술 블로그", "리뷰 저작권"];
  int selectedPage = 0;
  Timer? timer;
  TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    _startAutoSlide();

    super.onInit();
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

  void _startAutoSlide() {
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (selectedPage < pages.length - 1) {
        selectedPage++;
      } else {
        selectedPage = 0;
      }
      pageController.animateToPage(
        selectedPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      update();
    });
  }
}
