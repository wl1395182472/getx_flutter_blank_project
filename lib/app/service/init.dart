//
// Copyright© 2021 Ti-Ding(上海醍顶信息科技有限公司). All Rights Reserved.
// file         init.dart
// date         2023-01-31
// author       wl1395182472(wl1395182472@gmail.com)
// version      0.1
// brief        all service init
//

import 'package:get/get.dart';

import '../modules/splash/controllers/splash_controller.dart';
import 'index.dart';

void initServices() async {
  await Get.putAsync(() => AppService().init());

  Get.lazyPut<SplashController>(() => SplashController());
  SplashController.to.allServicesReady.value = true;
}
