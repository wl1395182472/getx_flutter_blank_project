import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config.dart';
import '../../../../util/index.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('${controller.counter}'),
            ),
            ElevatedButton(
              onPressed: () {
                BrowserUtil.openAppBrowser(
                  context: context,
                  url: 'https://www.baidu.com/',
                );
              },
              child: const Text('打开百度'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await DioUtil.post(Config.ipApiUrl);
                sLog.e('result:$result');
              },
              child: const Text('请求url'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
