import 'package:flutter/material.dart';
import 'package:actualizamos_web_app/src/my_web_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactButton extends HookConsumerWidget {
  const ContactButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => ref.read(currentPageProvider.state).state = contactKey,
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
          children: const <Widget>[
            Text(
              'CONTACTENOS',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
