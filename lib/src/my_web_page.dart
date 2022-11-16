import 'package:flutter/material.dart';

class MyWebPage extends StatelessWidget {
  const MyWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              //Navigation Bar
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //Home
                      //Contain
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
