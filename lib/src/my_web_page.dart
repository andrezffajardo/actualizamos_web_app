import 'package:actualizamos_web_app/src/content/about_content.dart';
import 'package:actualizamos_web_app/src/content/contact_content.dart';
import 'package:actualizamos_web_app/src/content/home_content.dart';
import 'package:actualizamos_web_app/src/content/services_content.dart';
import 'package:actualizamos_web_app/src/navigation_bar/nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyWebPage extends StatelessWidget {
  List imageList = [
    [
      'images/asesor-oficina.jpg',
      'OUTSOURCING CONTABLE',
    ],
    [
      'images/asesora-oficina.jpg',
      'AUDITORIA Y REVISORIA FISCAL',
    ],
    [
      'images/asesora2-oficina.jpg',
      'CONSULTORIA GERENCIAL',
    ],
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
                          //height: 400.0,
                          autoPlay: true,
                          //enlargeCenterPage: true,
                          viewportFraction: 0.99,
                        ),
                        items: imageList.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      i[0],
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5.0,
                                                  horizontal: 20.0),
                                              child: Text(
                                                i[1],
                                                style: TextStyle(
                                                  color: Color(0xFF0000ff),
                                                  fontSize: 40.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xFFced842),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                elevation: 5.0,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Wrap(
                                                  children: const <Widget>[
                                                    Text(
                                                      'CONTACTENOS',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      color: Colors.white,
                                                      size: 20.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
