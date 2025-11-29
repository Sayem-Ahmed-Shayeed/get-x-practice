import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController{
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  login(){
    print(nameController.value.text);
    print(passwordController.value.text);
  }


}