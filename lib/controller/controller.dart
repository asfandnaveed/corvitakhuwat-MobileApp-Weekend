

import 'package:corvitakhuwat/model/RegisterModel.dart';
import 'package:corvitakhuwat/model/productModel.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  var count = 0.obs;
  RxString name  = 'Ali'.obs;

  Rx<ProductsModel> allProductData = ProductsModel().obs;
  Rx<RegisterModel> registerUser  =RegisterModel().obs;


}