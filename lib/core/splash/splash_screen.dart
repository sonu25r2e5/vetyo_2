import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:svg_image_provider/svg_image_provider.dart';
import 'package:vetyo_2/constant/app_colors.dart';
import 'package:vetyo_2/constant/app_images.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // we do initialize here for moving out.

  // for routing to next page

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 20),
            Text(
              'Vetyo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
