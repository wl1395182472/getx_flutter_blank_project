//
// Copyright© 2021 Ti-Ding(上海醍顶信息科技有限公司). All Rights Reserved.
// file         main.dart
// date         2023-01-31
// author       wl1395182472(wl1395182472@gmail.com)
// version      0.1
// brief        main启动
//

import 'package:flutter/material.dart';

import 'app.dart';
import 'app/service/init.dart';
import 'util/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppChannel.init();
  initServices();
  runApp(MyApp());
  AppChannel.dispose();
}
