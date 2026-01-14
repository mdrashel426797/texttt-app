import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:test_app/core/route/route.dart';
import 'package:test_app/core/widgets/custombutton.dart';
import 'package:test_app/core/widgets/customtextfromfield.dart';

import '../widgets/custombutton_two.dart' show CustombuttonTwo;

class Savecontinue extends StatelessWidget {
  const Savecontinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/grupsetupimage.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 115,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Group Setup",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Text(
                  "Group Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 15),

                CustomTextField(
                  hintText: " Group Name",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF565555),
                  ),
                ),

                SizedBox(height: 25),
                Text(
                  "Contact list",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 15,),

                // list tile



                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDFDFDF),
                        ),
                      ),
                    ),
                    SizedBox(height: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jenny Wilson",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF746D6D)),),
                       SizedBox(height:10 ,),
                        Text("You",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF746D6D)),),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 15),




                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDFDFDF),
                        ),
                      ),
                    ),
                    SizedBox(height: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Esther Howard",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF746D6D)),),
                        SizedBox(height:10 ,),
                        Text("(480) 555-0103",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF746D6D)),),
                      ],
                    )
                  ],
                ),


                SizedBox(height: 35,),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color:Color(0xFF000000).withValues(alpha: 0.2),
                   // border: Border.all(width: 1, color: Color(0xFF1621A4)),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      "Add Your Trusted Contacts",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF565555),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 89,),



                CustombuttonTwo(
                  width: double.maxFinite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(20),
                  ),
                  text: "Save & Continue",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                  onTap: (){
                    Get.toNamed(AppRoute.allowLocation);
                  },
                ),








              ],
            ),
          ),
        ],
      ),
    );
  }
}
