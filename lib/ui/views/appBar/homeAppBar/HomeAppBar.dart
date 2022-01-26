import 'package:flutter/material.dart';
import 'package:practice_app/res/dimens.dart';
import 'package:practice_app/ui/views/appBar/homeAppBar/HomeAppBarState.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget{

  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeAppBarSate();
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);

}