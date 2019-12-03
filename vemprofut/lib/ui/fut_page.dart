import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:vemprofut/helpers/helper.dart';

class FutPage extends StatefulWidget {

  final Fut fut;

  FutPage({this.fut});

  @override
  _FutPageState createState() => _FutPageState();
}

class _FutPageState extends State<FutPage> {

  @override
  void initState() {
    super.initState();

  }

  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Fut da Ressaca"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share("Se junte ao Fut da Ressaca! \n\nvemprofut.com.br/futs/fut-da-ressaca");
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Navigator.pop(context);
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              child:  Container(
                padding: EdgeInsets.only(bottom: 10.0),
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  image:DecorationImage(
                      image: AssetImage("images/ressaca.jpg")
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Nome",labelStyle: TextStyle(color: Colors.green),border: OutlineInputBorder()),
            ),

            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Dia da semana",labelStyle: TextStyle(color: Colors.green),border: OutlineInputBorder(),hintText: "Ex. Domingo"
              ,hintStyle: TextStyle(color: Colors.grey)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Horario",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green),hintText: "Ex. 21:00"
                  ,hintStyle: TextStyle(color: Colors.grey)),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Local",labelStyle: TextStyle(color: Colors.green),border: OutlineInputBorder()),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Tipo de campo",labelStyle: TextStyle(color: Colors.green),border: OutlineInputBorder()
                  ,hintText: "Ex. Society",hintStyle: TextStyle(color: Colors.grey)),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Valor total",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(),
                  prefixText: "R\$"),
              style: TextStyle(color: Colors.black),

            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Valor por pessoa",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(),
                  prefixText: "R\$"),
              style: TextStyle(color: Colors.black),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Nivel de jogo",labelStyle: TextStyle(color: Colors.green),border: OutlineInputBorder()
              ,hintText: "Ex. Avançado",hintStyle: TextStyle(color: Colors.grey)),
            )
          ],

        ),

      ),

    );
  }


}


