


import 'package:get/get.dart';

class ApiInterface extends GetConnect{

  getAllProducts () async{

    var response  = await get('https://projects.asfandnaveed.com/corvit/api/getallproducts.php');

    print(response.body);
  }



}