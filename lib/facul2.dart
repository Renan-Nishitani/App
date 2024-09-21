import 'package:appuni2day/pucCursos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para utilizar abertura de link do botão

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul2 extends StatelessWidget {
  const Facul2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff05376b),
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
                      'PUC',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3f78b6),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'A Pontifícia Universidade Católica, mais conhecida como PUC, é uma instituição de ensino superior reconhecida pela sua excelência acadêmica e compromisso com os valores humanos e éticos. Com campos espalhados por várias cidades brasileiras, a PUC se destaca pela qualidade de seu corpo docente, composto por professores renomados e pesquisadores de destaque em seus campos de atuação. A PUC também valoriza a formação integral dos seus estudantes, buscando não apenas o desenvolvimento acadêmico, mas também o crescimento pessoal e o engajamento social. Por meio de programas de extensão universitária, projetos comunitários e atividades extracurriculares, a universidade incentiva o protagonismo dos alunos e sua contribuição para a sociedade.',
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
                              'assets/img/puc.png',
                            ),
                          ),
                        ),
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(left: 55.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/img/campus2.jpg',
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
                              const url = 'https://www.pucsp.br/home';
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
                              const url = 'https://www.bing.com/maps?osid=cb6ebf0b-84b6-4b28-b27d-90725caca33c&cp=-23.538144~-46.683193&lvl=14.5&pi=0&v=2&sV=2&form=S00027';
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PucCursos(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05376b), // Cor de fundo
                              foregroundColor: Colors.white, // Cor do texto
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0, // Aumentando a altura
                                horizontal: 30.0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 23.0,
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