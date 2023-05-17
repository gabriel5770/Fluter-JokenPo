import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 40,
                  backgroundImage: AssetImage('images/pedra.png'),
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
                  'Você perdeu :(',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'images/pedra.png',
                        width: 80,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'images/papel.png',
                        width: 80,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
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
