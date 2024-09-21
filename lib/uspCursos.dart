import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para utilizar abertura de link do botão

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class UspCursos extends StatelessWidget {
  const UspCursos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                      'Cursos da Usp',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
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
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=5&codcur=5042&codhab=0&tipo=N'; //Link
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Medicina'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=2&codcur=2014&codhab=102&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=3&codcur=3082&codhab=0&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Engenharia de Produção'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=3&codcur=3082&codhab=0&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Arquitetura e Urbanismo'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=12&codcur=12012&codhab=4&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Administação'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=22&codcur=22013&codhab=0&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Enfermagem'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=9&codcur=9013&codhab=104&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Farmácia'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=3&codcur=3031&codhab=180&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Engenharia Elétrica'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=3&codcur=3043&codhab=100&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
                            child: const Text('Engenharia Mecânica'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                          child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=3&codcur=3021&codhab=100&tipo=N';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
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
        color: Colors.black, // Cor igual a da AppBar
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