


import 'dart:convert';

import 'package:corvitakhuwat/controller/controller.dart';
import 'package:corvitakhuwat/model/RegisterModel.dart';
import 'package:corvitakhuwat/model/productModel.dart';
import 'package:get/get.dart';

class ApiInterface extends GetConnect{


  final Controller c = Get.find();

  getAllProducts () async{
    var response  = await get('https://projects.asfandnaveed.com/corvit/api/getallproducts.php');
    print(response.body);
    if(response.statusCode == 200){
      c.allProductData.value = ProductsModel.fromJson(response.body as Map<String,dynamic>);
    }

  }

  registerUserData(String username,String email,String password ) async{

    var data = FormData({
      "username":username,
      "email": email,
      "password":password,
    });

    var response  = await post('https://projects.asfandnaveed.com/corvit/api/register.php',data);
    print(response.body);

    if(response.statusCode ==200){

      c.registerUser.value = RegisterModel.fromJson(response.body as Map<String,dynamic>);

    }


  }



}