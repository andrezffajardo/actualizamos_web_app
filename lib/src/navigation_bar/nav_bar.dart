import 'package:actualizamos_web_app/src/navigation_bar/nav_bar_button.dart';
import 'package:flutter/material.dart';

import '../widget/responsive_widget.dart';

class NavBar extends ResponsiveWidget {
  const NavBar({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MovileNavBar();
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              'images/logo.png',
              height: 120.0,
            ),
            SizedBox(
              width: 50.0,
            ),
            Expanded(child: Container()),
            NavBarButton(onTap: () {}, text: 'Home'),
            NavBarButton(onTap: () {}, text: 'Nosotros'),
            NavBarButton(onTap: () {}, text: 'Servicios'),
            NavBarButton(onTap: () {}, text: 'Contáctenos'),
            Expanded(child: Container()),
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
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      color: Color(0xFF0000ff),
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "+57 2 653 48 68",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0000ff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ElevatedButton.icon(
            //   onPressed: () {},
            //   label: Text('+57 2 653 48 68'),
            //   icon: Icon(Icons.call),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xFFced842),
            //     textStyle: TextStyle(color: Colors.red),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class MovileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
