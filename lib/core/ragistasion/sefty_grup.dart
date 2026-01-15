import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:test_app/core/widgets/custombutton_two.dart';

class SeftyGrup extends StatelessWidget {
  final List<String> items = ["Rashel", "Sager", "John","rashle"];
  final List<String> subtittel = ["Rashel", "Sager", "John","rashle"];
  final List<String> leding = ["Rashel", "Sager", "John","rashle"];


  SeftyGrup({super.key});

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
                image: AssetImage("assets/image/seftygrupimage.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Positioned(
            top: 50,
            left: 16,
            right: 16,
            bottom: 16,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 // Header
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icon/backicon.svg',
                      height: 50,
                      width: 50,
                      color: Colors.black,
                    ),

                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                      child: Text(
                        "Safety Group",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:80),

                Text(
                  "Contact list",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),

                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text(
                            items[index][0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(items[index]),
                        subtitle: Text(subtittel[index]),
                        trailing: Text(leding[index]),
                      );
                    },
                  ),
                ),




              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 700,left: 25,right: 16),
            child: GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 50,
                width: 343,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Add Your Trusted Contacts")),
              ),
            )
          )
       
        ],
      ),
    );
  }
}
