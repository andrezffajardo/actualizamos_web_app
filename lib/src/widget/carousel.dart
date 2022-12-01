import 'package:actualizamos_web_app/src/widget/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'contact_button.dart';

class Carousel extends ResponsiveWidget {
  const Carousel({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopCarousel();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileCarousel();
  }
}

class DesktopCarousel extends StatelessWidget {
  DesktopCarousel({
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 20.0),
                            child: Text(
                              i[1],
                              style: const TextStyle(
                                color: Color(0xFF0000ff),
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const ContactButton(),
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

class MobileCarousel extends StatelessWidget {
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
        height: 200.0,
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            child: Text(
                              i[1],
                              style: const TextStyle(
                                color: Color(0xFF0000ff),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const ContactButton(),
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
