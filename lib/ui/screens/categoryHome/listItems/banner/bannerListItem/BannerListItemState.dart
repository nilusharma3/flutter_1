import 'package:flutter/material.dart';
import 'package:practice_app/model/BannerItemData.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/banner/bannerListItem/BannerListItem.dart';

class BannerListItemState extends State<BannerListItem> {
  BannerListItemState(BannerItemData data) {
    this.data = data;
  }

  late BannerItemData data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildUi();
  }

  Widget buildUi() {
    return Container(
      child: getBannerBody(),
    );
  }

  // Ui generation code below

  // main container
  Widget getBannerBody() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      child: getCardUi(),
    );
  }

  //card ui
  // child of main container
  // contain all ui elements
  Widget getCardUi() {
    return Card(
      elevation: 10,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
