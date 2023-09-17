import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';
import 'package:tausifcoincompass/pages/general/oldhome/viewmodel/oldhome_viewmodel.dart';


final class OldHome extends BaseStatelessWidget<OldHomeViewModel> {
  OldHome({Key? key}) : super(key: key, viewModel: OldHomeViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return Scaffold(
      appBar: _appBar,
      floatingActionButton: _floatingActionButton,
      bottomNavigationBar: _navigationBar,
      body: _body,
    );
  }

  AppBar get _appBar {
    return AppBar(
      centerTitle: false,
      title: const Text("Home"),
    );
  }

  Widget get _body {
    return Obx(() => [
          const Center(
            child: Text("Tab 1"),
          ),
          const Center(
            child: Text("Tab 2"),
          ),
          const Center(
            child: Text("Tab 3"),
          ),
        ][viewModel.navigationIndex.value]);
  }

  NavigationBar get _navigationBar {
    return NavigationBar(
      selectedIndex: viewModel.navigationIndex.value,
      onDestinationSelected: viewModel.onDestinationSelected,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.list_alt_outlined), label: "Tab 1"),
        NavigationDestination(icon: Icon(Icons.favorite_border_outlined), label: "Tab 2"),
        NavigationDestination(icon: Icon(Icons.person_outline), label: "Tab 3"),
      ],
    );
  }

  FloatingActionButton get _floatingActionButton {
    return FloatingActionButton.extended(
      onPressed: viewModel.onFloatingActionButtonPressed,
      label: const Text("Dialog"),
      icon: const Icon(Icons.question_answer_outlined),
    );
  }
}
