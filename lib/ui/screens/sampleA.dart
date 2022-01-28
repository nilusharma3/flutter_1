import 'package:flutter/material.dart';

class SampleA extends StatelessWidget{


  double _containerHeight = 120, _imageHeight = 80, _iconTop = 44, _iconLeft = 12, _marginLeft = 110;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Container(
            width: 300,
            height: 40,
            color: Colors.red,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'images/aa.jpeg',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),

          Container(
            width: 30,
            height: 40,
            color: Colors.black,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'images/aa.jpeg',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            height: _containerHeight,
            child: Container(color: Colors.blue),
          ),
          Positioned(
            left: _iconLeft,
            top: _iconTop,
            child: Icon(Icons.settings, color: Colors.white),
          ),
          Positioned(
            right: _iconLeft,
            top: _iconTop,
            child: Icon(Icons.bubble_chart, color: Colors.white),
          ),
          Positioned(
            left: _iconLeft,
            top: _containerHeight - _imageHeight / 2,
            child: ClipOval(child: Container(width:100,height:100,color: Colors.red,)),
          ),
          Positioned(
            left: _marginLeft,
            top: _containerHeight - (_imageHeight / 2.5),
            child: Text("Some text here", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18)),
          ),
          Positioned.fill(
            left: _marginLeft,
            top: _containerHeight + (_imageHeight / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("2", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Gold", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("22", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Silver", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("28", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Bronze", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }


}