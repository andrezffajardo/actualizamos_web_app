import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

class ClientsSection extends ResponsiveWidget {
  const ClientsSection({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopClientsSection();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileClientsSection();
  }
}

class DesktopClientsSection extends StatelessWidget {
  const DesktopClientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'ALGUNOS DE NUESTROS CLIENTES',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF414141),
                    ),
                  ),
                  Text(
                    'Ellos creyeron en nosotros',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xFF0000ff),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Image.asset(
                    'images/LogoSJ.jpg',
                    height: 100.0,
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Image.asset(
                    'images/Logo-creditos-suministros.jpg',
                    height: 90.0,
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF29b5b0),
                        width: 2,
                      ),
                    ),
                    child: Image.asset(
                      'images/Logo-Edward-Gonzalez.png',
                      height: 80.0,
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Image.asset(
                    'images/Logo_Fund_Activa.png',
                    height: 80.0,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MobileClientsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'ALGUNOS DE NUESTROS CLIENTES',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF414141),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Ellos creyeron\n en nosotros',
                style: TextStyle(
                  fontSize: 38,
                  color: Color(0xFF0000ff),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24.0),
                Container(
                  padding: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF29b5b0),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Logo-Edward-Gonzalez.png',
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 40.0),
                Image.asset(
                  'images/Logo_Fund_Activa.png',
                  height: 30.0,
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/LogoSJ.jpg',
                  height: 50.0,
                ),
                const SizedBox(width: 50.0),
                Image.asset(
                  'images/Logo-creditos-suministros.jpg',
                  height: 45.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
