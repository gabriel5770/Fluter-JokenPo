import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Frases do dia',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _imagemApp = 'images/tesoura.png';
  String? _resultadoJokenPo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo'),
      ),
      body: Center(
        child: Container(
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Text(
              'Escolha do app:',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    '$_imagemApp',
                    width: 80,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text(
                  '$_resultadoJokenPo',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imagemApp = GeraResultadoApp();
                          _resultadoJokenPo =
                              RetornaResultado(_imagemApp, 'images/pedra.png');
                        });
                      },
                      child: Image.asset(
                        'images/pedra.png',
                        width: 80,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imagemApp = GeraResultadoApp();
                          _resultadoJokenPo =
                              RetornaResultado(_imagemApp, 'images/papel.png');
                        });
                      },
                      child: Image.asset(
                        'images/papel.png',
                        width: 80,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _imagemApp = GeraResultadoApp();
                          _resultadoJokenPo = RetornaResultado(
                              _imagemApp, 'images/tesoura.png');
                        });
                      },
                      child: Image.asset(
                        'images/tesoura.png',
                        width: 80,
                      ),
                    ),
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

GeraResultadoApp() {
  List<String> imagens = [
    'images/tesoura.png',
    'images/papel.png',
    'images/pedra.png'
  ];

  int numero = Random().nextInt(imagens.length);
  String resultado = imagens[numero];
  return resultado;
}

RetornaResultado(var _imagemApp, imagemBotao) {
  if (_imagemApp.toString().contains('tesoura') &&
      imagemBotao.toString().contains('pedra')) {
    return 'Você venceu!';
  } else if (_imagemApp.toString().contains('papel') &&
      imagemBotao.toString().contains('tesoura')) {
    return 'Você venceu!';
  } else if (_imagemApp.toString().contains('pedra') &&
      imagemBotao.toString().contains('papel')) {
    return 'Você venceu!';
  } else if (_imagemApp == imagemBotao) {
    return 'Empate!';
  } else {
    return 'Você perdeu!';
  }
}
