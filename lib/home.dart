import 'package:flutter/material.dart';
import 'package:appuni2day/main.dart';
import 'package:appuni2day/login.dart';
import 'package:appuni2day/cadastro.dart';


const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');
class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff172a3a),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/login.png', // Substitua pelo caminho da sua imagem
                width: double.infinity,
                height: 450,
              ),
                color: Color(0xff172a3a),
            ),

            Text(
              'Seja bem-vindo(a)',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            const SizedBox(height: 30.0), // Espaçamento entre os campos e o botão
            ElevatedButton(
                onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro()),
              );
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(),
                ),
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Color(0xff172a3a),
                    fontSize: 30.0, // Tamanho da fonte
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xff172a3a),
                    fontSize: 30.0, 
                    // Tamanho da fonte
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                  context,
                    MaterialPageRoute(
                      builder: (context) => MainApp(),
                    ),
                  );
                },
                child: Image.asset(
                'assets/prosseguir.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}