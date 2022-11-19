import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavBarButton extends HookConsumerWidget {
  final VoidCallback onTap;
  final String text;

  const NavBarButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = useState<Color>(Color(0xFF414141));
    final colorBorder = useState(Color(0x00000000));

    return MouseRegion(
      onEnter: (value) {
        textColor.value = Color(0xFF0000ff);
        colorBorder.value = Color(0xFF0000ff);
      },
      onExit: (value) {
        textColor.value = Color(0xFF414141);
        colorBorder.value = Color(0x00000000);
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          hoverColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: colorBorder.value,
                  width: 2.0,
                ),
              ),
            ),
            height: 50,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: textColor.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
