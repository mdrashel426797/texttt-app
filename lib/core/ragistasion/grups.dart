import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:test_app/core/route/route.dart';
import 'package:test_app/core/widgets/custombutton.dart';

import '../widgets/custombutton_two.dart' show CustombuttonTwo;

class Grups extends StatelessWidget {
  const Grups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 237,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/grupslistimage.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 84,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xFFDFDFDF),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/image/homepageimagetwo.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Jenny Wilson",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "ID:115864",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFBFBFBF),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/icon/Frame2147225853svricon.svg',
                      height: 50,
                      width: 50,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 5),
          Text(
            "Groups List",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(height: 28),

          Container(
            height: 80,
            width: 343,
            decoration: BoxDecoration(
              color: Color(0xFF000000).withValues(alpha: 0.2),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/image/groupspageimagetwo.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Safety Group",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                
              ),
            ),
          ),
          SizedBox(height: 222,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustombuttonTwo(
              width: double.maxFinite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(20),
              ),
              text: "Unlock App",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
              ),
              
              onTap: (){
                Get.toNamed(AppRoute.seftyGrup);
              },

            ),
          ),
        ],
      ),
    );
  }
}
