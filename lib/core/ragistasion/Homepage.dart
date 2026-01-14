import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:test_app/core/ragistasion/grups.dart';
import 'package:test_app/core/ragistasion/sattingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  //page
 final List<Widget> _pages = [
    HomeBody(),
    Grups(),
    Sattingpage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, color: Colors.black),
      Icon(Icons.groups),
      Icon(Icons.settings),
    ];

    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: _currentIndex,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        color: Color(0xFF1724AE),
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

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

        // Profile Row
        Positioned(
          top: 70,
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
        ),

        // Middle Text
        const Padding(
          padding: EdgeInsets.only(top: 230, left: 118, right: 43),
          child: Text(
            "Tap the shield for \n  Instant Support",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF000000),
            ),
          ),
        ),

        // Bottom Image
        Padding(
          padding: const EdgeInsets.only(top: 338, left: 50, right: 33),
          child: Container(
            height: 309,
            width: 309,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/homepagebgimage.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
