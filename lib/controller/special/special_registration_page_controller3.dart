
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class  SpecialCategoriesRegistrationPageController3 extends GetxController {





  var selectedLocation="".obs;
  var selectedCategories="2345".obs;


  var selectedItemIndex="-1".obs;
  var indicatorPercent=.55.obs;

  // var genderList=[ "Male", "Female", "Others"].obs;
  var genderList=[ "পুরুষ", "মহিলা", "অন্যান্য"].obs;
  var genderIconList=[ "assets/images/icon_male.png", "assets/images/icon_female_gender.png", "assets/images/icon_others_gender.png"].obs;



  final userNameController = TextEditingController().obs;


  dynamic argumentData = Get.arguments;
  var selectedSkilledItemValue="".obs;
  var userName="".obs;
  var selectedGenderValue="".obs;

  @override
  void onInit() {

    selectedSkilledItemValue(argumentData["skillListItem"].toString());
    userName(argumentData["userName"].toString());

    super.onInit();
  }



}