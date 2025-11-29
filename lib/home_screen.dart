import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/controller/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController counterController=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() {
            print("obx");
            return Text(counterController.counter.value.toString());
          }),
          SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            counterController.increment();
          }, child: Text("Incre"))
        ],
      ),
    );
  }
}
