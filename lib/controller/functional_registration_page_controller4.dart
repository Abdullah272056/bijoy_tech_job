
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../../view/common/toast.dart';
import '../api_service/api_service.dart';
import '../data_base/share_pref/sharePreferenceDataSaveName.dart';
import '../view/common/loading_dialog.dart';

class  FunctionalCategoriesRegistrationPageController4 extends GetxController {


  var userToken="".obs;
  var userName="".obs;



  var selectedCountries="Bangladesh (88)".obs;


  var selectedItemIndex="-1".obs;
  var indicatorPercent=.8.obs;

  //validation error
  var emailValidationError="".obs;
  var phoneValidationError="".obs;


  final userNameController = TextEditingController().obs;
  final userMobileNumberController = TextEditingController().obs;
  final userEmailController = TextEditingController().obs;

  @override
  void onInit() {

    super.onInit();
  }



}