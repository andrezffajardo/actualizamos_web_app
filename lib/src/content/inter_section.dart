import 'package:flutter/material.dart';

import '../widget/contact_button.dart';

class InterSection extends StatelessWidget {
  const InterSection({super.key});

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
                children: [
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
              SizedBox(height: 50),
              ContactButton(),
            ],
          ),
        ],
      ),
    );
  }
}
