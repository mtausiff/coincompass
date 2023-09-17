import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/base/viewmodel/base_viewmodel.dart';

final class ImageSliderViewModel extends BaseViewModel {
  static ImageSliderViewModel get to => Get.find();

CarouselController buttonCarouselController = CarouselController();
  int _currentPage = 0;

  List<String> imagesList = [
    'https://images.pexels.com/photos/6889088/pexels-photo-6889088.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://cdn.pixabay.com/photo/2015/03/25/23/46/cube-689619__340.jpg',
    'https://images.pexels.com/photos/10643964/pexels-photo-10643964.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/7780128/pexels-photo-7780128.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__340.jpg',
    'https://images.pexels.com/photos/7573942/pexels-photo-7573942.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/3390587/pexels-photo-3390587.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqqqTEDG47DmRff3nNLGXTq5CpMgiPWaVfw56m-Ulnb86AT005TvuIaQB58jJURMKlHk&usqp=CAU',
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < imagesList.length; i++) {
      indicators.add(
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
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
