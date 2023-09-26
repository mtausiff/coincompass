import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

import '../../../../../../core/base/viewmodel/base_viewmodel.dart';

final class StaticImageSliderViewModel extends BaseViewModel {
  static StaticImageSliderViewModel get to => Get.find();

  CarouselController buttonCarouselController = CarouselController();

  List<String> imagesList = [
    'assets/images/image-1.jpg',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-4.jpg',
    'assets/images/image-5.jpg',
    'assets/images/image-6.jpg',
    'assets/images/image-7.jpg',
    'assets/images/image-8.jpg',
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
