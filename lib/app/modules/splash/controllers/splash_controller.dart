import 'package:etelligens/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
     Future.delayed(Duration(seconds: 2)).then(
      (_) {
        Get.offNamed(Routes.ALL_POSTS);
      },
    );
  }

  @override
  void onClose() {}
}
