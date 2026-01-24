import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sattingpage extends StatelessWidget {
  const Sattingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 237,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/homepage.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),


        Positioned(
            child: Padding(padding: const EdgeInsets.only(top: 70,left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDFDFDF),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image/homepageimagetwo.png'),
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
                            color: Colors.white),
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
              SizedBox(height: 130,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                child: Container(
                  height:184 ,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color(0xFFCCCCCC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
