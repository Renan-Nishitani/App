import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para utilizar abertura de link do botão

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class PucCursos extends StatelessWidget {
  const PucCursos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff05376b),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xfffcfefe),
      body: SingleChildScrollView( // Adicionando uma barra de rolamento
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.zero, // Removendo o espaçamento interno
                alignment: Alignment.topCenter,
                width: 460.0,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Cursos da Puc',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3f78b6),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    
                    //Botões
                    Column(
                      children: [
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/direito#curso'; //Link
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Direito'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.puc-campinas.edu.br/graduacao/arquitetura-e-urbanismo/ ';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Arquitetura e Urbanismo'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/administracao#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Administração'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/pos-graduacao/mestrado-e-doutorado/economia#breve_apresentacao';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Economia'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/relacoes-internacionais#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize:20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Relações Internacionais'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/psicologia#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Psicologia'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/medicina#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Medicina'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/comunicacao-e-multimeios#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Comunicação'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/engenharia-civil#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Engenharia Civil'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                          child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.pucsp.br/graduacao/ciencia-da-computacao#curso';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Ciências da Computação'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff05376b), // Cor igual a da AppBar
        padding: const EdgeInsets.all(20.0),
        child: IconButton(
          icon: const Icon(
            home,
            color: Colors.white,
            size: 36.0, // Tamanho do ìcone
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}