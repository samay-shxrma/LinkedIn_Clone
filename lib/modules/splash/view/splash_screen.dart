import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/assets/assets.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/modules/home/view/home_screen.dart';
import 'package:myapp/modules/home/view/main-page-view.screen.dart';
//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => MainPageViewScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(0, -250),
            child: Transform.scale(
              scale: 3,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(child: Image.asset(AppAssets.logo)),
        ],
      ),
    );
  }
}
