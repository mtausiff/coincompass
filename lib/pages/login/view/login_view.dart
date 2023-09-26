import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/view/base_view.dart';
import 'package:tausifcoincompass/core/base/widget/base_stateless_widget.dart';
import '../viewmodel/login_viewmodel.dart';
import '../widgets/input_fields.dart';
import '../widgets/submit_button.dart';

final class Login extends BaseStatelessWidget<LoginViewModel> {
  Login({Key? key}) : super(key: key, viewModel: LoginViewModel());

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
      body: SingleChildScrollView(
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
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 50,
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
                    onPressed: () => viewModel.loginWithEmail(),
                    title: 'Login',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () => viewModel.navigateToRegister(),
                      child: const Text("Don't have account? Register",
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
      ),
    );
  }
}
