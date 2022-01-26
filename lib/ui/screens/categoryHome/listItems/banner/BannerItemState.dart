import 'package:flutter/material.dart';
import 'package:practice_app/model/BannerItemData.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/banner/bannerListItem/BannerListItem.dart';

import '../../../../../res/dimens.dart';
import 'BannerItem.dart';

class BannerItemState extends State<BannerItem> {
  BannerItemState(List<BannerItemData> data) {
    this.data = data;
  }

  late List<BannerItemData> data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildUi();
  }

  Widget buildUi() {
    return getBannerBody();
  }

  // Ui generation code below

  // main container
  Widget getBannerBody() {
    return SizedBox(
      height: 250,
      child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return BannerListItem(data.elementAt(index),data.length);
          }),
    ); //scaffold
  }
}
