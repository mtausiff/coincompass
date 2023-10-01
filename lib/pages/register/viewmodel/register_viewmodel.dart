import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/pages/home/view/home_view.dart';
import 'package:tausifcoincompass/core/enum/page_state.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constants/navigation_constants.dart';
import '../../../../utils/api_endpoints.dart';

final class RegisterViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<RegisterViewModel>();
  static RegisterViewModel? get to => isRegistered ? Get.find() : null;

  TextEditingController nameController = TextEditingController();
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

  Future<void> registerWithEmail() async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
      Map body = {
        'name': nameController.text,
        'email': emailController.text.trim(),
        'password': passwordController.text
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        print('register successful for user: ${body.length}');

        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;

          await prefs?.setString('token', token);
          nameController.clear();
          emailController.clear();
          passwordController.clear();
          Get.off(Home());
        } else {
          throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
      }
    } catch (e) {
      print('OOPS registration failed ...');

      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }

  Future<void> navigateToLogin() async {
    await offNamed(NavigationConstants.login);
  }

  Future<void> navigateToHome() async {
    await offNamed(NavigationConstants.home);
  }

  Future<void> loginWithGoogle() async {
    await offNamed(NavigationConstants.login);
  }
}
