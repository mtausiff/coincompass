import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/core/constants/app_constants.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tausifcoincompass/core/model/local_storage_models.dart';
import 'package:tausifcoincompass/core/service/app_services.dart';
import 'package:tausifcoincompass/models/user_auth_model.dart';

import '../../../../core/constants/navigation_constants.dart';

final class LoginViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<LoginViewModel>();

  static LoginViewModel? get to => isRegistered ? Get.find() : null;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final _authService = AppServices.userAuthService;

  Future<void> loginWithEmail() async {
    final loginResponse = await _authService.login(
        authModel: UserAuthModel(
            email: emailController.text, password: passwordController.text));
    final token = loginResponse.data?.token;
    if (token != null) {
      localStorage.putEntity(entity: AppUser(token: token));
    }
  }

  Future<void> navigateToRegister() async {
    final appUser = localStorage.getAppUser(
        entityId: AppConstants.appUserEntityId.appUserEntityId);

    if (appUser?.token == null) {
      await offNamed(NavigationConstants.register);
    }
    else {
      await offNamed(NavigationConstants.home);
    }
  }

  Future<void> loginWithGoogle() async {
    await offNamed(NavigationConstants.login);
  }

  Future<void> navigateToHome() async {
    await offNamed(NavigationConstants.home);
  }
}
