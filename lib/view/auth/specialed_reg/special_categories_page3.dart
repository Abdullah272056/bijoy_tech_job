
import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../controller/functional/functional_registration_page_controller3.dart';
import '../../../controller/functional/functional_registration_page_controller4.dart';
import '../../../controller/special/special_registration_page_controller3.dart';
import '../../../static/Colors.dart';
import '../../../static/text.dart';
import '../functional_reg/functional_categories_page4.dart';


class SpecialCategoriesRegistrationScreenPage3 extends StatelessWidget {

  final specialCategoriesRegistrationPageController = Get.put(SpecialCategoriesRegistrationPageController3());
  var width;
  var height;

  final formKEey=GlobalKey<FormState>();

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
                                                        "লিঙ্গ র্নিবাচন করুন",
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

                                              Expanded(child: Obx(() => ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  itemCount:specialCategoriesRegistrationPageController.genderList.length,

                                                  itemBuilder: (BuildContext context, int index) {
                                                    return  _buildListItem(index: index,
                                                       itemResponse: specialCategoriesRegistrationPageController.genderList[index],
                                                        iconLink: specialCategoriesRegistrationPageController.genderIconList[index],

                                                         );
                                                  })))

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

          if(specialCategoriesRegistrationPageController.selectedGenderValue.value!=""){





            Get.to(() => FunctionalCategoriesRegistrationScreenPage4(),
                arguments: {
                  "skillListItem": specialCategoriesRegistrationPageController.selectedSkilledItemValue.toString(),
                  "userName": specialCategoriesRegistrationPageController.userName.toString(),
                  "userGender": specialCategoriesRegistrationPageController.userName.toString(),
                }
            )?.then((value) => Get.delete<FunctionalCategoriesRegistrationPageController4>());


          }else{

            showToastShort("Select gender");
          }

        },
        backgroundColor: buttonBgColorGreen,

        child: const Icon(Icons.arrow_forward_outlined),
      ),

    );
  }

  Widget _buildListItem({required var itemResponse,required int index, required String iconLink}) {
    return InkWell(
      onTap: () {

        specialCategoriesRegistrationPageController.selectedItemIndex(index.toString());
        specialCategoriesRegistrationPageController.selectedGenderValue(itemResponse);

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

        padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
        margin: EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),

        alignment: Alignment.centerLeft,
        child:  Row(
          children: [

            Image.asset(
              iconLink,
              height: 18,
              width: 18,
              fit: BoxFit.fill,
              color: index.toString()==specialCategoriesRegistrationPageController.selectedItemIndex.value? Colors.white: buttonBgColor,
              alignment: Alignment.bottomCenter,
            ),

            SizedBox(width: 10,),

            Text(
              itemResponse.toString(),
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: index.toString()==specialCategoriesRegistrationPageController.selectedItemIndex.value? Colors.white: buttonBgColor,


              ),
            )


          ],
        ),
      )),
    );
  }




}
