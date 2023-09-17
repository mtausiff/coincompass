import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';
import 'package:tausifcoincompass/pages/splash/viewmodel/splash_viewmodel.dart';

final class Splash extends BaseStatelessWidget<SplashViewModel> {
  Splash({Key? key}) : super(key: key, viewModel: SplashViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return const Scaffold(
      body: Center(
        child: Text("Splash"),
      ),
    );
  }
}
