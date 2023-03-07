
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

class SearchJobPageController extends GetxController {


  var userToken="".obs;
  var userName="".obs;


  var selectedLocation="".obs;
  var selectedCategories="2345".obs;

  final userNameController = TextEditingController().obs;

  @override
  void onInit() {

    super.onInit();
  }



}