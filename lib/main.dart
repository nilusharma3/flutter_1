import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/res/dimens.dart';
import 'package:practice_app/stringlocalization.dart';
import 'package:practice_app/ui/screens/home/HomeScreen.dart';
import 'package:practice_app/ui/screens/splash/Splash.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  SampleApp({Key? key}) : super(key: key);

  final localizationController = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        init: localizationController,
        builder: (LocalizationController controller){
          return MaterialApp(
            title: 'Hotstar Demo',
            theme: ThemeData(
              primarySwatch: Colors.orange,
            ),
            locale: controller.currentLanguage != ''
                ? Locale(controller.currentLanguage, '')
                : null,
            localeResolutionCallback: LocalizationService.localeResolutionCallBack,
            supportedLocales: LocalizationService.supportedLocales,
            localizationsDelegates: LocalizationService.localizationsDelegate,
            home: HomePage(),
          );
        }
    );
  }
}



