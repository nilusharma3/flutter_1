import 'package:flutter/material.dart';
import 'package:practice_app/model/BannerItemData.dart';
import 'package:practice_app/model/HomeData.dart';
import 'package:practice_app/ui/screens/categoryHome/CategroyHomeScreen.dart';
import 'package:practice_app/ui/screens/categoryHome/bigAdd/BigAddItem.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/banner/BannerItem.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/gallery/GalleryItem.dart';
import 'package:practice_app/ui/screens/categoryHome/smallAdd/SmallAddItem.dart';





class CategoryHomeState extends State<CategoryHomeScreen> {
  late List<HomeData> data;

  @override
  void initState() {
    super.initState();
    getHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              child: getListItemUi(index),
            );
          }),
    ); //scaffold
  }

  Widget getListItemUi(int index) {
    switch (data.elementAt(index).itemType) {
      case 1: //big add
        return getBigAddItem(index);
      case 20: // banner
        return getBannerItem(index);
      case 3: // small add
        return getSmallAddItem(index);
      case 4: // gallery item
        return getGalleryItem(index);
      default: // text item
        return getDefaultItem(index);
    }
  }

  Widget getBannerItem(int index) {
    return new BannerItem(data.elementAt(index).bannerItem);
  }

  Widget getBigAddItem(int index) {
    return new BigAddItem(index);
  }

  Widget getGalleryItem(int index) {
    return new GalleryItem(index*2);
  }

  Widget getSmallAddItem(int index) {
    return new SmallAddItem(index);
  }

  Widget getDefaultItem(int index) {
    return new Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          "some title $index",
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 40),
        ),
      ),
    );
  }

  void getHomeData() {
    data = <HomeData>[
      HomeData(1, []),
      HomeData(2, getBannerList()),
      HomeData(3, []),
      HomeData(4, []),
      HomeData(5, []),
      HomeData(4, []),
      HomeData(5, []),
      HomeData(1, []),
      HomeData(2, getBannerList()),
      HomeData(4, []),
      HomeData(3, []),
      HomeData(4, []),
      HomeData(5, []),
    ];
  }

  List<BannerItemData> getBannerList() {
    return <BannerItemData>[
      BannerItemData("title 1", 1, ''),
      BannerItemData("title 2", 2, ''),
      BannerItemData("title 3", 3, ''),
      BannerItemData("title 4", 4, ''),
      BannerItemData("title 5", 5, ''),
      BannerItemData("title 6", 6, ''),
      BannerItemData("title 7", 7, ''),
      BannerItemData("title 8", 8, ''),
    ];
  }
}
