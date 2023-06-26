import 'package:get/get.dart';

import 'package:movie_app/pages/movie_detail/movie_detail_binding.dart';
import 'package:movie_app/pages/movie_detail/movie_detail_screen.dart';
import 'package:movie_app/pages/upcoming_movie/upcoming_movie_binding.dart';
import 'package:movie_app/pages/upcoming_movie/upcoming_movie_screen.dart';
import 'package:movie_app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.upcomingMovie,
      page: () => UpcomingMoviePage(),
      binding: UpcomingMovieBinding(),
    ),
    GetPage(
      name: AppRoutes.movieDetails,
      page: () => MovieDetailsPage(),
      binding: MovieDetailsBinding(),
    ),
  ];
}
