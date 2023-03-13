
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

class  SpecialCategoriesRegistrationPageController7 extends GetxController {

  var userToken="".obs;


  var selectedItemIndex="-1".obs;
  var indicatorPercent=.8.obs;

  //validation error
  var districtValidationError="".obs;
  var thanaValidationError="".obs;
  var postOfficeValidationError="".obs;
  var addressValidationError="".obs;
  var alternativeNumberValidationError="".obs;



  final userDistrictController = TextEditingController();
  final userThanaController = TextEditingController();
  final userPostController = TextEditingController();
  final userAddressController = TextEditingController();
  final userAlternativeNumberController = TextEditingController();




  @override
  void onInit() {

    // selectedSkilledItemValue(argumentData["skillListItem"].toString());
    // userName(argumentData["userName"].toString());
    // selectedGenderValue(argumentData["userGender"].toString());

    super.onInit();
  }



}