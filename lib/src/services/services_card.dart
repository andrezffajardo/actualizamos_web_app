import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ServicesCard extends HookConsumerWidget {
  final String text;
  final String image;

  const ServicesCard({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardElevation = useState(5.0);

    return MouseRegion(
      onEnter: (value) {
        cardElevation.value = 20.0;
      },
      onExit: (value) {
        cardElevation.value = 5.0;
      },
      child: Card(
        margin: EdgeInsets.all(20.0),
        elevation: cardElevation.value,
        child: Container(
          height: 400,
          width: 350,
          //width: double.infinity,
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(15.0),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),

          child: Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 300,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF0000ff),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
