import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_example/controllers/tap_controller.dart';
import 'package:flutter_getx_example/first_page.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.put(TapController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX Example"),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController){
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent
                ),
                child: Center(child: Text(tapController.x.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),)),
              );
            },),
            GestureDetector(
              onTap: (){
                tapController.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent
                ),
                child: Center(child: Text("Tap",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>FirstPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent
                ),
                child: Center(child: Text("Go to First Page",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),)),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent
                ),
                child: Center(child: Text("Tap",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),)),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
