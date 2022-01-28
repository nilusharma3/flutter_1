import 'package:flutter/material.dart';

import '../screens/sampleA.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createHeader(),
          createDrawerItem(
            onTap: () => navItemClicked(context, 4),
            icon: Icons.contacts,
            text: 'Contacts',
          ),
          createDrawerItem(
            onTap: () => navItemClicked(context, 4),
            icon: Icons.event,
            text: 'Events',
          ),
          createDrawerItem(
            onTap: () => navItemClicked(context, 4),
            icon: Icons.note,
            text: 'Notes',
          ),
          Divider(),
          createDrawerItem(
              onTap: () => navItemClicked(context, 4),
              icon: Icons.collections_bookmark,
              text: 'Steps'),
          createDrawerItem(
              onTap: () => navItemClicked(context, 4),
              icon: Icons.face,
              text: 'Authors'),
          createDrawerItem(
              onTap: () => navItemClicked(context, 4),
              icon: Icons.account_box,
              text: 'Flutter Documentation'),
          createDrawerItem(
              onTap: () => navItemClicked(context, 4),
              icon: Icons.stars,
              text: 'Useful Links'),
          Divider(),
          createDrawerItem(
              onTap: () => navItemClicked(context, 4),
              icon: Icons.bug_report,
              text: 'Report an issue'),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  void navItemClicked(BuildContext context, int numb) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SampleA()));
  }

  Widget createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/ff.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Anil",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
