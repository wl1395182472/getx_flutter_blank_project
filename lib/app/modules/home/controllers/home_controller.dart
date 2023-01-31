import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController? _homeController;
  static HomeController get to {
    _homeController ??= Get.find<HomeController>();
    return _homeController!;
  }

  final _counter = 0.obs;
  int get counter => this._counter.value;
  set counter(int value) => this._counter.value = value;

  void incrementCounter() {
    counter++;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
