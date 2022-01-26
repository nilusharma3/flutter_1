import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SmallAddItem extends StatelessWidget {
  SmallAddItem(int index) {
    itemIndex = index;
  }

  late final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.orange,
      child: getSmallAddUi(),
    );
  }

  Widget getSmallAddUi() {
    return Card(
      color: Colors.transparent,
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Lottie.asset('lottie/a.json', fit: BoxFit.fill),
      ),
    );
  }
}
