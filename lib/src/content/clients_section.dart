import 'package:flutter/material.dart';

class ClientsSection extends StatelessWidget {
  const ClientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ALGUNOS DE NUESTROS CLIENTES',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF414141),
                    ),
                  ),
                  Text(
                    'Ellos creyeron en nosotros',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color(0xFF0000ff),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Image.asset(
                    'images/LogoSJ.jpg',
                    height: 100.0,
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Image.asset(
                    'images/Logo-creditos-suministros.jpg',
                    height: 90.0,
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF29b5b0),
                        width: 2,
                      ),
                    ),
                    child: Image.asset(
                      'images/Logo-Edward-Gonzalez.png',
                      height: 80.0,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Image.asset(
                    'images/Logo_Fund_Activa.png',
                    height: 80.0,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}