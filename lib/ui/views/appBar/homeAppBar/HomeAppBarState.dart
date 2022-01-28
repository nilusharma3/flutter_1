import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'HomeAppBar.dart';

class HomeAppBarSate extends State<HomeAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     child: Column(
    //       mainAxisSize: MainAxisSize.max,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[getAppBar()],
    //     )
    // );
    return getAppBar(context);
  }

  Widget getAppBar(BuildContext context) {
    return AppBar(
        leading: GestureDetector(
          onTap: () {
            print("click nav home app bar");
            Scaffold.of(context).openDrawer();
          },
          child: SvgPicture.asset('images/nav_menu_home.svg'),
        ),
        title: Text("hot star"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search)), // search action
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)) //edit action
        ]);
  }
}
