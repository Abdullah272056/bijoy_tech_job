import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/functional/functional_registration_page_controller1.dart';
import '../../controller/login_page_controller.dart';
import '../../static/Colors.dart';
import 'functional_reg/functional_categories_page1.dart';


class LogInScreenPage extends StatelessWidget {
  final loginPageController = Get.put(LoginPageController());
  var width;
  var height;

  @override
  Widget build(BuildContext context) {

    width =MediaQuery.of(context).size.width;
    height =MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body:SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color:bgColor,
            ),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Expanded(child: Container(
                      color: bgColor,
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 00),
                      child: Stack(

                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              "assets/images/bg_image.png",
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child:


                              CustomScrollView(
                                slivers: [
                                  SliverFillRemaining(
                                    hasScrollBody: false,
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [

                                        Expanded(child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 5,),

                                            Row(
                                              children: [Container(
                                                color:bgColor,
                                                padding: EdgeInsets.only(left: 0,right: 5,top: 10),
                                                child: InkWell(
                                                  onTap: (){


                                                  },
                                                  child: Icon(
                                                    Icons.arrow_back_outlined,
                                                    size: 25,
                                                    color: boldTextColor,
                                                  ),
                                                ),
                                              ),],
                                            ),
                                            SizedBox(height: 15,),
                                            Row(
                                              children: [Container(
                                                color:bgColor,
                                                padding: EdgeInsets.only(left: 5,right: 5,bottom: 30),
                                                child: Text(
                                                  "Sign in",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'PT-Sans',
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.normal,
                                                    color: buttonBgColor,
                                                  ),
                                                ),
                                              ),],
                                            ),

                                            userInput(
                                              userInputController: loginPageController.userNameController.value,
                                              hintTitle: 'Username, Email or Mobile No', keyboardType:TextInputType.text,
                                              //  iconData: Icons.person
                                            ),




                                            Row(
                                              children: [Container(
                                                color:bgColor,
                                                padding: EdgeInsets.only(left: 0,right: 5,top: 10),
                                                child: InkWell(
                                                  onTap: (){


                                                  },
                                                  child: Text(
                                                    "Forget username?",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'PT-Sans',
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.normal,
                                                      color: levelTextColor,
                                                    ),
                                                  ),
                                                ),
                                              ),],
                                            ),



                                            Container(
                                              color:bgColor,
                                              padding: EdgeInsets.only(left: 0,right: 5,top: 20),
                                              child:Text(
                                                "Sign in with",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'PT-Sans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: levelTextColor,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: (){},
                                                  child: Container(

                                                    decoration: BoxDecoration(
                                                      color: buttonBgRed,
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(23.0),
                                                      ),
                                                    ),
                                                    height: 46,
                                                    width: 46,
                                                    padding: EdgeInsets.all(12),
                                                    child: Center(
                                                      child: Image.asset(
                                                        "assets/images/icon_google.png",
                                                        fit: BoxFit.fill,
                                                        color: bgColor,
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){},
                                                  child: Container(

                                                    decoration: BoxDecoration(
                                                      color: buttonBgColor,
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(23.0),
                                                      ),
                                                    ),
                                                    height: 46,
                                                    width: 46,
                                                    padding: EdgeInsets.all(12),
                                                    child: Center(
                                                      child: Image.asset(
                                                        "assets/images/icon_facebook.png",
                                                        fit: BoxFit.fill,
                                                        color: bgColor,

                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),

                                            Container(
                                              color:bgColor,
                                              padding: EdgeInsets.only(left: 0,right: 5,top: 20),
                                              child: Text(
                                                "Don't have an account?",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'PT-Sans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: textColor,
                                                ),
                                              ),
                                            ),

                                            Container(
                                              color:bgColor,
                                              padding: EdgeInsets.only(left: 0,right: 5,top: 20),
                                              child: InkWell(
                                                onTap: (){

                                                  Get.to(() => FunctionalCategoriesRegistrationScreenPage1(),
                                                      arguments: {
                                                        "skillListItem": "",
                                                      }
                                                  )?.then((value) => Get.delete<FunctionalCategoriesRegistrationPageController1>());


                                                },
                                                child: const Text(
                                                  "Create Account",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'PT-Sans',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: buttonBgColor,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],



                                        ),)

                                      ],
                                    ),
                                  ),
                                ],
                              )

                              ),


                            ],
                          ),

                        ],
                      )
                  ),),



                ],
              ),
            )

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: buttonBgColorGreen,

        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );



  }





  Widget userInput({
    required TextEditingController userInputController,
    required String hintTitle,
    required TextInputType keyboardType,
    IconData? iconData,
  }){
    return Container(
      height: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 6,top: 5),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:
        const EdgeInsets.only(left: 0.0, top: 0, bottom: 0, right: 0),
        child: TextField(
          controller: userInputController,
          textInputAction: TextInputAction.next,
          autocorrect: false,
          enableSuggestions: false,
          cursorColor: textColor,
          style: TextStyle(
              color: textColor
          ),
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIconConstraints: const BoxConstraints(
              minHeight: 15,
              minWidth: 15,
            ),
            // suffixIcon: Icon(Icons.person,
            //   color:  levelTextColorWhite,
            //   size: 18,
            // ),


            // suffixIcon: Icon(Icons.email,color: Colors.hint_color,),
            // color: _darkOrLightStatus==1?intello_text_color:intello_bg_color_for_dark,
            // hintText: hintTitle,
            // hintStyle: const TextStyle(
            //     fontSize: 16, color: hint_color, fontStyle: FontStyle.normal),


            suffixIcon:Padding(
              padding: EdgeInsets.only(right: 20),
              child:  Icon(iconData,
                color:  levelTextColor,
                size: 18,
              ),
            ),
            contentPadding:  EdgeInsets.only(left: 17, right: 17,top: height/50,bottom:height/50 ),
            focusedBorder:  const OutlineInputBorder(
              borderSide: BorderSide(color:buttonBgColor, width: 1.5),
            ),
            enabledBorder:  const OutlineInputBorder(
              borderSide: BorderSide(color:dropDownBorderColor, width: 1),
            ),
            labelText:hintTitle,
            labelStyle: const TextStyle(
              color:levelTextColor,
            ),






          ),

          keyboardType: keyboardType,
        ),
      ),
    );
  }



}

