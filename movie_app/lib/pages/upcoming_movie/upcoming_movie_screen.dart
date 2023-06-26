import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/pages/upcoming_movie/upcoming_movie_controller.dart';
import 'package:movie_app/routes/app_routes.dart';
import 'package:movie_app/theme/app_text_theme.dart';
import 'package:movie_app/theme/color_theme.dart';
import 'package:movie_app/utils/constant.dart';

class UpcomingMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpcomingMovieController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: ThemeColor.primaryBlack,
          title: const Text('Watch',
              style: TextStyle(color: ThemeColor.white, fontFamily: 'Poppins')),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: ThemeColor.white))
          ],
        ),
        body: controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(AppTheme.medium,
                    AppTheme.authTitle, AppTheme.medium, AppTheme.verySmall),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.92))
                  ]),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: controller.upcomingMovies.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.movieDetails,
                              arguments: [controller.upcomingMovies[index].id]);
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(AppTheme.small)),
                              child: CachedNetworkImage(
                                imageUrl:
                                    '$imageBaseUrl${controller.upcomingMovies[index].backdropPath}',
                                fit: BoxFit.cover,
                                height: Get.height * 0.30,
                                width: Get.width,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: AppTheme.sixx,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft:
                                            Radius.circular(AppTheme.small),
                                        bottomRight:
                                            Radius.circular(AppTheme.small)),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent
                                        ])),
                              ),
                            ),
                            Positioned(
                                bottom: AppTheme.small,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: AppTheme.small),
                                  child: Text(
                                    controller
                                        .upcomingMovies[index].originalTitle,
                                    style: poppinsRegular(
                                        fontSize: AppTheme.twenty,
                                        color: ThemeColor.white,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: AppTheme.twenty);
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
