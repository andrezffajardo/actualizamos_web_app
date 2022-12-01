import 'package:flutter/material.dart';

import '../widget/contact_button.dart';
import '../widget/responsive_widget.dart';

class InterSection extends ResponsiveWidget {
  const InterSection({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopInterSection();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileInterSection();
  }
}

class DesktopInterSection extends StatelessWidget {
  const DesktopInterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 300,
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
                    'TENEMOS RÁPIDAS SOLUCIONES',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF414141),
                    ),
                  ),
                  Text(
                    '¿Necesita que le asesoremos ya?',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xFF0000ff),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const ContactButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileInterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 35, 24, 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'TENEMOS RÁPIDAS SOLUCIONES',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF414141),
              ),
            ),
            Align(
              child: Text(
                '¿Necesita que le\n asesoremos ya?',
                style: TextStyle(
                  fontSize: 38,
                  color: Color(0xFF0000ff),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            ContactButton(),
          ],
        ),
      ),
    );
  }
}
