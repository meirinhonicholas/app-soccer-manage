import 'package:flutter/material.dart';

class NovoFutPage extends StatefulWidget {
  @override
  _NovoFutPageState createState() => _NovoFutPageState();
}

class _NovoFutPageState extends State<NovoFutPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Novo Fut"),
        centerTitle: true,
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
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  image:DecorationImage(
                      image: AssetImage("images/fut.jpg")
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Nome do fut",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Dia da semana",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green),hintText: "Ex. Domingo"
              ,hintStyle: TextStyle(color: Colors.grey)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Horario",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green),hintText: "Ex. 21:00"
                  ,hintStyle: TextStyle(color: Colors.grey)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Local",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),

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

              decoration: InputDecoration(labelText: "Tipo de campo",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)
                  ,hintText: "Ex. Society",hintStyle: TextStyle(color: Colors.grey)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Nivel de jogo",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)
                  ,hintText: "Ex. Avançado",hintStyle: TextStyle(color: Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}
