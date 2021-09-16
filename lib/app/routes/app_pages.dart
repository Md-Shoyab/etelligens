import 'package:get/get.dart';
import 'package:etelligens/app/modules/all_posts/bindings/all_posts_binding.dart';
import 'package:etelligens/app/modules/all_posts/views/all_posts_view.dart';
import 'package:etelligens/app/modules/post_details/bindings/post_details_binding.dart';
import 'package:etelligens/app/modules/post_details/views/post_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ALL_POSTS;

  static final routes = [
    GetPage(
      name: _Paths.POST_DETAILS,
      page: () => PostDetailsView(),
      binding: PostDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ALL_POSTS,
      page: () => AllPostsView(),
      binding: AllPostsBinding(),
    ),
  ];
}
