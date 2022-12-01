import 'package:flutter/material.dart';
import '../widget/contact_button.dart';
import '../widget/responsive_widget.dart';

class ExpContent extends ResponsiveWidget {
  const ExpContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopExpContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileExpContent();
  }
}

class DesktopExpContent extends StatelessWidget {
  const DesktopExpContent({super.key});

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
                children: [
                  Image.asset(
                    'images/img-asesoria2.png',
                    height: 600,
                    width: 600,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CRECIENDO CON NUESTROS CLIENTES',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF414141),
                        ),
                      ),
                      const Text(
                        'Más de 20 años de experiencia',
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0xFF0000ff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Stack(
                        children: const [
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
                  const SizedBox(height: 50),
                  const SizedBox(
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
                  const SizedBox(height: 50),
                  const ContactButton(),
                ],
              ),
            ),
            //Expanded(child: SizedBox.shrink()),
          ],
        ));
  }
}

class MobileExpContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/img-asesoria2.png',
              height: 300,
            ),
            const SizedBox(height: 25),
            const Text(
              'CRECIENDO CON NUESTROS CLIENTES',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF414141),
              ),
            ),
            const Text(
              'Más de 20 años\n de experiencia',
              style: TextStyle(
                fontSize: 38,
                color: Color(0xFF0000ff),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(
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
            const SizedBox(height: 25),
            const ContactButton(),
          ],
        ),
      ),
    );
  }
}
