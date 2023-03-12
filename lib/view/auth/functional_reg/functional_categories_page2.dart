
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../controller/functional/functional_registration_page_controller2.dart';
import '../../../controller/functional/functional_registration_page_controller3.dart';
import '../../../static/Colors.dart';
import 'functional_categories_page3.dart';

class FunctionalCategoriesRegistrationScreenPage2 extends StatelessWidget {
  final functionalCategoriesRegistrationPageController = Get.put(FunctionalCategoriesRegistrationPageController2());
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
                                                    padding: EdgeInsets.only(
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
                                                        "Write Name",
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

                                              Form(
                                                key: formKEey,

                                                  child:Column(
                                                    children: [


                                                      SizedBox(height: 20,),

                                                      userInput(
                                                        userInputController: functionalCategoriesRegistrationPageController.userNameController.value,
                                                        hintTitle: 'Name', keyboardType:TextInputType.text,
                                                        //  iconData: Icons.person
                                                      ),

                                                    ],
                                                  )



                                )



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
                                              padding: const EdgeInsets.only(
                                                  left: 0,
                                                  right: 5,
                                                  bottom: 20,
                                                  top: 5),
                                              child: const Text(
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
          if(formKEey.currentState!.validate()){

            String userName = functionalCategoriesRegistrationPageController.userNameController.value.text;

            Get.to(() => FunctionalCategoriesRegistrationScreenPage3(),
                arguments: {
                  "skillListItem": functionalCategoriesRegistrationPageController.selectedSkilledItemValue.toString(),
                  "userName": userName.toString(),
                }
            )?.then((value) => Get.delete<FunctionalCategoriesRegistrationPageController3>());




          }
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
    return TextFormField (
      validator: (values){
        if(values==""){

          return "Name can not be empty!";
        }
        return null;
      },
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

      // decoration: InputDecoration(
      //   border: InputBorder.none,
      //   suffixIconConstraints: const BoxConstraints(
      //     minHeight: 15,
      //     minWidth: 15,
      //   ),
      //
      //
      //   suffixIcon:Padding(
      //     padding: EdgeInsets.only(right: 20),
      //     child:  Icon(iconData,
      //       color:  levelTextColor,
      //       size: 18,
      //     ),
      //   ),
      //   contentPadding:  EdgeInsets.only(left: 17, right: 17,top: height/50,bottom:height/50 ),
      //   focusedBorder:  const OutlineInputBorder(
      //     borderSide: BorderSide(color:buttonBgColor, width: 1.5),
      //   ),
      //   enabledBorder:  const OutlineInputBorder(
      //     borderSide: BorderSide(color:dropDownBorderColor, width: 1),
      //   ),
      //   labelText:hintTitle,
      //   labelStyle: const TextStyle(
      //     color:levelTextColor,
      //   ),
      //
      // ),

      keyboardType: keyboardType,
    );
  }


  Widget userInput1({
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
        child: TextFormField (
          validator: (values){
              if(values==""){

                return "Name can not be empty";
              }
              return null;
          },
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
