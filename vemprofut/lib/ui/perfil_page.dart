import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vemprofut/helpers/helper_perfil.dart';
import 'package:vemprofut/ui/editperfil_page.dart';

class PerfilPage extends StatefulWidget {

  final Perfil perf;

  PerfilPage({this.perf});

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {


  bool _userEdited = false;
  Perfil _editedPerfil;

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Nicholas"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>EditPerfilPage()));
          },)

        ],
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
              height: 5.0,
            ),
            Text(
              "Nicholas",style: TextStyle(fontSize: 24.0,color: Colors.black54,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Posiçao:",
                    style: TextStyle(fontSize: 20.0,color: Colors.black54),

                  ),
                  SizedBox(width: 32.0,),
                  Text("Atacante",style: TextStyle(
                      fontSize: 16.0,color: Colors.black54
                  ),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Cidade:",
                    style: TextStyle(fontSize: 20.0,color: Colors.black54),

                  ),
                  SizedBox(width: 32.0,),
                  Text("  Guarujá",style: TextStyle(
                      fontSize: 16.0,color: Colors.black54
                  ),)
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Idade:",
                    style: TextStyle(fontSize: 20.0,color: Colors.black54),

                  ),
                  SizedBox(width: 32.0,),
                  Text("     19 anos",style: TextStyle(
                      fontSize: 16.0,color: Colors.black54
                  ),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Sexo:",
                    style: TextStyle(fontSize: 20.0,color: Colors.black54),

                  ),
                  SizedBox(width: 32.0,),
                  Text("      Masculino",style: TextStyle(
                      fontSize: 16.0,color: Colors.black54
                  ),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Nivel:",
                    style: TextStyle(fontSize: 20.0,color: Colors.black54),

                  ),
                  SizedBox(width: 32.0,),
                  Text("      Avançadissimo",style: TextStyle(
                      fontSize: 16.0,color: Colors.black54
                  ),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}


