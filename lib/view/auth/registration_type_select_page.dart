import 'package:bijoy_tech_job/view/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/login_page_controller.dart';
import '../../controller/registration_type_select_page_controller.dart';
import '../../static/Colors.dart';

class RegistrationTypeScreenPage extends StatelessWidget {
  final registrationTypeSelectPageController =
      Get.put(RegistrationTypeSelectPageController());
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
                                    child: CustomScrollView(
                                  slivers: [
                                    SliverFillRemaining(
                                      hasScrollBody: false,
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
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 10),
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
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 0,
                                                          right: 5,
                                                          bottom: 00,
                                                          top: 20),
                                                      child: Text(
                                                        "Registration",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'PT-Sans',
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: buttonBgColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 0,
                                                          right: 5,
                                                          top: 20),
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Text(
                                                          "Please choose your relevant type",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'PT-Sans',
                                                            fontSize: 15,
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

                                                SizedBox(height: 10,),


                                               InkWell(onTap: (){},
                                               child:  cardDesign(
                                                   cardName: 'Functional Categories',
                                                   cardValue: 'There once was a boy who told this story about a boy.',
                                                   colorData: buttonBgColorGreen, iconData:  "assets/images/icon_worker.png",
                                               ),
                                               ),
                                                SizedBox(height: 10,),

                                                InkWell(
                                                  onTap: (){},
                                                  child: cardDesign(
                                                      cardName: 'Functional Categories',
                                                      cardValue: 'ঢাকা পল্লী বিদ্যুৎ সমিতি ১ ড্রাইভার সিলেট গ্যাস ফিল্ডস লিমিটেড সহকারী ব্যবস্থাপক (আইপিই) '
                                                          'সিলেট গ্যাস ফিল্ডস লিমিটেডসহকারী ব্যবস্থাপক (পেট্রোলিয়াম ইঞ্জি:)সিলেট গ্যাস ফিল্ডস '
                                                          'লিমিটেডসহকারী ব্যবস্থাপক (মেকানিক্যাল)',
                                                      colorData: buttonBgColor, iconData:  "assets/images/pc_image.png",
                                                  ),
                                                )





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
                                    ),
                                  ],
                                )),
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



  Widget cardDesign({
    required String cardName,
    required String cardValue,
    required Color colorData,
    required String iconData,
  }) {
    return SizedBox(

      //  height: 200,
      child: Card(
      //  margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(7.0),
                bottomRight: Radius.circular(7.0),
                topLeft: Radius.circular(7.0),
                bottomLeft: Radius.circular(7.0))
        ),
        color: cardBgColor,
        shadowColor: Colors.blueGrey,
        elevation: 2,
        child: Row(
          children: [

          Container(
              margin: EdgeInsets.only(bottom: 20,right: 10),
              padding: EdgeInsets.only(left: 10,right: 6,top: 10,bottom: 10),
              width: 75,
              height: 75,
              decoration:  BoxDecoration(
                  color: colorData,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(60.0),
                      topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)
                ),
              ),
              child: Center(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Image.asset(
                      iconData,

                      width: 45,
                      height: 45,
                      fit: BoxFit.fill,

                    ),
                  ),
                )
              ),

            ),

          Expanded(child:  Column(
             // mainAxisSize: MainAxisSize.max,
             children:[



               Row(
                 children: [Text(
                   cardName,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontFamily: 'PT-Sans',
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                     color: colorData,
                   ),
                 ),],
               ),

               SizedBox(height: 10,),

               Container(
                 margin: EdgeInsets.only(right: 13),
                 height: 20,
                 child: Row(
                   children: [
                     Expanded(child:  Marquee(
                       style: TextStyle(
                         fontFamily: 'PT-Sans',
                         fontSize: 14,
                         fontWeight: FontWeight.normal,
                         color: levelTextColor,
                       ),
                       text:cardValue,
                     ))
                   ],
                 ),
               )
              
             ],
           )),

          ],
        ),
      ),
    );
  }
}
