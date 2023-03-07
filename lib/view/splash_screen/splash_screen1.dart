import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../static/Colors.dart';




class SplashScreen1Page extends StatelessWidget {
 // final refundPolicyController = Get.put(RefundPolicyController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
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
                        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/icon_storage_permission.png",
                                            width: 130,
                                            height: 120,
                                            fit: BoxFit.fill,
                                          ),

                                          const SizedBox(height: 35,),
                                          const Text(
                                             "Storage access" ,
                                            // "Men Grey Classic Regular Fit Formal Shirt",
                                            overflow: TextOverflow.ellipsis,
                                            style:  TextStyle(
                                                color: boldTextColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                            softWrap: false,
                                            maxLines: 1,

                                          ),
                                          const SizedBox(height: 12,),
                                          const Text(
                                            "Storage permission is nedded because we use phone's internal storage to store your personalized data to give you a faster and reliable app performance" ,
                                            style:  TextStyle(
                                                color: smallTextColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),

                                            textAlign: TextAlign.center,

                                          ),

                                          const SizedBox(height: 50,)



                                        ],

                                      ),)

                                    ],
                                  ),
                                ),
                              ],
                            )

                ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildHelpButton(),
                                _buildNextButton()

                              ],
                            )

                          ],
                        )
                    )


                )
              ],
            ),
          )

      )
    );



  }

  Widget _buildHelpButton() {
    return InkWell(
      onTap: () {
        _launchUrl("https://www.bdjobs.com/tos.asp");
      },

      child:Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5.0)
        ),
        padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
        alignment: Alignment.center,
        child:  const Text(
          "Help",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'PT-Sans',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: buttonBgColor,
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return InkWell(
      onTap: () {

      },

      child: Container(
        decoration: BoxDecoration(
            color: buttonBgColor,
            borderRadius: BorderRadius.circular(3.0)
        ),

        padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
        alignment: Alignment.center,
        child:  const Text(
          "Next",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'PT-Sans',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String urlLink) async {
    final Uri _url = Uri.parse(urlLink);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

}

