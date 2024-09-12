import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul4 extends StatelessWidget {
  const Facul4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe3032d),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xfffcfefe),
      body: Container(
        alignment: Alignment.center, // Alinha o conteúdo ao centro
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.zero, // Removendo o espaçamento interno
                alignment: Alignment.topCenter,
                width: 460.0,

                // Alinha o conteúdo ao centro
                child: Column(
                  children: [
                    const SizedBox(
                        height: 40),
                    const Text(
                      'MACKENZIE',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe3032d),
                      ),
                    ),
                    const SizedBox(
                        height: 20), // Adicionando um espaço entre os textos
                    const Text(
                      'A Universidade Presbiteriana Mackenzie, ou Mackenzie, é uma renomada instituição de ensino superior privada localizada em São Paulo, fundada em 1870 por missionários presbiterianos. Com uma longa tradição de excelência acadêmica, a Mackenzie é conhecida por sua formação de qualidade e seu compromisso com valores educacionais e éticos. A universidade oferece uma ampla gama de cursos de graduação e pós-graduação, destacando-se em áreas como engenharia, arquitetura, direito, administração e comunicação. A Mackenzie é reconhecida por seu envolvimento em pesquisa e projetos de extensão que visam o desenvolvimento social e tecnológico.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(top: 70.0, left: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20.0), // Borda arredondada
                            child: Image.asset(
                              'assets/img/mackenzie.jpg',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ), // Espaço entre o Container e o Texto
                      ],
                    ),
                    Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xffe3032d), // Cor igual a da AppBar
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
    );
  }
}
