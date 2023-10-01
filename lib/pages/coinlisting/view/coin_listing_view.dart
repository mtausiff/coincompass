import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';

import '../viewmodel/coin_listing_viewmodel.dart';

final class CoinListing extends BaseStatelessWidget<CoinListingViewModel> {
  CoinListing({Key? key}) : super(key: key, viewModel: CoinListingViewModel());

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
        child: Text('Coin Listing Body'),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "Coin Listing App Bar",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      backgroundColor: Colors.orangeAccent,
      leading: InkWell(
          onTap: () => viewModel.navigateToHome(),
          child: const Icon(Icons.home)),
    );
  }
}
