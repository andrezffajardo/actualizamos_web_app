import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:actualizamos_web_app/src/my_web_page.dart';
import 'package:actualizamos_web_app/src/footer/footer_content_button.dart';
import '../widget/responsive_widget.dart';

class FooterContent extends ResponsiveWidget {
  const FooterContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopFooterContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileFooterContent();
  }
}

class DesktopFooterContent extends HookConsumerWidget {
  const DesktopFooterContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    return Container(
      color: Colors.grey[200],
      height: 400,
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 60),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/logo.png',
                  height: 120.0,
                ),
                Row(children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: FaIcon(FontAwesomeIcons.facebookF),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.grey.shade500),
                      shape: const MaterialStatePropertyAll(CircleBorder()),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(15.0)),
                      elevation: const MaterialStatePropertyAll(5.0),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return const Color(0xFFced842);
                          } //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: FaIcon(FontAwesomeIcons.instagram),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.grey.shade500),
                      shape: const MaterialStatePropertyAll(CircleBorder()),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(15.0)),
                      elevation: const MaterialStatePropertyAll(5.0),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return const Color(0xFFced842);
                          } //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: FaIcon(FontAwesomeIcons.twitter),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.grey.shade500),
                      shape: const MaterialStatePropertyAll(CircleBorder()),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(15.0)),
                      elevation: const MaterialStatePropertyAll(5.0),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return const Color(0xFFced842);
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Navega',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0000ff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Stack(
                  children: const [
                    SizedBox(
                      height: 10,
                      width: 200,
                      child: Divider(
                        height: 15,
                        thickness: 1,
                        color: Color(0xFFced842),
                        endIndent: 100,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 100,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF0000ff),
                        endIndent: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                FooterContentButton(
                    onTap: () =>
                        ref.read(currentPageProvider.state).state = sliderKey,
                    text: 'Home'),
                FooterContentButton(
                    onTap: () =>
                        ref.read(currentPageProvider.state).state = aboutKey,
                    text: 'Nosotros'),
                FooterContentButton(
                    onTap: () =>
                        ref.read(currentPageProvider.state).state = servicesKey,
                    text: 'Servicios'),
                FooterContentButton(
                    onTap: () =>
                        ref.read(currentPageProvider.state).state = contactKey,
                    text: 'Contáctenos'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Servicios',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0000ff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Stack(
                  children: const [
                    SizedBox(
                      height: 10,
                      width: 200,
                      child: Divider(
                        height: 15,
                        thickness: 1,
                        color: Color(0xFFced842),
                        endIndent: 100,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 100,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF0000ff),
                        endIndent: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.anglesRight,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Consultoría Gerencial',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.anglesRight,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Auditoría y Revisoría Fiscal',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.anglesRight,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Outsourcing Contable',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.anglesRight,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Impuestos',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.anglesRight,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'NIIF',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Contacto',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0000ff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Stack(
                  children: const [
                    SizedBox(
                      height: 10,
                      width: 200,
                      child: Divider(
                        height: 15,
                        thickness: 1,
                        color: Color(0xFFced842),
                        endIndent: 100,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 100,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF0000ff),
                        endIndent: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 60,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.locationDot,
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 220,
                        height: 250,
                        child: Text(
                          'Av. 2 Nte. # 7N-55 Of. 319,\nCali, Valle del Cauca,\nColombia.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF414141),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.phone,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '+57 2 653 48 68',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: const [
                      Icon(
                        color: Color(0xFF0000ff),
                        size: 18.0,
                        FontAwesomeIcons.envelope,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'info@actualizamos.com.co',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF414141),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileFooterContent extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/logo.png', height: 80.0),
            const SizedBox(height: 25),
            const Text(
              'Navega',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF0000ff),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            FooterContentButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = sliderKey,
                text: 'Home'),
            FooterContentButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = aboutKey,
                text: 'Nosotros'),
            FooterContentButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = servicesKey,
                text: 'Servicios'),
            FooterContentButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = contactKey,
                text: 'Contáctenos'),
            const SizedBox(height: 25),
            const Text(
              'Servicios',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF0000ff),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.anglesRight,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Consultoría Gerencial',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.anglesRight,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Auditoría y Revisoría Fiscal',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.anglesRight,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Outsourcing Contable',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.anglesRight,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Impuestos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.anglesRight,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'NIIF',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Contacto',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF0000ff),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.locationDot,
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 220,
                    height: 250,
                    child: Text(
                      'Av. 2 Nte. # 7N-55 Of. 319,\nCali, Valle del Cauca,\nColombia.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF414141),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.phone,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+57 2 653 48 68',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: const [
                  Icon(
                    color: Color(0xFF0000ff),
                    size: 18.0,
                    FontAwesomeIcons.envelope,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'info@actualizamos.com.co',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414141),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.facebookF),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.grey.shade500),
                  shape: const MaterialStatePropertyAll(CircleBorder()),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(13.0)),
                  elevation: const MaterialStatePropertyAll(5.0),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return const Color(0xFFced842);
                      } //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.instagram),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.grey.shade500),
                  shape: const MaterialStatePropertyAll(CircleBorder()),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(13.0)),
                  elevation: const MaterialStatePropertyAll(5.0),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return const Color(0xFFced842);
                      } //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.twitter),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.grey.shade500),
                  shape: const MaterialStatePropertyAll(CircleBorder()),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(13.0)),
                  elevation: const MaterialStatePropertyAll(5.0),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return const Color(0xFFced842);
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
