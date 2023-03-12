
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../../view/common/toast.dart';


class  SpecialCategoriesRegistrationPageController1 extends GetxController {


  var userToken="".obs;
  var userName="".obs;


  var selectedLocation="".obs;
  var selectedCategories="2345".obs;


  var selectedItemIndex="-1".obs;
  var indicatorPercent=.25.obs;

  final userNameController = TextEditingController().obs;

  dynamic argumentData = Get.arguments;
  var selectedSkilledItemValue="".obs;
  @override
  void onInit() {

    selectedSkilledItemValue(argumentData["skillListItem"].toString());

    super.onInit();

  }



}