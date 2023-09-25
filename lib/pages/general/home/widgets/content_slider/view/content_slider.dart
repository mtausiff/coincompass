import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/base/view/base_view.dart';
import '../../../../../../core/base/widget/base_stateless_widget.dart';
import '../viewmodel/content_slider_viewmodel.dart';

final class ContentSlider extends BaseStatelessWidget<ContentSliderViewModel> {
  ContentSlider({Key? key})
      : super(key: key, viewModel: ContentSliderViewModel());

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
          items: viewModel.contentList.map<Widget>((index) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.greenAccent,
                  child: Center(child: Text(index)),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.7,
          ),
        ),
      ]),
    );
  }
}
