import 'package:get/get.dart';
import 'package:movie_app/pages/movie_detail/movie_detail_controller.dart';

class MovieDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailsController());
  }
}
