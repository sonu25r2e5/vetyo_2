import 'package:flutter/material.dart';
import 'package:svg_image_provider/svg_image_provider.dart';
import 'package:vetyo_2/constant/app_images.dart';

class Homescreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image(image: SvgImageProvider(AppImages.logoImage))],
            ),
            // SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

            SizedBox(height: 50),
            Text(
              'Login into your account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 45),
            // Spacer(),
            Text('EMAIL'),
            TextField(decoration: InputDecoration(label: Text('Enter Email'))),
          ],
        ),
      ),
    );
  }
}
