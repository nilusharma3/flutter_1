import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/ui/drawer/NavDrawer.dart';
import 'package:practice_app/ui/screens/categoryHome/CategroyHomeScreen.dart';
import 'package:practice_app/ui/screens/home/HomeScreen.dart';
import '../../../stringlocalization.dart';
import '../../views/appBar/homeAppBar/HomeAppBar.dart';

class HomeScreenState extends State<HomePage> {
  final localizationController = Get.find<LocalizationController>();
  final List<Widget> homeSubScreens = <Widget>[
    CategoryHomeScreen(),
    Text("Search"),
    Text("Account")
  ];

  int selectedBottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
        appBar: HomeAppBar(),
        body: getBody(), //body
        bottomNavigationBar: getBottomNavBar() //bottom navigation bar
        ); //scaffold
  }

  Widget? getBody() {
    return Center(
      child: homeSubScreens.elementAt(selectedBottomNavIndex),
    );
  }

  BottomNavigationBar getBottomNavBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts), label: "Account"),
      ], //menu items
      currentIndex: selectedBottomNavIndex,
      selectedItemColor: Colors.red,
      onTap: onBottomNavItemTap,
    );
  } //getBottomNavBar

  void onBottomNavItemTap(int itemIndex) {
    setState(() {
      selectedBottomNavIndex = itemIndex;
    });
  } //onBottomNavItemTap

// Widget? getBody() {
//   return Padding(
//     padding: const EdgeInsets.all(24.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           TKeys.hello.translate(context),
//           style: const TextStyle(fontSize: 42),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Text(
//           TKeys.info.translate(context),
//           style: const TextStyle(fontSize: 30),
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         ElevatedButton(
//             onPressed: () {
//               localizationController.toggleLanguage();
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(TKeys.changeLanguage.translate(context),
//                   style: const TextStyle(fontSize: 18)),
//             ))
//       ], //children
//     ), //column
//   ); //padding
// }
//

} //class
