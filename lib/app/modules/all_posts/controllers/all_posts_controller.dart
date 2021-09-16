import 'package:etelligens/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AllPostsController extends GetxController {
  final imageLink =
      'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80';
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

  void goToPostDetails() {
    Get.toNamed(Routes.POST_DETAILS);
  }
}
