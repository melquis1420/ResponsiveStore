import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/mobile_app_bar.dart';
import 'package:flutter_application_1/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;

    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth; // take all width
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(largura, alturaBarra),
              )
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(largura, alturaBarra),
              ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarVisualizacao(largura),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
            ],
          ),
        ),
      );
    });
  }
}
