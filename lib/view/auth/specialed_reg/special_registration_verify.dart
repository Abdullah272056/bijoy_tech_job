import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/functional/functional_registration_verify-page_controller.dart';

import '../../../controller/special/special_registration_verify-page_controller.dart';
import '../../../static/Colors.dart';
import '../../../static/text.dart';

class SpecialRegistrationVerifyScreenPage extends StatelessWidget {


  final specialCategoriesRegistrationPageController = Get.put(SpecialRegistrationVerifyPageController());
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
                                       padding: const EdgeInsets.only(
                                         left: 5,
                                         right: 5,
                                         top: 15,
                                         bottom: 10,

                                       ),
                                       child: InkWell(
                                         onTap: () {
                                           Get.back();
                                         },
                                         child: const Icon(
                                           Icons
                                               .arrow_back_outlined,
                                           size: 25,
                                           color: boldTextColor,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),



                                 const SizedBox(height: 30,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Container(
                                       height: 100,
                                       width: 100,
                                         decoration: BoxDecoration(
                                             color: otpIconBgColor.withOpacity(0.6),
                                             borderRadius: BorderRadius.all(Radius.circular(60))
                                         ),

                                         child: Container(
                                           margin: const EdgeInsets.all(15),

                                             decoration: const BoxDecoration(
                                                 color: otpIconBgColor,
                                                 borderRadius: BorderRadius.all(Radius.circular(70))
                                             ),

                                             child: Center(
                                               child: Image.asset(
                                                 "assets/images/icon_otp.png",
                                                 fit: BoxFit.fill,
                                                 width: 70,
                                                 height: 70,

                                                 alignment: Alignment.bottomCenter,
                                               ),

                                             )
                                         ),
                                     ),

                                   ],
                                 ),

                                 const SizedBox(height: 30,),
                                 Row(
                                   children: const [
                                     SizedBox(width: 00,),
                                     Expanded(child: Text(
                                       "019942125664 নাম্বারে এস এম এস এর মাধ্যমে একটি কোড পাঠানো হয়েছে, অনুগ্রহ করে কোডটি লিখুন।",
                                       textAlign:
                                       TextAlign.center,
                                       maxLines: 2,
                                       style: TextStyle(
                                         fontFamily:
                                         'PT-Sans',
                                         fontSize: 17,
                                         fontWeight: FontWeight.normal,
                                         color: textColor,
                                       ),
                                     )),

                                     SizedBox(width: 20,)

                                   ],
                                 ),

                                 SizedBox(height: 20,),

                                 Form(
                                     key: formKEey,

                                     child:Column(
                                       children: [

                                         userInputPassword(
                                           userInputController: specialCategoriesRegistrationPageController.passwordController.value,
                                           hintTitle: 'কোডটি লিখুন',
                                           keyboardType:TextInputType.number,
                                           //  iconData: Icons.person
                                         ),

                                         const SizedBox(height: 30,),

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
                                            child:  Text(
                                              helpTextBangla,
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
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 5,
                                                bottom: 20,
                                                top: 5),
                                            child: const Text(
                                              helpPhoneNumberBangla,
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

  Widget userInputPassword({
    required TextEditingController userInputController,
    required String hintTitle,
    required TextInputType keyboardType,
    IconData? iconData,
  }){
    return TextFormField (
      validator: (values){
        if (values!.isEmpty) {
          return 'কোড খালি রাখা যাবে না';
        }
        else if (values.length<6) {
          return 'ওটিপি খুব ছোট';
        }
        else if (specialCategoriesRegistrationPageController.otpValidationError.value!="") {
          return specialCategoriesRegistrationPageController.otpValidationError.value;
        }
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

      decoration:  InputDecoration(
        contentPadding:  EdgeInsets.only(left: 17, right: 17,top: height/46,bottom:height/46 ),
        // contentPadding:EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        labelText: hintTitle,
        labelStyle: const TextStyle(
          color:levelTextColor,
        ),
        focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: buttonBgColor,width: 2)
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: dropDownBorderColor,width: 1)
        ),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Colors.red, width: 2)),

      ),

      keyboardType: keyboardType,
    );
  }


}
