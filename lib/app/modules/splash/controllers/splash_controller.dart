import 'package:get/get.dart';
import 'package:getx_flutter_blank_project/app/routes/app_pages.dart';
import 'package:getx_flutter_blank_project/util/index.dart';

class SplashController extends GetxController {
  static SplashController? _splashController;
  static SplashController get to {
    _splashController ??= Get.find<SplashController>();
    return _splashController!;
  }

  Worker? worker;

  //所有同步操作的service都初始化完成
  Rx<bool> allServicesReady = Rx<bool>(false);
  //开屏appName的动画是否完成
  Rx<bool> appNameAnimationFinish = Rx<bool>(false);

  @override
  void onInit() {
    worker = everAll(
      [
        appNameAnimationFinish,
        allServicesReady,
      ],
      (value) {
        if (appNameAnimationFinish.value && allServicesReady.value) {
          toHome();
        }
      },
    );
    super.onInit();
    sLog.w('Splash');
  }

  @override
  void onClose() {
    worker?.dispose();
    _splashController = null;
    super.onClose();
  }

  void toHome() {
    Get.toNamed(Routes.HOME);
  }
}
