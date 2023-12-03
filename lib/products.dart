import 'package:corvitakhuwat/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Products extends StatelessWidget {
   Products({super.key});

  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  'Back',
                  style: GoogleFonts.poppins(
                    fontSize: 20
                  ),
                ),
              ],
            ),
            Text(
              'All Products Data',
              style: GoogleFonts.poppins(
                fontSize: 30,
              ),
            ),


            GridView.builder(
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemBuilder: (contect , index){
                  return Card(
                    child: Container(
                      color: Colors.green,
                      width: 200,
                      height: 200,
                    ),
                  );
                }
            ),




          ],
        ),

      ),
    );
  }
}
