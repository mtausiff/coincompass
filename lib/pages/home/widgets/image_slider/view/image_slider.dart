import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/base/view/base_view.dart';
import '../../../../../../core/base/widget/base_stateless_widget.dart';
import '../viewmodel/image_slider_viewmodel.dart';

final class ImageSlider extends BaseStatelessWidget<ImageSliderViewModel> {
  ImageSlider({Key? key}) : super(key: key, viewModel: ImageSliderViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return SingleChildScrollView(
      child: Column(children: [
        CarouselSlider(
          carouselController: viewModel.buttonCarouselController,
          items: viewModel.imagesList.map<Widget>((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(i))));
              },
            );
          }).toList(),
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.7,
          ),
        ),
      ]),
    );
  }
}
