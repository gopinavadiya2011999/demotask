import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ko.dart';

class TranslationService extends Translations {
  static Locale? get locale => const Locale('ko', 'KR');
  static const fallbackLocale = Locale('ko', 'KR');
  static final langs = [
    'ko',
  ];

  static final locales = [
    const Locale('ko', 'KR'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
    'ko': ko,
  };
  void changeLocale(String lang) {
    Get.updateLocale(Locale(lang));
  }

}