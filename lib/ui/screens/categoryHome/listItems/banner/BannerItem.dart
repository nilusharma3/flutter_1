import 'package:flutter/material.dart';
import 'package:practice_app/model/BannerItemData.dart';

import 'BannerItemState.dart';

class BannerItem extends StatefulWidget {
  BannerItem(List<BannerItemData> data) {
    bannerData = data;
  }

  late List<BannerItemData> bannerData;

  @override
  State<StatefulWidget> createState() {
    return BannerItemState(bannerData);
  }
}
