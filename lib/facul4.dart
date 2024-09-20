import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para utilizar abertura de link do botão

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul4 extends StatelessWidget {
  const Facul4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe3032d),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xfffcfefe),
      body: SingleChildScrollView( // Adicionando SingleChildScrollView
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
                      'MACKENZIE',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe3032d),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'A Universidade Presbiteriana Mackenzie, ou Mackenzie, é uma renomada instituição de ensino superior privada localizada em São Paulo, fundada em 1870 por missionários presbiterianos. Com uma longa tradição de excelência acadêmica, a Mackenzie é conhecida por sua formação de qualidade e seu compromisso com valores educacionais e éticos. A universidade oferece uma ampla gama de cursos de graduação e pós-graduação, destacando-se em áreas como engenharia, arquitetura, direito, administração e comunicação. A Mackenzie é reconhecida por seu envolvimento em pesquisa e projetos de extensão que visam o desenvolvimento social e tecnológico.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(right: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/img/mackenzie.jpg',
                            ),
                          ),
                        ),
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(left: 55.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/img/campus3.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    // Adicionando os botões aqui
                    Column(
                      children: [
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.mackenzie.br/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffe3032d), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 23.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Site da Universidade'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.bing.com/maps?osid=3655e7f1-9e5b-45ee-9338-2ae6028b6476&cp=-23.548048~-46.662254&lvl=14.5&pi=0&v=2&sV=2&form=S00027';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffe3032d), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 23.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Localização'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura fixa dos botões
                          child: ElevatedButton(
                            onPressed: () {
                              // Ação do terceiro botão
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffe3032d), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold // Tamanho da fonte
                              ),
                            ),
                            child: const Text('Cursos'),
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
        color: const Color(0xffe3032d), // Cor igual a da AppBar
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