import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/ui/screens/home/HomeScreenState.dart';
import '../../../stringlocalization.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final localizationController = Get.find<LocalizationController>();

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}
