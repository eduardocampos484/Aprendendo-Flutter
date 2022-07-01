import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Frases Motivacionais'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  final List _frases = [
    'O importante não é vencer todos os dias, mas lutar sempre.',
    'É melhor conquistar a si mesmo do que vencer mil batalhas.',
    'O medo de perder tira a vontade de ganhar.',
    'Você pode tudo, exceto desistir. Força, continue seu caminho!',
    'Nunca duvide porque sua força vem de Deus.',
    'Você está mais perto que imagina! Não perca o fôlego agora!',
    'Cada passo que você dá você fica mais perto do seu objetivo!',
    'Vá em frente! Você sabe que não pode parar agora.'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = Random()
          .nextInt(8); //Gera um numero ou palavras aleatórias 0, 1, 2, 3...
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
