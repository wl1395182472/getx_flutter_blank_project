import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashView'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: Future.delayed(
          Duration(milliseconds: 3000),
          () {
            controller.appNameAnimationFinish.value = true;
          },
        ),
        builder: (context, snapshot) => Center(
          child: Text(
            '${controller.appNameAnimationFinish.value}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
