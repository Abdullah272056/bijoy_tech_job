import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_page2.dart';
import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../controller/functional/functional_registration_page_controller1.dart';


import '../../../controller/functional/functional_registration_page_controller2.dart';
import '../../../controller/special/special_registration_page_controller1.dart';
import '../../../controller/special/special_registration_page_controller2.dart';
import '../../../static/Colors.dart';
import '../../../static/text.dart';
import '../functional_reg/functional_categories_page2.dart';


class SpecialCategoriesRegistrationScreenPage1 extends StatelessWidget {
  final specialCategoriesRegistrationPageController =
      Get.put(SpecialCategoriesRegistrationPageController1());
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: bgColor,
            ),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        color: bgColor,
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 00),
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
                                Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
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
                                                      percent: specialCategoriesRegistrationPageController.indicatorPercent.value,
                                                      //  center: const Text("10%"),
                                                      barRadius: const Radius.circular(2.5),
                                                      fillColor:Colors.transparent,
                                                      backgroundColor: dropDownBorderColor,
                                                      progressColor: buttonBgColorGreen,
                                                    )),
                                                  ),)
                                                ],
                                              ),

                                              Row(
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.only(
                                                      left: 0,
                                                      right: 5,
                                                      top: 30,
                                                    ),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: const Text(
                                                        "??????????????? ???????????? ?????? ????????????????????? ???????????? ????????????",
                                                        textAlign:
                                                        TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily:
                                                          'PT-Sans',
                                                          fontSize: 17,
                                                          fontWeight:
                                                          FontWeight
                                                              .normal,
                                                          color: textColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 20,),


                                              _buildGoogleLoginButton(),

                                              SizedBox(height: 20,),

                                              _buildFacebookLoginButton(),

                                              SizedBox(height: 30,),

                                              Row(
                                                children: [
                                                  Expanded(child: Container(
                                                    color: smallTextColor,
                                                    height: 1,
                                                  )),
                                                 Container(
                                                   margin: const EdgeInsets.only(left: 12,right: 12),
                                                   child:  const Text(
                                                     "????????????",
                                                     textAlign: TextAlign.center,
                                                     style: TextStyle(
                                                       fontFamily: 'PT-Sans',
                                                       fontSize: 16,
                                                       fontWeight: FontWeight.normal,
                                                       color: smallTextColor,
                                                     ),
                                                   ),
                                                 ),
                                                  Expanded(child: Container(
                                                    color: smallTextColor,
                                                    height: 1,
                                                  ))
                                                ],
                                              ),

                                              SizedBox(height: 30,),
                                              _buildEnterInformationButton(),


                                            ],
                                          ),
                                        ),
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
                                              padding: EdgeInsets.only(
                                                  left: 0,
                                                  right: 5,
                                                  bottom: 20,
                                                  top: 5),
                                              child: Text(
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
                                    ),),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            )),
      ),



    );
  }

  Widget _buildGoogleLoginButton() {
    return InkWell(
      onTap: () {

      },
      child:  Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(7.0),
            border: Border.all(color:dropDownBorderColor,
                width: 1
            )

        ),

        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        height: 45,
        alignment: Alignment.center,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icon_google.png",
              width: 18,
              height: 18,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 12,),
            Text(
              "???????????? ?????? ????????????????????? ????????????????????? ???????????? ????????????",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: levelTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFacebookLoginButton() {
    return InkWell(
      onTap: () {

      },

      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(7.0),
            border: Border.all(color:dropDownBorderColor,
                width: 1
            )

        ),

        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        height: 45,
        alignment: Alignment.center,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icon_facebook.png",
              width: 18,
              height: 18,
              fit: BoxFit.fill,
              color: buttonBgColor,
            ),
            SizedBox(width: 12,),
            Text(
              "?????????????????? ?????? ????????????????????? ????????????????????? ???????????? ????????????",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: levelTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEnterInformationButton() {
    return InkWell(
      onTap: () {

        if(specialCategoriesRegistrationPageController.selectedSkilledItemValue!=""){

          Get.to(() => SpecialCategoriesRegistrationScreenPage2(),
              arguments: {
                "skillListItem": specialCategoriesRegistrationPageController.selectedSkilledItemValue.toString(),
              }
          )?.then((value) => Get.delete<SpecialCategoriesRegistrationPageController2>());

        }
        else{
          showToastShort("??????????????? ???????????? ?????????????????? ???????????????????????? ????????????");
        }

      },

      child: Container(
        decoration: BoxDecoration(
            color: boldTextColor,
            borderRadius: BorderRadius.circular(7.0),
            border: Border.all(color:boldTextColor,
                width: 1
            )

        ),

        padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
        height: 45,
        alignment: Alignment.center,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "??????????????? ???????????? ???????????????",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }


}
