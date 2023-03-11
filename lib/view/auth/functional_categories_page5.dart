import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marquee/marquee.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/functional_registration_page_controller.dart';
import '../../controller/functional_registration_page_controller1.dart';
import '../../controller/functional_registration_page_controller2.dart';
import '../../controller/functional_registration_page_controller3.dart';
import '../../controller/functional_registration_page_controller4.dart';
import '../../controller/functional_registration_page_controller5.dart';
import '../../controller/login_page_controller.dart';
import '../../controller/registration_type_select_page_controller.dart';
import '../../static/Colors.dart';

class FunctionalCategoriesRegistrationScreenPage5 extends StatelessWidget {
  final functionalCategoriesRegistrationPageController = Get.put(FunctionalCategoriesRegistrationPageController5());
  var width;
  var height;

  final formKEey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: bgColor,
            ),
            child:Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child:  CustomScrollView(
                      slivers: [
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,


                            children: [

                             Padding(padding: EdgeInsets.only(left: 15,bottom: 15,right: 15),

                             child:  Column(
                               mainAxisAlignment:
                               MainAxisAlignment.start,
                               children: [

                                 Row(
                                   children: [
                                     Container(
                                       padding: EdgeInsets.only(
                                         left: 5,
                                         right: 5,
                                         top: 15,
                                         bottom: 10,

                                       ),
                                       child: InkWell(
                                         onTap: () {},
                                         child: Icon(
                                           Icons
                                               .arrow_back_outlined,
                                           size: 25,
                                           color: boldTextColor,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),

                                 Row(
                                   children: [
                                     Expanded(child:  Container(
                                       padding: EdgeInsets.only(
                                           left: 0,
                                           right: 0,
                                           top: 10),
                                       child:  Obx(() => LinearPercentIndicator(
                                         // width: MediaQuery.of(context).size.width - 80,
                                         animation: true,
                                         lineHeight: 5.0,
                                         animationDuration: 1000,
                                         percent: functionalCategoriesRegistrationPageController.indicatorPercent.value,
                                         //  center: const Text("10%"),
                                         barRadius: const Radius.circular(2.5),
                                         fillColor:Colors.transparent,
                                         backgroundColor: dropDownBorderColor,
                                         progressColor: buttonBgColorGreen,
                                       )),
                                     ),)
                                   ],
                                 ),

                                 const SizedBox(height: 30,),

                                 Row(
                                   children: const [
                                     SizedBox(width: 00,),
                                     Expanded(child: Text(
                                       "Set as User ID (Email Address/Mobile)",
                                       textAlign:
                                       TextAlign.left,
                                       maxLines: 2,
                                       style: TextStyle(
                                         fontFamily:
                                         'PT-Sans',
                                         fontSize: 18,
                                         fontWeight: FontWeight.normal,
                                         color: textColor,
                                       ),
                                     )),

                                     SizedBox(width: 20,)

                                   ],
                                 ),

                                 const SizedBox(height: 20,),

                                 _buildEmailItem(
                                   itemResponse: functionalCategoriesRegistrationPageController.email,

                                 ),

                                 _buildPhoneItem(itemResponse: functionalCategoriesRegistrationPageController.phone,),


                                 SizedBox(height: 20,),
                                 Row(
                                   children: const [
                                     SizedBox(width: 00,),
                                     Expanded(child: Text(
                                       "Type Password",
                                       textAlign:
                                       TextAlign.left,
                                       maxLines: 2,
                                       style: TextStyle(
                                         fontFamily:
                                         'PT-Sans',
                                         fontSize: 18,
                                         fontWeight: FontWeight.normal,
                                         color: textColor,
                                       ),
                                     )),

                                     SizedBox(width: 20,)

                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Row(
                                   children: const [
                                     SizedBox(width: 00,),
                                     Expanded(child: Text(
                                       "Use at least 8 to 12 characters",
                                       textAlign:
                                       TextAlign.left,
                                       maxLines: 2,
                                       style: TextStyle(
                                         fontFamily:
                                         'PT-Sans',
                                         fontSize: 14,
                                         fontWeight: FontWeight.normal,
                                         color: levelTextColor,
                                       ),
                                     )),

                                     SizedBox(width: 20,)

                                   ],
                                 ),



                                 Form(
                                     key: formKEey,

                                     child:Column(
                                       children: [

                                         SizedBox(height: 20,),
                                         userInputPassword(
                                           userInputController: functionalCategoriesRegistrationPageController.passwordController.value,
                                           hintTitle: 'Password',
                                           keyboardType:TextInputType.visiblePassword,
                                           obscureText: true,
                                           prefixedIcon: const Icon(Icons.lock, color: buttonBgColor),
                                           //  iconData: Icons.person
                                         ),

                                         SizedBox(height: 30,),

                                         userConfirmPasswordInput(
                                           obscureText: true,
                                           prefixedIcon: const Icon(Icons.lock, color: buttonBgColor),
                                           userInputController: functionalCategoriesRegistrationPageController.confirmPasswordController.value,
                                           hintTitle: 'Confirm Password', keyboardType:TextInputType.visiblePassword,
                                           //  iconData: Icons.person
                                         ),

                                       ],
                                     )



                                 ),



                               ],
                             ),
                             ),
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image.asset(
                                    "assets/images/bg_image.png",
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 5,
                                                bottom: 00,
                                                top: 20),
                                            child: const Text(
                                              "For any help",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'PT-Sans',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: textColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                right: 5,
                                                bottom: 20,
                                                top: 5),
                                            child: Text(
                                              "call at 1679",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'PT-Sans',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: buttonBgColorGreen,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )




                ),
              ],
            ),),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(formKEey.currentState!.validate()){

            showToastShort("api call");

          }
          // Add your onPressed code here!
        },
        backgroundColor: buttonBgColorGreen,

        child: const Icon(Icons.arrow_forward_outlined),
      ),

    );
  }


  Widget _buildEmailItem({required var itemResponse }) {
    return InkWell(
      onTap: () {

        functionalCategoriesRegistrationPageController.selectedItemIndex(1);

      },

      child:  Obx(() => Container(
        decoration: BoxDecoration(
            color:functionalCategoriesRegistrationPageController.selectedItemIndex.value==1?
            buttonBgColor: Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color:dropDownBorderColor,
                width: 1
            )

        ),

        padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
        margin: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),

        alignment: Alignment.centerLeft,
        child:  Row(
          children: [

           Obx(() =>  Icon(Icons.email,
             color:functionalCategoriesRegistrationPageController.selectedItemIndex.value==1? Colors.white: buttonBgColor,
           ),),


            SizedBox(width: 10,),

           Obx(() =>  Text(
             itemResponse.toString(),
             textAlign: TextAlign.left,
             style: TextStyle(
               fontFamily: 'PT-Sans',
               fontSize: 16,
               fontWeight: FontWeight.normal,
               color: functionalCategoriesRegistrationPageController.selectedItemIndex.value==1? Colors.white: buttonBgColor,


             ),
           ))


          ],
        ),
      )),
    );
  }

  Widget _buildPhoneItem({required var itemResponse}) {
    return InkWell(
      onTap: () {

        functionalCategoriesRegistrationPageController.selectedItemIndex(2);

      },

      child:  Obx(() => Container(
        decoration: BoxDecoration(
            color:functionalCategoriesRegistrationPageController.selectedItemIndex.value==2?
            buttonBgColor: Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color:dropDownBorderColor,
                width: 1
            )

        ),

        padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
        margin: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),

        alignment: Alignment.centerLeft,
        child:  Row(
          children: [

           Obx(() =>  Icon(Icons.phone_android,
             color: functionalCategoriesRegistrationPageController.selectedItemIndex.value==2? Colors.white: buttonBgColor,
           ),),


            SizedBox(width: 10,),

            Obx(() => Text(
              itemResponse.toString(),
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: functionalCategoriesRegistrationPageController.selectedItemIndex.value==2? Colors.white: buttonBgColor,


              ),
            ))


          ],
        ),
      )),
    );
  }



  Widget userInputPassword({
    required TextEditingController userInputController,
    required String hintTitle,
    required TextInputType keyboardType,
    required bool obscureText,
    Widget? prefixedIcon,
    IconData? iconData,
  }){
    return Obx(() => TextFormField (
      validator: (values){

        if (values!.isEmpty) {
          return 'Password is required';
        } else if (values.length<8) {
          return 'Password too short';
        }

        functionalCategoriesRegistrationPageController.passwordValue(values);

        return null;
      },
      controller: userInputController,
      textInputAction: TextInputAction.next,
      autocorrect: false,
      enableSuggestions: false,
      cursorColor: textColor,
      style: const TextStyle(
          color: textColor
      ),
      autofocus: false,
      obscureText: functionalCategoriesRegistrationPageController.isObscurePassword.value,
      decoration:  InputDecoration(
        contentPadding:  EdgeInsets.only(left: 17, right: 17,top: height/46,bottom:height/46 ),
        // contentPadding:EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        labelText: hintTitle,
        labelStyle: const TextStyle(
          color:levelTextColor,
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: buttonBgColor,width: 2)
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: dropDownBorderColor,width: 1)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Colors.red, width: 2)),

        suffixIcon: IconButton(
            color: buttonBgColor,
            icon: Icon(
              functionalCategoriesRegistrationPageController.isObscurePassword.value ? Icons.visibility_off : Icons.visibility,
            ),

            // Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              functionalCategoriesRegistrationPageController.updateIsObscurePassword(!functionalCategoriesRegistrationPageController.isObscurePassword.value);
            }),


      ),



      keyboardType: keyboardType,
    ));
  }

  Widget userConfirmPasswordInput({
    required TextEditingController userInputController,
    required String hintTitle,
    required TextInputType keyboardType,
    required bool obscureText,
    Widget? prefixedIcon,
    IconData? iconData,
  }){
    return Obx(() => TextFormField (
      validator: (values){
        if (values!.isEmpty) {
          return 'Confirm password can not empty';
        } else if (functionalCategoriesRegistrationPageController.passwordValue!=values) {
          return 'Password not match';
        }
        return null;
      },
      obscureText: functionalCategoriesRegistrationPageController.isObscureConfirmPassword.value,
      controller: userInputController,
      textInputAction: TextInputAction.next,
      autocorrect: false,
      enableSuggestions: false,
      cursorColor: textColor,
      style: TextStyle(
          color: textColor
      ),
      autofocus: false,

      decoration:  InputDecoration(
          contentPadding:  EdgeInsets.only(left: 17, right: 17,top: height/46,bottom:height/46 ),
          // contentPadding:EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          labelText: hintTitle,
          labelStyle: const TextStyle(
            color:levelTextColor,
          ),
          suffixIcon: IconButton(
              color: buttonBgColor,
              icon: Icon(
                functionalCategoriesRegistrationPageController.isObscureConfirmPassword.value ? Icons.visibility_off : Icons.visibility,
              ),
              // Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                functionalCategoriesRegistrationPageController.updateIsObscureConfirmPassword(!functionalCategoriesRegistrationPageController.isObscureConfirmPassword.value);
              }),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: buttonBgColor,width: 2)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: dropDownBorderColor,width: 1)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Colors.red, width: 2))),



      keyboardType: keyboardType,
    ));
  }

  
}
