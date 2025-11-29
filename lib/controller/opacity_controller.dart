import 'package:get/get.dart';

class OpacityController extends GetxController{
  RxDouble opacity=0.0.obs;
  changeOpacity(double val) {
    opacity.value = val;
  }
}