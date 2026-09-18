import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:svg_image_provider/svg_image_provider.dart';
import 'package:vetyo_2/constant/app_images.dart';
import 'package:vetyo_2/screens/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  // init state screen
  @override
  void initState() {
    super.initState();

    // it takes memory so we need to dispose it
    _timer = Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => Homescreen()),
      );
    });
    //
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {});

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(
                // color: AppColor.blackColor,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: SvgImageProvider(AppImages.logoImage),
                ),
                // borderRadius: BorderRadius.circular(12),
              ),
              child: Lottie.asset(AppImages.lottie),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Vet',
                    style: TextStyle(color: Colors.green),
                  ),
                  TextSpan(
                    text: 'yo',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),

            // Text(
          ],
        ),
      ),
    );
  }
}
