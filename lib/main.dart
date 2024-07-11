import 'package:demotask/infrastructure/language/translation_service.dart';
import 'package:demotask/infrastructure/routes/app_pages.dart';
import 'package:demotask/ui/mian_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Demo Task',
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}

