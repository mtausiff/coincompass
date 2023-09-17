import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/base/view/base_view.dart';
import '../../../../../../core/base/widget/base_stateless_widget.dart';
import '../viewmodel/oldhome_dialog_viewmodel.dart';

final class OldHomeDialog extends BaseStatelessWidget<OldHomeDialogViewModel> {
  OldHomeDialog({Key? key}) : super(key: key, viewModel: OldHomeDialogViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home Page Alert Dialog",
            style: context.textTheme.bodyLarge,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: viewModel.back,
          child: const Text("Ok"),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
