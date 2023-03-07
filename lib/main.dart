
import 'package:bijoy_tech_job/view/search_job_page.dart';
import 'package:bijoy_tech_job/view/splash_screen/splash_screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';


Future<void> main() async {

  await GetStorage.init();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
       home:SearchJobScreenPage()

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
