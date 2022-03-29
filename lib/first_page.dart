import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // TabController tabController  = Get.find();
    TapController tapController = Get.put(TapController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        leading: IconButton(
          onPressed: (){
              Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black,),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
