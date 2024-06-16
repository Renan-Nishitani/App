import 'package:flutter/material.dart';
import 'package:appuni2day/facul1.dart';
import 'package:appuni2day/facul2.dart';
import 'package:appuni2day/login.dart';
import 'package:appuni2day/facul3.dart';
import 'package:appuni2day/facul4.dart';
import 'package:appuni2day/cadastro.dart';
import 'package:appuni2day/home.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: Home(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Usuario?;

    // Verifica se o usuário é nulo e define um nome padrão
    final nomeUsuario = usuario?.nome ?? 'Usuário Desconhecido';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff172a3a), // Cor de fundo da AppBar
        ),
        backgroundColor: const Color(0xfffcfefe), // Cor de fundo do body
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 70.0),
            Center(
              child: Column(
                children: [
                  Text(
                    'Você se logou como: $nomeUsuario',
                    style: const TextStyle(
                      fontSize: 24.0, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Negrito
                      color: Color(0xff172a3a), // Cor do texto
                    ),
                  ),
                  SizedBox(height: 20.0),
                  const Text(
                    '4 Principais',
                    style: TextStyle(
                      fontSize: 40.0, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black, // Cor do texto
                    ),
                  ),
                  SizedBox(height: 10.0), // Adicionando uma quebra de linha
                  Text(
                    'Universidades',
                    style: TextStyle(
                      fontSize: 40.0, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black, // Cor do texto
                    ),
                  ),
                  SizedBox(height: 10.0), // Adicionando uma quebra de linha
                  Text(
                    'De São Paulo',
                    style: TextStyle(
                      fontSize: 40.0, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.black, // Cor do texto
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    100.0), // Adicionando espaçamento entre o texto e os botões
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Facul1(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/usp.png',
                          width: 200,
                          height: 100,
                        ),
                      ),
                      SizedBox(
                          width:
                              20), // Adicionando espaçamento entre as imagens
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Facul2(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/pucsp.png', // Caminho para a segunda imagem
                          width: 200, // Largura da imagem
                          height: 100, // Altura da imagem
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          100), // Adicionando espaçamento entre as linhas de imagens
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Facul3(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/unesp.jpg', // Caminho para a terceira imagem
                          width: 200, // Largura da imagem
                          height: 100, // Altura da imagem
                        ),
                      ),
                      SizedBox(
                          width:
                              20), // Adicionando espaçamento entre as imagens
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Facul4(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/mackenzie.jpg', // Caminho para a quarta imagem
                          width: 200, // Largura da imagem
                          height: 100, // Altura da imagem
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        // Texto fora da AppBar
        bottomNavigationBar: Container(
          color: const Color(0xff172a3a), // Cor igual a da AppBar
          padding: const EdgeInsets.all(20.0),
          child: IconButton(
            icon: const Icon(
              home,
              color: Colors.white,
              size: 36.0, // Tamanho do ícone
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
