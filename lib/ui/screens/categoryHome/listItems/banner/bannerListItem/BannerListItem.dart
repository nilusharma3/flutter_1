import 'package:flutter/material.dart';
import 'package:practice_app/model/BannerItemData.dart';
import 'BannerListItemState.dart';

class BannerListItem extends StatefulWidget {
  BannerListItem(BannerItemData data) {
    bannerData = data;
  }

  late BannerItemData bannerData;

  @override
  State<StatefulWidget> createState() {
    return BannerListItemState(bannerData);
  }
}
