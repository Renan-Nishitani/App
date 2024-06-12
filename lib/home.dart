import 'package:flutter/material.dart';


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

            SizedBox(height: 10.0),
            Text(
              'Seja bem-vindo(a)',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),


            
            const SizedBox(height: 30.0), // Espaçamento entre os campos e o botão
            // Botão de login
            ElevatedButton(
              onPressed: () {
              // Lógica de autenticação aqui
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
              // Lógica de autenticação aqui
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
          ],
        ),
      ),
    );
  }
}

