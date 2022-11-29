import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widget/contact_button.dart';
import '../widget/responsive_widget.dart';

class AboutContent extends ResponsiveWidget {
  const AboutContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopAboutContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileAboutContent();
  }
}

class DesktopAboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * .75,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('images/fondo-equipo.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox.shrink(),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NOSOTROS SOMOS',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF414141),
                          ),
                        ),
                        Text(
                          'Actualizamos',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFF0000ff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Stack(
                          children: [
                            Divider(
                              height: 15,
                              thickness: 1,
                              color: Color(0xFFced842),
                              endIndent: 100,
                            ),
                            Divider(
                              thickness: 2,
                              color: Color(0xFF0000ff),
                              endIndent: 335,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Servimos a compañías del sector real, instituciones públicas, organizaciones sin fines de lucro y negocios pequeños de rápido crecimiento',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF414141),
                      ),
                    ),
                    SizedBox(height: 50),
                    ContactButton(),
                  ],
                ),
              ),
              Expanded(child: SizedBox.shrink()),
              Image.asset(
                'images/img-equipo.png',
                //height: 400,
                width: width * .3,
              ),
              Expanded(child: SizedBox.shrink()),
            ],
          )
        ],
      ),
    );
  }
}

class MobileAboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'NOSOTROS SOMOS',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF414141),
            ),
          ),
          Text(
            'Actualizamos',
            style: TextStyle(
              fontSize: 50,
              color: Color(0xFF0000ff),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Servimos a compañías del sector real, instituciones públicas, organizaciones sin fines de lucro y negocios pequeños de rápido crecimiento',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF414141),
            ),
          ),
          SizedBox(height: 25),
          ContactButton(),
          SizedBox(height: 25),
          Image.asset(
            'images/img-equipo.png',
            height: 300,
          ),
        ],
      ),
    );
  }
}
