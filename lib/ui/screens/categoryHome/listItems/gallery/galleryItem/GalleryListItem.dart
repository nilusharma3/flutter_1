import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_app/res/dimens.dart';

class GalleryListItem extends StatelessWidget {
  GalleryListItem(int index) {
    itemIndex = index;
  }

  final List<String> file = <String>[
    'lottie/puzzle.json',
    'lottie/camera.json'
  ];

  late final int itemIndex;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var cardSize = SizeConfig.screenWidth / 2;
    return Container(
      height: cardSize,
      width: cardSize,
      color: Colors.orange,
      child: getUi(),
    );
  }

  Widget getUi() {
    String url = "";
    if (itemIndex % 2 == 0) {
      url = file.elementAt(0);
    } else {
      url = file.elementAt(1);
    }
    return Card(
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Lottie.asset(url),
    );
  }
}
