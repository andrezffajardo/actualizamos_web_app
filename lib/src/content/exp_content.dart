import 'package:flutter/material.dart';

class ExpContent extends StatelessWidget {
  const ExpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 800,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/img-asesoria2.png',
                    height: 600,
                    width: 600,
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: SizedBox.shrink(),
            // ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CRECIENDO CON NUESTROS CLIENTES',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF414141),
                        ),
                      ),
                      Text(
                        'Más de 20 años de experiencia',
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
                  SizedBox(
                    height: 100,
                    width: 350,
                    child: Text(
                      'Conocemos muy bien las necesidades de las compañías del sector real, las instituciones publicas, las organizaciones sin fines de lucro y los pequeños negocios con rápido crecimiento.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF414141),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFced842),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        children: const <Widget>[
                          Text(
                            'CONTACTENOS',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Expanded(child: SizedBox.shrink()),
          ],
        ));
  }
}
