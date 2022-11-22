import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class ServicesContent extends StatelessWidget {
  const ServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1000,
        child: Row(
          children: [
            Column(
              children: [
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/servicios4.jpg'))),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 300,
                      ),
                      child: Text(
                        'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                ),
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/servicios4.jpg'))),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 300,
                      ),
                      child: Text(
                        'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                )
              ],
            ),
            Column(
              children: [
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/servicios4.jpg'))),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 300,
                      ),
                      child: Text(
                        'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                ),
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/servicios4.jpg'))),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 300,
                      ),
                      child: Text(
                        'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                )
              ],
            ),
            Column(
              children: [
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/servicios4.jpg'))),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 300,
                      ),
                      child: Text(
                        'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                ),
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/servicios4.jpg'))),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 300,
                      ),
                      child: Text(
                        'NORMAS INTERNACIONALES DE INFORMACION FINANCIERA - NIIF',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                )
              ],
            )
          ],
        ));
  }
}
