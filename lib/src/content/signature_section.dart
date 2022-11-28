import 'package:flutter/material.dart';

class SignatureSection extends StatelessWidget {
  const SignatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Made with Flutter',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF414141),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      FlutterLogo(
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Developed by Andres Fajardo',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF414141),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
