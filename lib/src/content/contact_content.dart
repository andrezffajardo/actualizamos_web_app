import 'package:flutter/material.dart';
import '../widget/responsive_widget.dart';

class ContactContent extends ResponsiveWidget {
  const ContactContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopContactContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileContactContent();
  }
}

class DesktopContactContent extends StatefulWidget {
  const DesktopContactContent({super.key});

  @override
  State<DesktopContactContent> createState() => _DesktopContactContentState();
}

class _DesktopContactContentState extends State<DesktopContactContent> {
  final nameHolder = TextEditingController();
  final emailHolder = TextEditingController();
  final messageHolder = TextEditingController();

  clearTextInput() {
    nameHolder.clear();
    emailHolder.clear();
    messageHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      height: 800,
      child: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('images/formulario-imagen.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    //color: Colors.grey.shade300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'SI DESEA MÁS INFORMACIÓN',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF414141),
                              ),
                            ),
                            const Text(
                              'Contáctenos',
                              style: TextStyle(
                                fontSize: 50,
                                color: Color(0xFF0000ff),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Stack(
                              children: const [
                                Divider(
                                  height: 15,
                                  thickness: 1,
                                  color: Color(0xFFced842),
                                  endIndent: 270,
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Color(0xFF0000ff),
                                  endIndent: 475,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          'Queremos Atenderle y resolver todas sus dudas, con respecto a su institución, empresa o negocio.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF414141),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            TextField(
                              controller: nameHolder,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'Nombre',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF0000ff),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: emailHolder,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'E-Mail',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF0000ff),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: messageHolder,
                              maxLines: 7,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'Mensaje',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF0000ff),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: clearTextInput,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFced842),
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
                                      'ENVIAR',
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
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileContactContent extends StatefulWidget {
  @override
  State<MobileContactContent> createState() => _MobileContactContentState();
}

class _MobileContactContentState extends State<MobileContactContent> {
  final nameHolder = TextEditingController();
  final emailHolder = TextEditingController();
  final messageHolder = TextEditingController();

  clearTextInput() {
    nameHolder.clear();
    emailHolder.clear();
    messageHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Stack(
        children: [
          const Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image(
                image: AssetImage('images/formulario-imagen.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'SI DESEA MÁS INFORMACIÓN',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF414141),
                      ),
                    ),
                    Text(
                      'Contáctenos',
                      style: TextStyle(
                        fontSize: 38,
                        color: Color(0xFF0000ff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  'Queremos Atenderle y resolver todas sus dudas, con respecto a su institución, empresa o negocio.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF414141),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    TextField(
                      controller: nameHolder,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Nombre',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.grey.shade400, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xFF0000ff),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: emailHolder,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'E-Mail',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xFF0000ff),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: messageHolder,
                      maxLines: 5,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Mensaje',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.grey.shade400, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xFF0000ff),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: clearTextInput,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFced842),
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
                              'ENVIAR',
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
