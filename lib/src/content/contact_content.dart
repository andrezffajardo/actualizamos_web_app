import 'package:flutter/material.dart';

class ContactContent extends StatefulWidget {
  const ContactContent({super.key});

  @override
  State<ContactContent> createState() => _ContactContentState();
}

class _ContactContentState extends State<ContactContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      //color: Colors.grey,
      height: 800,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('images/formulario-imagen.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Row(
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
                          Text(
                            'SI DESEA MÁS INFORMACIÓN',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF414141),
                            ),
                          ),
                          Text(
                            'Contáctenos',
                            style: TextStyle(
                              fontSize: 50,
                              color: Color(0xFF0000ff),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Stack(
                            children: [
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
                      SizedBox(height: 50),
                      Text(
                        'Queremos Atenderle y resolver todas sus dudas, con respecto a su institución, empresa o negocio.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF414141),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Nombre',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 1)),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'E-Mail',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 1)),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            maxLines: 7,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Mensaje',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 1)),
                            ),
                          ),
                          SizedBox(height: 50),
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
                  children: [],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
