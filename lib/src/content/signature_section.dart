import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

class SignatureSection extends ResponsiveWidget {
  const SignatureSection({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopSignatureSection();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileSignatureSection();
  }
}

class DesktopSignatureSection extends StatelessWidget {
  const DesktopSignatureSection({super.key});

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
                    children: const [
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

class MobileSignatureSection extends StatelessWidget {
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
                    children: const [
                      Text(
                        'Made with Flutter',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF414141),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      FlutterLogo(
                        size: 22,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Developed by Andres Fajardo',
                        style: TextStyle(
                          fontSize: 14,
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
