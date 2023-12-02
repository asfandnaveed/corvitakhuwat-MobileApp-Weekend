


import 'package:corvitakhuwat/controller/controller.dart';
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



}