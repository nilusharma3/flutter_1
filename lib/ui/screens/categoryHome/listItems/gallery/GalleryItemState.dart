import 'package:flutter/material.dart';
import 'package:practice_app/ui/screens/categoryHome/listItems/gallery/galleryItem/GalleryListItem.dart';

import 'GalleryItem.dart';

class GalleryItemState extends State<GalleryItem> {
  GalleryItemState(int itemCount) {
    count = itemCount;
  }

  late int count;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: 100,
      child: new ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: count,
          itemBuilder: (context, index) {
            return GalleryListItem(index);
          }),
    );
  }

}
