import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final nameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  login() async {
    final response = await post(
      Uri.parse('https://dummyjson.com/auth/login'),
      body: {'username': 'emilys', 'password': 'emilyspass'},
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data['email']);
      Get.snackbar('login successful', 'welcome');
    } else {
      Get.snackbar('login failed', response.body);
    }
  }
}
