import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul3 extends StatelessWidget {
  const Facul3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0572ae), // Cor de fundo da AppBar
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
                      'UNESP',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0572ae),
                      ),
                    ),
                    const SizedBox(
                        height: 20), // Adicionando um espaço entre os textos
                    const Text(
                      'A Universidade Estadual Paulista (UNESP) é uma das principais instituições de ensino superior do Brasil, destacando-se pela sua extensa rede de câmpus e pela diversidade de cursos que oferece. Fundada em 1976 com o objetivo de descentralizar a educação superior no estado de São Paulo, a UNESP possui mais de 30 câmpus espalhados por diversas cidades, o que a torna acessível a diferentes regiões do estado. A universidade oferece uma ampla gama de cursos de graduação e pós-graduação em áreas que vão desde ciências exatas e biológicas até humanas e sociais. Com uma história marcada pela expansão contínua e pela qualidade acadêmica, a UNESP é reconhecida tanto no cenário nacional quanto internacional.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 200.0,
                          margin: const EdgeInsets.only(top: 70.0, left: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20.0), // Borda arredondada
                            child: Image.asset(
                              'assets/img/unesp.jpg',
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
        color: const Color(0xff0572ae), // Cor igual a da AppBar
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
