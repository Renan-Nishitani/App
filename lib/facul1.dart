import 'package:appuni2day/uspCursos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para utilizar abertura de link do botão

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul1 extends StatelessWidget {
  const Facul1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0), // Cor da barra
        foregroundColor: Colors.white, // Cor do ícone de "voltar"
      ),
      backgroundColor: const Color(0xfffcfefe),
      body: SingleChildScrollView( // Adicionando a barra de rolamento
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centralizando
            children: [
              Container(
                padding: EdgeInsets.zero,
                alignment: Alignment.topCenter, //Alinhand no topo
                width: 460.0,
                child: Column(
                  children: [
                    const SizedBox(height: 40), // Espaço entre um elemento e outro
                    const Text(
                      'USP',
                      style: TextStyle( // Customizando o texto
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold, // Deixando o texto em negrito
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Criada em 1934, USP é uma universidade pública, mantida pelo Estado de São Paulo e ligada à Secretaria de Ciência, Tecnologia e Inovação. Sua graduação é formada por 183 cursos, dedicados a todas as áreas do conhecimento, distribuídos em 42 unidades de ensino e pesquisa, com mais de 58 mil alunos. A pós-graduação é composta por 239 programas com cerca de 30 mil matriculados. Atualmente, é responsável por mais de 20% da produção científica brasileira. A USP conta com diversos campi, distribuídos pelas cidades de São Paulo, Bauru, Lorena, Piracicaba, Pirassununga, Ribeirão Preto, Santos, São Carlos, além de unidades de ensino, museus e centros de pesquisa.',
                      textAlign: TextAlign.justify, // Código para justificar o texto
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
                            borderRadius: BorderRadius.circular(20.0), // Arredondamento das bordas
                            child: Image.asset(
                              'assets/img/usp.png',
                            ),
                          ),
                        ),
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(left: 55.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/img/campus1.jpg',
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
                          width: 300, // Largura dos botões
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www5.usp.br/';
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
                                fontSize: 23.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Site da Universidade'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300,
                           child: ElevatedButton(
                            onPressed: () async {
                              const url = 'https://maps.app.goo.gl/L3J5WbzXL8fLYm3r6';
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
                                fontSize: 23.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Localização'),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 300, // Largura dos botões
                           child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UspCursos(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric( // Espaçamento interno simétrico
                                vertical: 20.0,
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 23.0, // Tamanho da fonte
                                fontWeight: FontWeight.bold // 
                              ),
                            ),
                            child: const Text('Cursos'), // Título dentro do botão
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
        color: Color.fromARGB(255, 0, 0, 0),
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
