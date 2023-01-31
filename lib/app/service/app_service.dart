//
// Copyright© 2021 Ti-Ding(上海醍顶信息科技有限公司). All Rights Reserved.
// file         app_service.dart
// date         2023-01-31
// author       wl1395182472(wl1395182472@gmail.com)
// version      0.1
// brief        app启动服务
//

import 'package:get/get.dart';

import '../../util/index.dart';

class AppService extends GetxService {
  static AppService? _appService;
  static AppService get to {
    _appService ??= Get.find<AppService>();
    return _appService!;
  }

  @override
  void onInit() {
    super.onInit();
    sLog.w('AppService onInit');
  }

  @override
  void onClose() {
    _appService = null;
    super.onClose();
  }

  Future<AppService> init() async {
    return this;
  }
}
