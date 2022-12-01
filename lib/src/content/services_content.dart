import 'package:flutter/material.dart';
import 'package:actualizamos_web_app/src/services/services_card.dart';

import '../widget/contact_button.dart';
import '../widget/responsive_widget.dart';

class ServicesContent extends ResponsiveWidget {
  const ServicesContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopServicesContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileServicesContent();
  }
}

class DesktopServicesContent extends StatelessWidget {
  const DesktopServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              ServicesCard(
                  text: 'CONSULTORÍA GERENCIAL',
                  image: 'images/servicios1.jpg'),
              ServicesCard(
                  text: 'OUTSOURCING CONTABLE', image: 'images/servicios5.jpg'),
            ],
          ),
          Column(
            children: [
              ServicesCard(
                  text: 'AUDITORÍA Y REVISORÍA FISCAL',
                  image: 'images/servicios2.jpg'),
              ServicesCard(text: 'IMPUESTOS', image: 'images/servicios3.jpg'),
            ],
          ),
          Column(
            children: [
              Card(
                elevation: 0.0,
                margin: EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 400,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NOSOTROS PODEMOS AYUDARLE',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF414141),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Consúltenos',
                            style: TextStyle(
                              fontSize: 50,
                              color: Color(0xFF0000ff),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                width: 350,
                                height: 10,
                                child: Divider(
                                  height: 15,
                                  thickness: 1,
                                  color: Color(0xFFced842),
                                  endIndent: 70,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 10,
                                child: Divider(
                                  height: 10,
                                  thickness: 2,
                                  color: Color(0xFF0000ff),
                                  endIndent: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        height: 60,
                        width: 300,
                        child: Text(
                          'Tenemos todo un equipo a su disposición, para acompañarlo en el crecimiento de su negocio.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF414141),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      ContactButton(),
                    ],
                  ),
                ),
              ),
              ServicesCard(
                  text:
                      'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                  image: 'images/servicios4.jpg'),
            ],
          )
        ],
      ),
    );
  }
}

class MobileServicesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 0.0,
              margin: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 250,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'NOSOTROS PODEMOS AYUDARLE',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF414141),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Consúltenos',
                          style: TextStyle(
                            fontSize: 38,
                            color: Color(0xFF0000ff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: Text(
                        'Tenemos todo un equipo a su disposición, para acompañarlo en el crecimiento de su negocio.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF414141),
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ContactButton(),
                  ],
                ),
              ),
            ),
            ServicesCard(
                text: 'CONSULTORÍA GERENCIAL', image: 'images/servicios1.jpg'),
            ServicesCard(
                text: 'OUTSOURCING CONTABLE', image: 'images/servicios5.jpg'),
            ServicesCard(
                text: 'AUDITORÍA Y REVISORÍA FISCAL',
                image: 'images/servicios2.jpg'),
            ServicesCard(text: 'IMPUESTOS', image: 'images/servicios3.jpg'),
            ServicesCard(
                text: 'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                image: 'images/servicios4.jpg'),
          ],
        ),
      ),
    );
  }
}
