import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        //alignment: AlignmentDirectional.center,
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('images/fondo-equipo.jpg'),
              fit: BoxFit.fill,
            ),
          ),

          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('images/fondo-equipo.jpg'),
          //         fit: BoxFit.cover),
          //   ),
          // ),

          // Container(
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('images/fondo-equipo.jpg'),
          //         fit: BoxFit.cover),
          //   ),
          // ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox.shrink(),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            //fontWeight: FontWeight.bold,
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
                      ],
                    ),
                    Text(
                      'Servimos a compañías del sector real, instituciones públicas, organizaciones sin fines de lucro y negocios pequeños de rápido crecimiento',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF414141),
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
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
              Expanded(child: SizedBox.shrink()),
              Image.asset(
                'images/img-equipo.png',
                height: 400,
                width: 400,
              ),
              Expanded(child: SizedBox.shrink()),
            ],
          )
        ],
      ),
    );
  }
}
