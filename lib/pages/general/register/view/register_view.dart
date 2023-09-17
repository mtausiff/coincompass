import 'package:flutter/material.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';
import 'package:get/get.dart';
import 'package:tausifcoincompass/pages/general/login/widgets/submit_button.dart';
import '../../login/widgets/input_fields.dart';
import '../viewmodel/register_viewmodel.dart';

final class Register extends BaseStatelessWidget<RegisterViewModel> {
  Register({Key? key}) : super(key: key, viewModel: RegisterViewModel());

  var isLogin = false.obs;

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
        leading: InkWell(
            onTap: () => viewModel.navigateToHome(),
            child: const Icon(Icons.home)),
      ),
      body: _body,
    );
  }

  Widget get _body {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(36),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Registration',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 50,
                ),
                InputTextFieldWidget(
                    viewModel.nameController, 'your name', 'text'),
                const SizedBox(
                  height: 20,
                ),
                InputTextFieldWidget(
                    viewModel.emailController, 'email address', 'email'),
                const SizedBox(
                  height: 20,
                ),
                InputTextFieldWidget(
                    viewModel.passwordController, 'password', 'number'),
                const SizedBox(
                  height: 20,
                ),
                SubmitButton(
                  onPressed: () => viewModel.registerWithEmail(),
                  title: 'Register',
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () => viewModel.navigateToLogin(),
                    child: const Text("Already have account! Login",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ))),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () => viewModel.loginWithGoogle(),
                    child: const Text("Login with Google Account!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ))),
              ]),
        ),
      ),
    );
  }
}
