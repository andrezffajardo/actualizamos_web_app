import 'package:actualizamos_web_app/src/my_web_page.dart';
import 'package:actualizamos_web_app/src/navigation_bar/nav_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widget/responsive_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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

class DesktopNavBar extends HookConsumerWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled ? Colors.grey.shade200 : Colors.white;

    return Container(
      color: navBarColor,
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
            NavBarButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = sliderKey,
                text: 'Home'),
            NavBarButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = aboutKey,
                text: 'Nosotros'),
            NavBarButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = servicesKey,
                text: 'Servicios'),
            NavBarButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = clientsKey,
                text: 'Clientes'),
            NavBarButton(
                onTap: () =>
                    ref.read(currentPageProvider.state).state = contactKey,
                text: 'Contáctenos'),
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
          ],
        ),
      ),
    );
  }
}

class MovileNavBar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);

    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled ? Colors.grey.shade200 : Colors.white;

    return Stack(children: [
      AnimatedContainer(
        margin: EdgeInsets.only(top: 100.0),
        curve: Curves.ease,
        duration: Duration(milliseconds: 400),
        height: containerHeight.value,
        child: SingleChildScrollView(
            child: Column(
          children: [
            NavBarButton(
                onTap: () {
                  ref.read(currentPageProvider.state).state = sliderKey;
                  containerHeight.value = 0;
                },
                text: 'Home'),
            NavBarButton(
                onTap: () {
                  ref.read(currentPageProvider.state).state = aboutKey;
                  containerHeight.value = 0;
                },
                text: 'Nosotros'),
            NavBarButton(
                onTap: () {
                  ref.read(currentPageProvider.state).state = servicesKey;
                  containerHeight.value = 0;
                },
                text: 'Servicios'),
            NavBarButton(
                onTap: () {
                  ref.read(currentPageProvider.state).state = clientsKey;
                  containerHeight.value = 0;
                },
                text: 'Clientes'),
            NavBarButton(
                onTap: () {
                  ref.read(currentPageProvider.state).state = contactKey;
                  containerHeight.value = 0;
                },
                text: 'Contáctenos'),
          ],
        )),
      ),
      Container(
        color: navBarColor,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              SizedBox(width: 30.0),
              Image.asset(
                'images/logo.png',
                height: 80.0,
              ),
              SizedBox(width: 30.0),
              Expanded(child: Container()),
              Material(
                child: InkWell(
                  splashColor: Colors.white60,
                  onTap: () {
                    final height = containerHeight.value > 0 ? 0.0 : 240.0;
                    containerHeight.value = height;
                  },
                  child: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    ]);
  }
}
