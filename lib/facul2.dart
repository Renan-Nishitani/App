import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul2 extends StatelessWidget {
  const Facul2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff05376b), // Cor de fundo da AppBar
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
                      'PUC',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3f78b6),
                      ),
                    ),
                    const SizedBox(
                        height: 10), // Adicionando um espaço entre os textos
                    const Text(
                      'A Pontifícia Universidade Católica, mais conhecida como PUC, é uma instituição de ensino superior reconhecida pela sua excelência acadêmica e compromisso com os valores humanos e éticos. Com campos espalhados por várias cidades brasileiras, a PUC se destaca pela qualidade de seu corpo docente, composto por professores renomados e pesquisadores de destaque em seus campos de atuação. A PUC também valoriza a formação integral dos seus estudantes, buscando não apenas o desenvolvimento acadêmico, mas também o crescimento pessoal e o engajamento social. Por meio de programas de extensão universitária, projetos comunitários e atividades extracurriculares, a universidade incentiva o protagonismo dos alunos e sua contribuição para a sociedade.',
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
                              'assets/pucsp.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ), // Espaço entre o Container e o Texto
                        Container(
                          width: 130.0,
                          decoration: const BoxDecoration(
                            color: Color(0xff3f78b6),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(
                              bottom: 154.0, left: 110.0), // Margem do texto
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
                        color: Color(0xff3f78b6),
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
        color: const Color(0xff05376b), // Cor igual a da AppBar
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
