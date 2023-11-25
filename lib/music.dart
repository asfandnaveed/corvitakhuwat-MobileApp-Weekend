import 'package:corvitakhuwat/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 400,
                child: Lottie.asset(
                    'assets/animation/music.json'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: 500,
                child: Text(
                  'no ads while litening music',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color(0xff34367c),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: 500,
                child: Text(
                  'litening to music is very comfortable without any annoying ads ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xff84abde),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'skip',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: Color(0xff84abde),
                      ),
                    ),

                    SizedBox(
                      width: 110,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff34367c),
                          elevation: 8.0,
                          shadowColor: Color(0xff34367c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                          onPressed: (){
                            // Get.to(Products());
                            Get.snackbar('Hello Corvit', 'Akhuwat is great');
                            Get.changeTheme(ThemeData.dark());
                          },
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 40,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
