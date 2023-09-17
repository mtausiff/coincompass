import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';

import '../viewmodel/home_viewmodel.dart';

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
        actions: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.notifications),
              Icon(Icons.person), //TODO: User or login icon
            ],
          )
        ],
      ),
      body: _body(context),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orangeAccent,
        items: const [
          BottomNavigationBarItem(
            label: 'Stats',
            icon: Icon(Icons.query_stats),
          ),
          BottomNavigationBarItem(
            label: 'Coins',
            icon: Icon(Icons.currency_rupee),
          )
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => viewModel.navigateToLogin(),
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Navigate to Login Page'),
          ),
          ElevatedButton(
            onPressed: () => viewModel.navigateToRegister(),
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Navigate to Register Page'),
          )
        ],
      ),
    );
  }
}
