import 'package:actualizamos_web_app/src/content/about_content.dart';
import 'package:actualizamos_web_app/src/content/contact_content.dart';
import 'package:actualizamos_web_app/src/content/home_content.dart';
import 'package:actualizamos_web_app/src/content/services_content.dart';
import 'package:actualizamos_web_app/src/navigation_bar/nav_bar.dart';
import 'package:flutter/material.dart';

class MyWebPage extends StatelessWidget {
  const MyWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double maxWidth = width > 1200 ? 1200 : width;

    return Scaffold(
      body: Center(
        child: Container(
          width: maxWidth,
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeContent(),
                      AboutContent(),
                      ServicesContent(),
                      ContactContent(),
                      //Contain
                      //Contact
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
