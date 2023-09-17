import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';

import '../viewmodel/home_viewmodel.dart';
import '../widgets/image_slider/view/image_slider.dart';
import '../widgets/video_slider/view/video_slider.dart';

final class Home extends BaseStatelessWidget<HomeViewModel> {
  Home({Key? key}) : super(key: key, viewModel: HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: const Icon(Icons.logo_dev_sharp), //TODO:Application-logo
        actions: [
          InkWell(
              onTap: () => viewModel.navigateToRegister(),
              child: const Icon(Icons.notifications)),
          InkWell(
              onTap: () => viewModel.navigateToLogin(),
              child: const Icon(Icons.login)),
        ],
      ),
      body: _body(context),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageSlider(),
          VideoSlider(),
          ImageSlider(),
        ],
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.orangeAccent,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Coins',
          icon: Icon(Icons.currency_rupee),
        ),
        BottomNavigationBarItem(
          label: 'Stats',
          icon: Icon(Icons.query_stats),
        ),
      ],
    );
  }
}
