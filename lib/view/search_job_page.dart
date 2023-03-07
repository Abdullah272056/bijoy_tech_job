import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../static/Colors.dart';
import '../controller/search_job_page_controller.dart';




class SearchJobScreenPage extends StatelessWidget {
  final searchJobPageController = Get.put(SearchJobPageController());
  var width;
  var height;

  @override
  Widget build(BuildContext context) {

    width =MediaQuery.of(context).size.width;
    height =MediaQuery.of(context).size.height;
    return Scaffold(
      body:SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color:bgColor,
            ),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child:Container(
                          color: bgColor,
                          padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 20),
                          child: Column(
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
                                            SizedBox(height: 10,),
                                            Row(


                                              children: [
                                                Expanded(child: Container()),
                                                Container(
                                                    color:bgColor,
                                                    padding: EdgeInsets.only(left: 5,right: 5,bottom: 30),
                                                    child: InkWell(
                                                      onTap: (){
                                                        showToastShort("asdf");
                                                      },
                                                      child: Image.asset(
                                                        "assets/images/icon_profile_user.png",
                                                        width: 25,
                                                        height: 25,
                                                        color: buttonBgColor,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )
                                                )
                                              ],

                                            ),


                                            Row(
                                              children: [Container(
                                                color:bgColor,
                                                padding: EdgeInsets.only(left: 5,right: 5,bottom: 30),
                                                child: Text(
                                                  "Search Job",
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
                                              userInputController: searchJobPageController.userNameController.value,
                                              hintTitle: 'Job Title', keyboardType:TextInputType.text,
                                              //  iconData: Icons.person
                                            ),

                                            const SizedBox(height: 10,),
                                            _buildLocationInput(),
                                            const SizedBox(height: 16,),
                                            _buildCategoriesInput(),

                                            const SizedBox(height: 35,),
                                            _buildSearchButton(),
                                            SizedBox(height: 10,),
                                            _buildViewHotJobsButton(),

                                          ],



                                        ),)

                                      ],
                                    ),
                                  ),
                                ],
                              )

                              ),


                            ],
                          )
                      )


                  )
                ],
              ),
            )

        ),
      )
    );



  }

  Widget _buildLocationInput() {
    return InkWell(
      onTap: () {

      },
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [

          if(searchJobPageController.selectedLocation.value!="")...{
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
                        searchJobPageController.selectedLocation.value,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PT-Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      )),
                    ),),

                    Container(
                      color:bgColor,
                      padding: EdgeInsets.only(left: 0,right: 0,bottom: 0),
                      child: InkWell(
                        onTap: (){


                        },
                        child:Image.asset(
                          "assets/images/icon_cross.png",
                          width: 12,
                          height: 12,
                          color: levelTextColor,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),


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
                  "Location",
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
                      "Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: levelTextColor,
                      ),
                    ),
                  ),),
                  Icon(
                    Icons.arrow_drop_down,
                    color: levelTextColor,
                  )
                  
                ],
              )
            ),
          },

        ],
      ),
    );
  }

  Widget _buildCategoriesInput() {
    return InkWell(
      onTap: () {

      },
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [

          if(searchJobPageController.selectedCategories.value!="")...{
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
                        searchJobPageController.selectedCategories.value,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PT-Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      )),
                    ),),
                    Container(
                      color:bgColor,
                      padding: EdgeInsets.only(left: 0,right: 0,bottom: 0),
                      child: InkWell(
                        onTap: (){


                        },
                        child:Image.asset(
                          "assets/images/icon_cross.png",
                          width: 12,
                          height: 12,
                          color: levelTextColor,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

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
                  "Categories",
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
                        "Categories",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PT-Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: levelTextColor,
                        ),
                      ),
                    ),),
                    Icon(
                      Icons.arrow_drop_down,
                      color: levelTextColor,
                    )

                  ],
                )
            ),
          },

        ],
      ),
    );
  }

  Widget _buildViewHotJobsButton() {
    return InkWell(
      onTap: () {

      },

      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(7.0),
                border: Border.all(color:dropDownBorderColor,
                    width: 1.5
                )

            ),

            padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
            height: 50,
            alignment: Alignment.center,
            child:  const Text(
              "View Hot Jobs",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
          Positioned(
            left: 10,
            child: Image.asset(
              "assets/images/fire_icon.png",
              width: 18,
              height: 18,
              fit: BoxFit.fill,
            ),)
        ],
      ),
    );
  }

  // icon_cancel.png

  Widget _buildSearchButton() {
    return InkWell(
      onTap: () {

      },

      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            decoration: BoxDecoration(
                color: buttonBgColorGreen,
                borderRadius: BorderRadius.circular(7.0)
            ),

            padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
            height: 50,
            alignment: Alignment.center,
            child:  const Text(
              "Search",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PT-Sans',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10,
            child: Icon(
            Icons.search,
            color: Colors.white,
            size: 20.0,
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
              borderSide: BorderSide(color:dropDownBorderColor, width: 1),
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

