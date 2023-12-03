import 'package:corvitakhuwat/apiController/apiInterface.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'User Registeration',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),

              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  labelText: 'Username'
                ),
              ),

              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    labelText: 'Email'
                ),
              ),

              TextFormField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    labelText: 'Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye
                  ),
                ),
              ),

              Spacer(),

              ElevatedButton(
                  onPressed: (){

                    ApiInterface().registerUserData(username.text, email.text, password.text);

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(

                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
