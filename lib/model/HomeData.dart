import 'package:practice_app/model/BannerItemData.dart';

class HomeData{

  HomeData(int itemType,List<BannerItemData> bannerItem){
    this.itemType = itemType;
    this.bannerItem = bannerItem;
  }

  List<BannerItemData> bannerItem= [];
  int itemType = 0;
}