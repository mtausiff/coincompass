import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

import '../../../../../../core/base/viewmodel/base_viewmodel.dart';

final class ContentSliderViewModel extends BaseViewModel {
  static ContentSliderViewModel get to => Get.find();

  CarouselController buttonCarouselController = CarouselController();

  List<String> contentList = [
    'Content 1',
    'Content 2',
    'Content 3',
    'Content 4',
    'Content 5',
    'Content 6',
    'Content 7'
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
