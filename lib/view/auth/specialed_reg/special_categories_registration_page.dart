import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_page1.dart';
import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marquee/marquee.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/functional/functional_registration_page_controller.dart';
import '../../../controller/functional/functional_registration_page_controller1.dart';
import '../../../controller/login_page_controller.dart';
import '../../../controller/registration_type_select_page_controller.dart';
import '../../../controller/special/special_registration_page_controller.dart';
import '../../../controller/special/special_registration_page_controller1.dart';
import '../../../static/Colors.dart';
import '../../../static/text.dart';
import '../functional_reg/functional_categories_page1.dart';


class SpecialCategoriesRegistrationScreenPage extends StatelessWidget {

  final specialCategoriesRegistrationPageController = Get.put(SpecialCategoriesRegistrationPageController());

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
                                                    padding: EdgeInsets.only(
                                                      left: 0,
                                                      right: 5,
                                                      top: 30,
                                                    ),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Text(
                                                        "??????????????? ?????????????????? ???????????? ?????????????????? ???????????????????????? ????????????" ,
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


                                              Expanded(child: ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  itemCount: 16,

                                                  itemBuilder: (BuildContext context, int index) {
                                                    return  _buildListItem(index);
                                                  }))







                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 0,
                                                  right: 5,
                                                  bottom: 00,
                                                  top: 20),
                                              child: Text(
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

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          if(specialCategoriesRegistrationPageController.selectedSkilledItemValue!=""){
            Get.to(() => SpecialCategoriesRegistrationScreenPage1(),
                arguments: {

                  "skillListItem": specialCategoriesRegistrationPageController.selectedSkilledItemValue.toString(),

                }
            )?.then((value) => Get.delete<SpecialCategoriesRegistrationPageController1>());

          }
          else{
            showToastShort("??????????????? ???????????? ?????????????????? ???????????????????????? ????????????");
          }

        },
        backgroundColor: buttonBgColorGreen,

        child: const Icon(Icons.arrow_forward_outlined),
      ),

    );
  }

  Widget _buildListItem(int index) {
    return InkWell(
      onTap: () {
        specialCategoriesRegistrationPageController.selectedSkilledItemValue("?????????????????????"+index.toString());
        specialCategoriesRegistrationPageController.selectedItemIndex(index.toString());
      },

      child:  Obx(() => Container(
        decoration: BoxDecoration(
            color:index.toString()==specialCategoriesRegistrationPageController.selectedItemIndex.value?
            buttonBgColor: Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color:dropDownBorderColor,
                width: 1
            )

        ),

        padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
        margin: EdgeInsets.only(left: 0,right: 0,top: 5,bottom: 5),

        alignment: Alignment.centerLeft,
        child:   Text(

          "???????????? ?????????????????????/ ??????????????????????????? ????????????????????? $index",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'PT-Sans',
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: index.toString()==specialCategoriesRegistrationPageController.selectedItemIndex.value? Colors.white: buttonBgColor,

          ),
        ),
      )),
    );
  }




}
