import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/base/viewmodel/base_viewmodel.dart';

final class ImageSliderViewModel extends BaseViewModel {
  static ImageSliderViewModel get to => Get.find();

  CarouselController buttonCarouselController = CarouselController();
  int _currentPage = 0;

  List<String> imagesList = [
    'https://fastly.picsum.photos/id/1040/200/300.jpg?hmac=Q4ntfv8HG_O9dfwjINSmS4oQUot0YUwT_6bezgKA3Jw',
    'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
    'https://fastly.picsum.photos/id/650/200/300.jpg?grayscale&hmac=myLQomtZX7RDIbHaQAbVzQ4LDqaUnQ1-s7_apqgQ-BI',
    'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
    'https://fastly.picsum.photos/id/1040/200/300.jpg?hmac=Q4ntfv8HG_O9dfwjINSmS4oQUot0YUwT_6bezgKA3Jw',
    'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
    'https://fastly.picsum.photos/id/650/200/300.jpg?grayscale&hmac=myLQomtZX7RDIbHaQAbVzQ4LDqaUnQ1-s7_apqgQ-BI',
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < imagesList.length; i++) {
      indicators.add(
        Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
