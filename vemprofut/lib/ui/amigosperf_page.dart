import 'package:flutter/material.dart';

class AmigoPerfPage extends StatefulWidget {
  @override
  _AmigoPerfPageState createState() => _AmigoPerfPageState();
}

class _AmigoPerfPageState extends State<AmigoPerfPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Arthur"),
        centerTitle: true,

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
                      image: AssetImage("images/arthur2.jpg")
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Arthur",style: TextStyle(fontSize: 24.0,color: Colors.black54,fontWeight: FontWeight.bold),
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
                  Text("     21 anos",style: TextStyle(
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
                  Text("      Avançado",style: TextStyle(
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
