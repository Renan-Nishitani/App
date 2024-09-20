import 'package:appuni2day/main.dart';
import 'package:flutter/material.dart';

// Definindo um ícone constante para a home
const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

// Classe para representar um usuário
class Usuario {
  final String nome;

  const Usuario(this.nome);
}

// Widget de login que é um StatefulWidget
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

// Estado do widget de login
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Container para a imagem de login
              Container(
                child: Image.asset(
                  'assets/img/login.png', // Substitua pelo caminho da sua imagem
                  width: double.infinity,
                  height: 300.0,
                ),
                color: const Color(0xff172a3a),
              ),
              const SizedBox(height: 90.0),
              // Texto de título "Login"
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff172a3a),
                ),
              ),
              const SizedBox(height: 60.0),
              // Campo de texto para o nome de usuário
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
              const SizedBox(height: 20.0), // Espaçamento entre os campos
              // Campo de texto para a senha
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
              const SizedBox(height: 60.0), // Espaçamento entre os campos e o botão
              // Botão de login
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
                    fontSize: 22.0, // Tamanho da fonte
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Barra de navegação inferior com botão de home
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
