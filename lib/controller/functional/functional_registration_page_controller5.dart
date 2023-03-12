
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../../../view/common/toast.dart';
import '../../api_service/api_service.dart';
import '../../data_base/share_pref/sharePreferenceDataSaveName.dart';
import '../../view/common/loading_dialog.dart';

class  FunctionalCategoriesRegistrationPageController5 extends GetxController {


  var userToken="".obs;




  var selectedCountries="Bangladesh (88)".obs;



  var indicatorPercent=.8.obs;

  //validation error
  var emailValidationError="".obs;
  var phoneValidationError="".obs;


  var email="abdullah272056@gmail.com".obs;
  var phone="01994215664".obs;
  var selectedItemIndex=1.obs;

  var passwordValue="".obs;



  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  var isObscurePassword = true.obs;
  var isObscureConfirmPassword = true.obs;


  dynamic argumentData = Get.arguments;
  var selectedSkilledItemValue="".obs;
  var userName="".obs;
  var selectedGenderValue="".obs;
  var userEmailValue="".obs;
  var userPhoneValue="".obs;

  @override
  void onInit() {

    selectedSkilledItemValue(argumentData["skillListItem"].toString());
    userName(argumentData["userName"].toString());
    selectedGenderValue(argumentData["userGender"].toString());
     userEmailValue(argumentData["userEmail"].toString());
    userPhoneValue(argumentData["userPhone"].toString());

    super.onInit();
  }


  updateIsObscureConfirmPassword(var value) {
    isObscureConfirmPassword(value);
  }


  updateIsObscurePassword(var value) {
    isObscurePassword(value);
  }


}