import 'package:appuni2day/main.dart';
import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Usuario {
  final String nome;

  const Usuario(this.nome);
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String nomeusu = "";
  @override
  void initState() {
    super.initState();
  }

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
                'assets/login.png', // Replace with your image path
                width: double.infinity,
                height: 300.0,
              ),
              color: const Color(0xff172a3a),
            ),
            const SizedBox(height: 90.0),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff172a3a),
              ),
            ),
            const SizedBox(height: 60.0),
            // TextField for username
            TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  labelText: 'Inserir usuário',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  nomeusu = (value);
                }),
            const SizedBox(height: 20.0), // Spacing between fields
            // TextField for password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: const Icon(Icons.lock),
                labelText: 'Inserir senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 60.0), // Spacing between fields and button
            // Login button
            ElevatedButton(
              onPressed: () {
                Usuario usu = Usuario(nomeusu);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainApp(),
                        settings: RouteSettings(arguments: usu)));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff172a3a),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0, // Font size
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
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}
