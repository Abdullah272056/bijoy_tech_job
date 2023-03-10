import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../controller/functional/functional_registration_page_controller4.dart';
import '../../../controller/functional/functional_registration_page_controller5.dart';
import '../../../static/Colors.dart';
import 'functional_categories_page5.dart';

class FunctionalCategoriesRegistrationScreenPage4 extends StatelessWidget {
  final functionalCategoriesRegistrationPageController = Get.put(FunctionalCategoriesRegistrationPageController4());
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
            child: Column(
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

                              Padding(padding: EdgeInsets.only(left: 15,bottom: 20,right: 15),

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

                                    const SizedBox(height: 30,),

                                    Row(
                                      children: const [
                                        SizedBox(width: 00,),
                                        Expanded(child: Text(
                                          "Provide your Mobile No And Email Address (at least one)",
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

                                    _buildCountryRegionInput(),
                                    const SizedBox(height: 20,),


                                    Form(
                                        key: formKEey,

                                        child:Column(
                                          children: [


                                            userInputPhone(
                                              userInputController: functionalCategoriesRegistrationPageController.userMobileNumberController.value,
                                              hintTitle: 'Mobile Number', keyboardType:TextInputType.text,
                                              //  iconData: Icons.person
                                            ),

                                            Row(
                                              children: [
                                                Expanded(child: Container(
                                                  color: smallTextColor,
                                                  height: 1,
                                                )),
                                                Container(
                                                  margin: EdgeInsets.only(left: 12,right: 12,top: 25,bottom: 25),
                                                  child:  Text(
                                                    "OR",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'PT-Sans',
                                                      fontSize: 15,
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

                                            userInput(
                                              userInputController: functionalCategoriesRegistrationPageController.userEmailController.value,
                                              hintTitle: 'Email', keyboardType:TextInputType.text,
                                              //  iconData: Icons.person
                                            ),

                                          ],
                                        )



                                    )



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
            ),



        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(formKEey.currentState!.validate()){

            String  userEmail=functionalCategoriesRegistrationPageController.userEmailController.value.text;
            String  userPhone=functionalCategoriesRegistrationPageController.userMobileNumberController.value.text;


            Get.to(() => FunctionalCategoriesRegistrationScreenPage5(),
                arguments: {
                  "skillListItem": functionalCategoriesRegistrationPageController.selectedSkilledItemValue.toString(),
                  "userName": functionalCategoriesRegistrationPageController.userName.toString(),
                  "userGender": functionalCategoriesRegistrationPageController.userName.toString(),
                  "userEmail": userEmail,
                  "userPhone": userPhone,
                }
            )?.then((value) => Get.delete<FunctionalCategoriesRegistrationPageController5>());


          }
          // Add your onPressed code here!
        },
        backgroundColor: buttonBgColorGreen,

        child: const Icon(Icons.arrow_forward_outlined),
      ),

    );
  }

  Widget _buildCountryRegionInput() {
    return InkWell(
      onTap: () {

      },
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [

          Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(color:dropDownBorderColor,
                      width: 1.5
                  )

              ),

              padding: EdgeInsets.only(left: 20,right: 10,top: 10,bottom: 10),
              height: 50,
              alignment: Alignment.centerLeft,
              child:Row(
                children:   [

                  Expanded(child: Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(() => Text(
                      functionalCategoriesRegistrationPageController.selectedCountries.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: textColor,
                      ),
                    )),
                  ),),


                ],
              )
          ),
          Positioned(
            left: 15,
            top: -6,


            child: Container(
              color:bgColor,
              padding: EdgeInsets.only(left: 5,right: 5),
              child: Text(
                "Country/Region Code",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'PT-Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: levelTextColor,
                ),
              ),
            ),)

        ],
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

        if (values!.isEmpty) {
          return 'Email is required';
        } else if (!values.contains('@')) {
          return 'Email not invalid';
        } else if (functionalCategoriesRegistrationPageController.emailValidationError.value!="") {
          return functionalCategoriesRegistrationPageController.emailValidationError.value;
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



      keyboardType: keyboardType,
    );
  }

  Widget userInputPhone({
    required TextEditingController userInputController,
    required String hintTitle,
    required TextInputType keyboardType,
    IconData? iconData,
  }){
    return TextFormField (
      validator: (values){

        if (values!.isEmpty) {
          return 'Phone is required';
        } else if (values.length<10) {
          return 'Phone not invalid';
        } else if (functionalCategoriesRegistrationPageController.phoneValidationError.value!="") {
          return functionalCategoriesRegistrationPageController.phoneValidationError.value;
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



      keyboardType: keyboardType,
    );
  }
  
}
