import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:actualizamos_web_app/src/my_web_page.dart';

import 'contact_button.dart';

class Carousel extends StatelessWidget {
  Carousel({
    Key? key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 600.0,
        autoPlay: true,
        //enlargeCenterPage: true,
        viewportFraction: 0.99,
      ),
      items: imageList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 20.0),
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
                          ContactButton(),
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
    );
  }
}
