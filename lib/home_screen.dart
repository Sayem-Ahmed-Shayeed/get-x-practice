import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/controller/counter_controller.dart';
import 'package:get_x_practice/controller/opacity_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController counterController=Get.put(CounterController());
  OpacityController opacityController =Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              print("obx");
              return Text(counterController.counter.value.toString());
            }),
            SizedBox(height: 20,),
            OutlinedButton(onPressed: (){
              counterController.increment();
            }, child: Text("Incre")),
            Divider(),
            SizedBox(height: 20,),
            Obx((){
              return Opacity(
                opacity: opacityController.opacity.value,
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: Get.height*0.2,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              );
            }),
            Obx(() {
              return Slider(value: opacityController.opacity.value, onChanged: (value) => opacityController.changeOpacity(value),);
            },)
          ],
        ),
      ),
    );
  }
}
