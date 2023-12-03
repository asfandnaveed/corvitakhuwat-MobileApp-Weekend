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
                itemCount: c.allProductData.value.products!.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  
                ),
                itemBuilder: (contect , index){
                  return Card(
                    child: Container(

                      width: 200,
                      height: 200,
                      child: Column(
                        children: [
                          Image.network(
                            'https://projects.asfandnaveed.com/corvit/${c.allProductData.value.products![index].pImage}',
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '${c.allProductData.value.products![index].pName}',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),

                          ),
                          Text(
                            '${c.allProductData.value.products![index].pPrice} Rs',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
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
