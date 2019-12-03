import 'package:flutter/material.dart';

class EditPerfilPage extends StatefulWidget {
  @override
  _EditPerfilPageState createState() => _EditPerfilPageState();
}

class _EditPerfilPageState extends State<EditPerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Nicholas"),
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
                      image: AssetImage("images/nicholas.jpg")
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Nome",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Posição",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Cidade",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Idade", border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(labelText: "Sexo",  border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
            Divider(),
            TextField(

              decoration: InputDecoration(labelText: "Nivel",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }
}
