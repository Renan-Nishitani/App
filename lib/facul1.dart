import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul1 extends StatelessWidget {
  const Facul1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                    const Text(
                      'USP',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(
                        height: 10), // Adicionando um espaço entre os textos
                    const Text(
                      'Criada em 1934, USP é uma universidade pública, mantida pelo Estado de São Paulo e ligada à Secretaria de Ciência, Tecnologia e Inovação. Sua graduação é formada por 183 cursos, dedicados a todas as áreas do conhecimento, distribuídos em 42 unidades de ensino e pesquisa, com mais de 58 mil alunos. A pós-graduação é composta por 239 programas com cerca de 30 mil matriculados. Atualmente, é responsável por mais de 20% da produção científica brasileira. A USP conta com diversos campi, distribuídos pelas cidades de São Paulo, Bauru, Lorena, Piracicaba, Pirassununga, Ribeirão Preto, Santos, São Carlos, além de unidades de ensino, museus e centros de pesquisa.',
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
                              'assets/usp.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ), // Espaço entre o Container e o Texto
                        Container(
                          width: 130.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(
                              bottom: 100.0, left: 110.0), // Margem do texto
                          child: const Text(
                            '  Comentários:  ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(),
                    Container(
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 80.0, left: 300.0), // Margem do texto
                      child: const Text(
                        '  Ver Mais:',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 0, 0, 0), // Cor igual a da AppBar
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
