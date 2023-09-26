import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';
import 'package:tausifcoincompass/pages/contactus/viewmodel/contactus_viewmodel.dart';

final class ContactUs extends BaseStatelessWidget<ContactUsViewModel> {
  ContactUs({Key? key}) : super(key: key, viewModel: ContactUsViewModel());

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
        child: Text('CoinHome Body'),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "Coin Home App Bar",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    backgroundColor: const Color(0x9fc0f457),

    );
  }
}
