import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';
import 'package:tausifcoincompass/pages/home/widgets/content_slider/view/content_slider.dart';

import '../../../widgets/app_logo_widget.dart';
import '../../../widgets/component_title_widget.dart';
import '../viewmodel/home_viewmodel.dart';
import '../widgets/image_slider/view/image_slider.dart';
import '../widgets/static_image_slider/view/static_image_slider.dart';
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
        leading: appLogoWidget('assets/logo/app-logo.png'),
        actions: [

          InkWell(
              onTap: () => viewModel.navigateToVideoPage(),
              child: const Icon(Icons.video_camera_back)),
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
          StaticImageSlider(),
          componentTitleWidget('Famous Brands...'),
          //VideoSlider(),
          ContentSlider(),
          componentTitleWidget('Today Events...'),
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
