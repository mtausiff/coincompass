import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';

import '../viewmodel/coin_details_viewmodel.dart';

final class CoinDetails extends BaseStatelessWidget<CoinDetailsViewModel> {
  CoinDetails({Key? key}) : super(key: key, viewModel: CoinDetailsViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return Scaffold(
      appBar: _appBar(),
      body: _body,
    );
  }

  Widget get _body {
    return Center(
      child: Container(
        child: Text('Coin Details Body'),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "Coin Details App Bar",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      backgroundColor: Colors.orangeAccent,
      leading: InkWell(
          onTap: () => viewModel.navigateToHome(),
          child: const Icon(Icons.home)),
    );
  }
}
