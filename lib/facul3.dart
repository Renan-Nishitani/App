import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul3 extends StatelessWidget { // UNESP
  const Facul3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0572ae),
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
                      'UNESP',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0572ae),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'A Universidade Estadual Paulista (UNESP) é uma das principais instituições de ensino superior do Brasil, destacando-se pela sua extensa rede de câmpus e pela diversidade de cursos que oferece. Fundada em 1976 com o objetivo de descentralizar a educação superior no estado de São Paulo, a UNESP possui mais de 30 câmpus espalhados por diversas cidades, o que a torna acessível a diferentes regiões do estado. A universidade oferece uma ampla gama de cursos de graduação e pós-graduação em áreas que vão desde ciências exatas e biológicas até humanas e sociais. Com uma história marcada pela expansão contínua e pela qualidade acadêmica, a UNESP é reconhecida tanto no cenário nacional quanto internacional.',
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
                              'assets/img/unesp.jpg',
                            ),
                          ),
                        ),
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(left: 55.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/img/campus4.jpg',
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
                              const url = 'https://www2.unesp.br/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff0572ae), // Cor de fundo
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
                              const url = 'https://www.bing.com/maps?osid=9cd6c6fe-8595-4fc4-b4a5-880e42c94c28&cp=-23.568466~-46.662011&lvl=14.5&pi=0&v=2&sV=2&form=S00027';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff0572ae), // Cor de fundo
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
                              // Espaço pra ação do botão
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff0572ae), // Cor de fundo
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
        color: const Color(0xff0572ae), // Cor igual a da AppBar
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