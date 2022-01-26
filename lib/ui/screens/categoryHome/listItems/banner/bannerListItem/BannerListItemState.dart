import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/model/BannerItemData.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/banner/bannerListItem/BannerListItem.dart';

import '../../../../../../res/dimens.dart';

class BannerListItemState extends State<BannerListItem> {
  BannerListItemState(BannerItemData data, int count) {
    this.data = data;
    this.count = count;
  }

  var list = <String>[
    'images/aa.jpeg',
    'images/cc.jpeg',
    'images/dd.jpeg',
    'images/ff.jpeg',
  ];

  int count = 0;
  late BannerItemData data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var cardSize = SizeConfig.screenWidth - 30;
    return SizedBox(
      width: cardSize,
      child: Material(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          child: cardComponent(),
        ),
      ),
    );
  }

  Widget cardComponent() {
    return new Card(
        margin: EdgeInsets.all(10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        semanticContainer: true,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              list.elementAt(data.index % 4),
              fit: BoxFit.fill,
            ),
            Positioned(
                child: Text(
                  '${data.index}/$count',
                  style: TextStyle(
                      color: Colors.red[800],
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 15),
                ),
                top: 30,
                right: 30),
            Positioned(
              child: Text(
                data.title,
                style: TextStyle(
                    color: Colors.red[800],
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 15),
              ),
              bottom: 30,
              left: 30,
            )
          ],
        ));
  }
}
