
import 'package:bijoy_tech_job/static/Colors.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_categories_page.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_categories_page1.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_categories_page2.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_categories_page3.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_categories_page4.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_categories_page5.dart';
import 'package:bijoy_tech_job/view/auth/functional_reg/functional_registration_verify.dart';
import 'package:bijoy_tech_job/view/auth/registration_type_select_page.dart';
import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_page4.dart';
import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_page6.dart';
import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_page7.dart';
import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_registration_page.dart';
import 'package:bijoy_tech_job/view/auth/specialed_reg/special_registration_verify.dart';


import 'package:bijoy_tech_job/view/search_job_page.dart';
import 'package:bijoy_tech_job/view/splash_screen/splash_screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';


Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
      statusBarColor: buttonBgColor
  ));
  await GetStorage.init();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
       home:SpecialCategoriesRegistrationScreenPage7()

       // DashBoardPageScreen()
    );
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("AppLifecycleState changed: $state");
    if (state == AppLifecycleState.resumed) {
      //_showToast("resumed");
    }
  }

}
