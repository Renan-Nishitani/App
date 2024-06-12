import 'package:flutter/material.dart';
import 'package:appuni2day/login.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');
class Cadastro extends StatelessWidget {
  const Cadastro({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfefe),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/login.png', // Substitua pelo caminho da sua imagem
                width: double.infinity,
                height: 300.0,
              ),
                color: Color(0xff172a3a),
            ),

            SizedBox(height: 70.0),
            Text(
              'Cadastro',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff172a3a),
              ),
            ),

             SizedBox(height: 60.0),
            // Caixa de texto para o usuário
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Inserir usuário',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),

            SizedBox(height: 20.0), // Espaçamento entre os campos
            // Caixa de texto para a senha
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Inserir senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirmar senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 60.0), // Espaçamento entre os campos e o botão
            // Botão de login
            ElevatedButton(
              onPressed: () {
              // Lógica de autenticação aqui
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff172a3a),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0, // Tamanho da fonte
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff172a3a),
        padding: const EdgeInsets.all(20.0),
        child: IconButton(
          icon: const Icon(
            home,
            color: Colors.white,
            size: 36.0,
          ),
          onPressed: () {
             Navigator.push(context,
            MaterialPageRoute(builder: (context) => Login()),
            );}
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Cadastro(),
  ));
}