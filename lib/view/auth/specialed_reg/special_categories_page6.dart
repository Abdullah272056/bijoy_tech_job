import 'package:bijoy_tech_job/view/auth/specialed_reg/special_categories_page5.dart';
import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../controller/functional/functional_registration_page_controller5.dart';
import '../../../controller/special/special_registration_page_controller4.dart';
import '../../../controller/special/special_registration_page_controller5.dart';
import '../../../controller/special/special_registration_page_controller6.dart';
import '../../../static/Colors.dart';
import '../../../static/text.dart';
import '../functional_reg/functional_categories_page5.dart';


class SpecialCategoriesRegistrationScreenPage6 extends StatelessWidget {
  final specialCategoriesRegistrationPageController = Get.put(SpecialCategoriesRegistrationPageController6());
  var width;
  var height;

  final formKEey=GlobalKey<FormState>();
  late DateTime _myDate;
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    _context=context;
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

                                    const SizedBox(height: 30,),

                                    Row(
                                      children: const [
                                        SizedBox(width: 00,),
                                        Expanded(child: Text(
                                          "জন্ম তারিখ অথবা বয়স লিখুন",
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

                                    _buildDateOfBirthInput(),



                                    Form(
                                        key: formKEey,

                                        child:Column(
                                          children: [





                                            Row(
                                              children: [
                                                Expanded(child: Container(
                                                  color: smallTextColor,
                                                  height: 1,
                                                )),
                                                Container(
                                                  margin: EdgeInsets.only(left: 12,right: 12,top: 25,bottom: 25),
                                                  child:  Text(
                                                    "অথবা",
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

                                            userInputAge(
                                              userInputController: specialCategoriesRegistrationPageController.userAgeController ,
                                              hintTitle: 'বয়স', keyboardType:TextInputType.text,
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
                                                top: 5
                                            ),
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
            ),



        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(formKEey.currentState!.validate()){

            String  userAge=specialCategoriesRegistrationPageController.userAgeController.value.text;



            Get.to(() => SpecialCategoriesRegistrationScreenPage5(),
                arguments: {

                  "skillListItem": specialCategoriesRegistrationPageController.selectedSkilledItemValue.toString(),
                  "userName": specialCategoriesRegistrationPageController.userName.toString(),
                  "userGender": specialCategoriesRegistrationPageController.userName.toString(),
                  // "userEmail": userEmail,
                  // "userPhone": userPhone,

                }
            )?.then((value) => Get.delete<SpecialCategoriesRegistrationPageController5>());


          }
          // Add your onPressed code here!
        },
        backgroundColor: buttonBgColorGreen,

        child: const Icon(Icons.arrow_forward_outlined),
      ),

    );
  }



  Widget _buildDateOfBirthInput() {
    return InkWell(
      onTap: () async {
        _myDate = (await showDatePicker(
          context: _context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        ))!;

        // specialCategoriesRegistrationPageController.userBirthDate(_myDate.toString());
        // _particularBirthDate = DateFormat('yyyy-MM-dd').format(_myDate);
        // specialCategoriesRegistrationPageController.userBirthDate((DateFormat('yyyy-MM-dd').format(_myDate)).toString());
        // specialCategoriesRegistrationPageController.userAgeController.value="edrfg" as TextEditingController;

        specialCategoriesRegistrationPageController.userBirthDate((DateFormat('dd/MM/yyyy').format(_myDate)).toString());
        specialCategoriesRegistrationPageController.clearTextField();


        // specialCategoriesRegistrationPageController.userBirthDate((DateFormat('dd/MM/yyyy').format(_myDate)).toString());
      },
      child: Obx(() => Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [

          if(specialCategoriesRegistrationPageController.userBirthDate.value!="")...{
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
                        specialCategoriesRegistrationPageController.userBirthDate.value,
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
                  "জন্ম তারিখ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'PT-Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: levelTextColor,
                  ),
                ),
              ),)
          }
          else...{
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
                  children: const [

                    Expanded(child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "জন্ম তারিখ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PT-Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: levelTextColor,
                        ),
                      ),
                    ),),


                  ],
                )
            ),
          },

        ],
      ))

    );
  }


  Widget userInputAge({
    required TextEditingController userInputController,
    required String hintTitle,
    required TextInputType keyboardType,
    IconData? iconData,
  }){
    return TextFormField (
      validator: (values){

        if (values!.isEmpty) {
          return 'বয়স খালি রাখা যাবে না';
        } else if (specialCategoriesRegistrationPageController.emailValidationError.value!="") {
          return specialCategoriesRegistrationPageController.emailValidationError.value;
        }
        return null;


      },
      controller: userInputController,
      textInputAction: TextInputAction.next,
      autocorrect: false,
      enableSuggestions: false,
      cursorColor: textColor,
      onChanged: (value){

        specialCategoriesRegistrationPageController.userBirthDate("");


      },
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
