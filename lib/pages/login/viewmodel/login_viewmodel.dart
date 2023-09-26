import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/product/enum/page_state.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../product/constants/navigation_constants.dart';
import '../../../../utils/api_endpoints.dart';
import '../../home/view/home_view.dart';

final class LoginViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<LoginViewModel>();
  static LoginViewModel? get to => isRegistered ? Get.find() : null;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void onInit() {
//perform any initialize operation here
    setPageState(PageState.loading);
    super.onInit();
  }

  @override
  void onReady() async {
//perform any operation here
    setPageState(PageState.success);
    super.onReady();
  }

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.loginEmail);
      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        print('login successful for user: ${body.length}');

        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);

          emailController.clear();
          passwordController.clear();
          Get.off(Home());
        } else if (json['code'] == 1) {
          throw jsonDecode(response.body)['message'];
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
      }
    } catch (error) {
      print('OOPS login failed ...');

      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(error.toString())],
            );
          });
    }
  }

  Future<void> navigateToRegister() async {
    await 1.seconds.delay(
      () async {
        await offNamed(NavigationConstants.register);
      },
    );
  }

  Future<void> loginWithGoogle() async {
    await 1.seconds.delay(
      () async {
        await offNamed(NavigationConstants.login);
      },
    );
  }

  Future<void> navigateToHome() async {
    await 1.seconds.delay(
      () async {
        await offNamed(NavigationConstants.home);
      },
    );
  }
}
