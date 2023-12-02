import 'package:corvitakhuwat/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Products extends StatelessWidget {
   Products({super.key});

  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                    ),
                ),
              ],
            ),
            Text(
              '${c.count}',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
