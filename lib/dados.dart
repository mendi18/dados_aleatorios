import 'package:flutter/material.dart';
import 'dart:math';

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int quantidade = 3;
  double tamanhoDado = 100;
  List<int> dados = [6, 6, 6, 6, 6, 6];
  String total = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dados al Azar',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () => calcularQuantidade(1),
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              OutlinedButton(
                onPressed: () => calcularQuantidade(2),
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              OutlinedButton(
                onPressed: () => calcularQuantidade(3),
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              OutlinedButton(
                onPressed: () => calcularQuantidade(4),
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              OutlinedButton(
                onPressed: () => calcularQuantidade(5),
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              OutlinedButton(
                onPressed: () => calcularQuantidade(6),
                child: Text(
                  '6',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < quantidade; i++)
                  Flexible(
                    flex: 4,
                    child: Image.asset(
                      'images/dado${dados[i]}.png',
                      width: tamanhoDado,
                    ),
                  ),
              ],
            ),
          ),
          Spacer(),
          Text(
            total,
            style: TextStyle(
              fontSize: 25,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          IconButton(
            iconSize: 100,
            splashColor: Colors.deepOrange,
            onPressed: () {
              cambiarDado(quantidade);
            },
            alignment: Alignment.center,
            icon: Icon(
              Icons.play_arrow_rounded,
              color: Colors.deepOrange,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  cambiarDado(int numero) {
    int somar = 0;
    for (int i = 0; i < quantidade; i++) {
      dados[i] = Random().nextInt(6) + 1;
      somar = somar + dados[i];
    }
    total = 'A soma dos dados jogados é $somar';
    setState(() {});
  }

  calcularQuantidade(int numero) {
    quantidade = numero;
    for (var i = 0; i < numero; i++) {
      dados[i] = 6;
    }
    total = '';
    setState(() {});
  }
}
