import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BigAddItem extends StatelessWidget {
  BigAddItem(int index) {
    itemIndex = index;
  }

  late final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        padding: EdgeInsets.all(10.0),
        color: Colors.orange,
        child: getBigAddUi(),
    );
  }

  Widget getBigAddUi() {
    return Card(
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Lottie.asset('lottie/b.json',fit: BoxFit.fill),
      ),
    );
  }
}
