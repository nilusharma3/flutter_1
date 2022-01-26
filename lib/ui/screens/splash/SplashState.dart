import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_app/ui/screens/splash/Splash.dart';
import 'package:practice_app/ui/screens/home/HomeScreen.dart';

import '../../../res/dimens.dart';

class SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return new Scaffold(
      body: Center(
        child: Lottie.asset('lottie/splash.json'),
      ), //center
    ); //scaffold
  }

  navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage() )
      );
    });
  }


}

