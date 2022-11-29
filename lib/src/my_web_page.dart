import 'package:actualizamos_web_app/src/content/about_content.dart';
import 'package:actualizamos_web_app/src/content/contact_content.dart';
import 'package:actualizamos_web_app/src/content/home_content.dart';
import 'package:actualizamos_web_app/src/content/services_content.dart';
import 'package:actualizamos_web_app/src/navigation_bar/nav_bar.dart';
import 'package:actualizamos_web_app/src/widget/carousel.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'content/clients_section.dart';
import 'content/exp_content.dart';
import 'content/signature_section.dart';
import 'footer/footer_content.dart';
import 'content/inter_section.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final sliderKey = GlobalKey();
final aboutKey = GlobalKey();
final servicesKey = GlobalKey();
final contactKey = GlobalKey();

final currentPageProvider = StateProvider<GlobalKey>((_) => sliderKey);
final scrolledProvider = StateProvider<bool>((_) => false);

class MyWebPage extends HookConsumerWidget {
  //const MyWebPage({super.key});

  // void onScroll(ScrollController controller, WidgetRef ref){
  // final isScrolled = ref.read(scrolledProvider).state;
  // if(controller.position.pixels > 5 && !isScrolled) {
  //   ref.read(scrolledProvider).state = true;
  // }else if (controller.position.pixels <= 5 && isScrolled) {
  //   ref.read(scrolledProvider).state= false;
  // }
  // }

  void onScroll(ScrollController controller, WidgetRef ref) {
    final isScrolled = ref.read(scrolledProvider);

    if (controller.position.pixels > 5 && !isScrolled) {
      ref.read(scrolledProvider.state).state = true;
    } else if (controller.position.pixels <= 5 && isScrolled) {
      ref.read(scrolledProvider.state).state = false;
    }
  }

  void scrollTo(GlobalKey key) => Scrollable.ensureVisible(key.currentContext!,
      duration: Duration(seconds: 2));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useScrollController();

    useEffect(() {
      _controller.addListener(() => onScroll(_controller, ref));
      return _controller.dispose;
    }, [_controller]);

    double width = MediaQuery.of(context).size.width;
    double maxWidth = width > 1200 ? 1200 : width;

    ref
        .watch(currentPageProvider.state)
        .addListener(scrollTo, fireImmediately: false);

    return Scaffold(
      body: Center(
        child: Container(
          width: maxWidth,
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Carousel(key: sliderKey),
                      AboutContent(key: aboutKey),
                      ServicesContent(key: servicesKey),
                      InterSection(),
                      ExpContent(),
                      ClientsSection(),
                      ContactContent(key: contactKey),
                      FooterContent(),
                      SignatureSection(), //Contain
                      //Contact
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Carousel extends StatelessWidget {
//   const Carousel({
//     Key? key,
//     required this.imageList,
//   }) : super(key: key);

//   List imageList = [
//     [
//       'images/asesor-oficina.jpg',
//       'OUTSOURCING CONTABLE',
//     ],
//     [
//       'images/asesora-oficina.jpg',
//       'AUDITORIA Y REVISORIA FISCAL',
//     ],
//     [
//       'images/asesora2-oficina.jpg',
//       'CONSULTORIA GERENCIAL',
//     ],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       key: sliderKey,
//       options: CarouselOptions(
//         height: 600.0,
//         autoPlay: true,
//         //enlargeCenterPage: true,
//         viewportFraction: 0.99,
//       ),
//       items: imageList.map((i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Stack(
//                 children: [
//                   Image.asset(
//                     i[0],
//                     fit: BoxFit.cover,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Column(
//                         mainAxisAlignment:
//                             MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                                 vertical: 5.0,
//                                 horizontal: 20.0),
//                             child: Text(
//                               i[1],
//                               style: TextStyle(
//                                 color: Color(0xFF0000ff),
//                                 fontSize: 40.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           ContactButton(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }
