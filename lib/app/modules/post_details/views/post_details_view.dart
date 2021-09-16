import 'package:etelligens/app/constants/app_colors.dart';
import 'package:etelligens/app/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_details_controller.dart';

class PostDetailsView extends GetView<PostDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  child: Text(
                    AppStrings.headline,
                    style: Get.textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Published On: 23 August, 2021',
                      style: Get.textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        color: AppColors.lightGreyPrimaryText,
                      ),
                    ),
                    Text(
                      'Comments: 24',
                      style: Get.textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        color: AppColors.lightGreyPrimaryText,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: Get.width,
                  height: Get.width * .6,
                  child: ClipRRect(
                    child: Image.network(
                      controller.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    AppStrings.postContent,
                    style: Get.textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
