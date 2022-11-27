import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FooterContentButton extends HookConsumerWidget {
  final VoidCallback onTap;
  final String text;

  const FooterContentButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = useState<Color>(Color(0xFF414141));
    final iconColor = useState(Color(0xFF0000ff));

    return MouseRegion(
      onEnter: (value) {
        textColor.value = Color(0xFF0000ff);
        iconColor.value = Color(0xFFced842);
      },
      onExit: (value) {
        textColor.value = Color(0xFF414141);
        iconColor.value = Color(0xFF0000ff);
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          highlightColor: Colors.grey.shade200,
          hoverColor: Colors.transparent,
          child: Container(
            height: 50,
            child: Row(
              children: [
                Icon(
                  color: iconColor.value,
                  size: 18.0,
                  FontAwesomeIcons.anglesRight,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColor.value,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
