import 'package:etelligens/app/constants/app_colors.dart';
import 'package:etelligens/app/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/all_posts_controller.dart';

class AllPostsView extends GetView<AllPostsController> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Posts',
          style: Get.textTheme.headline5!.copyWith(
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return postCard(index);
            },
          ),
        ),
      ),
    );
  }

  Widget postCard(int currentIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8.0),
      child: InkWell(
        onTap: controller.goToPostDetails,
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.lightGreyPrimaryText.withOpacity(.5),
              width: 1.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: Get.width * .3,
                  height: Get.width * .2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      controller.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            AppStrings.headline,
                            style: Get.textTheme.headline6,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('July 29, 2021')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
