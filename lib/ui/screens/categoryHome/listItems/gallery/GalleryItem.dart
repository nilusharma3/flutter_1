import 'package:flutter/material.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/gallery/GalleryItemState.dart';

class GalleryItem extends StatefulWidget {
  GalleryItem(int itemCount) {
    count = itemCount;
  }

  late int count;

  @override
  State<StatefulWidget> createState() {
    return GalleryItemState(count);
  }
}
