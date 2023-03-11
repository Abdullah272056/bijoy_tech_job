
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

class  FunctionalCategoriesRegistrationPageController3 extends GetxController {


  var userToken="".obs;
  var userName="".obs;


  var selectedLocation="".obs;
  var selectedCategories="2345".obs;


  var selectedItemIndex="-1".obs;
  var indicatorPercent=.55.obs;

  var genderList=[ "Male", "Female", "Others"].obs;
  var genderIconList=[ "assets/images/icon_male.png", "assets/images/icon_female_gender.png", "assets/images/icon_others_gender.png"].obs;

  final userNameController = TextEditingController().obs;

  @override
  void onInit() {

    super.onInit();
  }



}