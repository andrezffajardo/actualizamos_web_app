import 'package:actualizamos_web_app/src/content/about_content.dart';
import 'package:actualizamos_web_app/src/content/contact_content.dart';
import 'package:actualizamos_web_app/src/content/home_content.dart';
import 'package:actualizamos_web_app/src/content/services_content.dart';
import 'package:actualizamos_web_app/src/navigation_bar/nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyWebPage extends StatelessWidget {
  final List<String> imageList = [
    'images/asesor-oficina.jpg',
    'images/asesora-oficina.jpg',
    'images/asesora2-oficina.jpg'
  ];

  //const MyWebPage({super.key});

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
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 600.0,
                          autoPlay: true,
                        ),
                        items: imageList.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                // decoration: BoxDecoration(color: Colors.green),
                                // child: Text(
                                //   'text $i',
                                //   style: TextStyle(fontSize: 16.0),
                                // ),
                                child: Image.asset(i),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      AboutContent(),
                      HomeContent(),
                      ServicesContent(),
                      ContactContent(), //Contain
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
