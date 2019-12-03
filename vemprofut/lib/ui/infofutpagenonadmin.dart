import 'package:flutter/material.dart';

class InfoFutPageNonAdmin extends StatefulWidget {
  @override
  _InfoFutPageNonAdminState createState() => _InfoFutPageNonAdminState();
}

class _InfoFutPageNonAdminState extends State<InfoFutPageNonAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Jabaquara F.C"),
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
                      image: AssetImage("images/vemtranquilo.jpg")
                  ),
                ),
              ),
            ),
            Text(
              "Jabaquara F.C",style: TextStyle(fontSize: 24.0,color: Colors.black54,fontWeight: FontWeight.bold),
            ),
            //SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Dia da semana:",
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),

                  ),
                  SizedBox(width: 10.0,),
                  Text("     Sexta",style: TextStyle(
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
                    "Horario:",
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),

                  ),
                  SizedBox(width: 80.0,),
                  Text("  19:00",style: TextStyle(
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
                    "Local:",
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),

                  ),
                  SizedBox(width: 80.0,),
                  Text("      Jabaquara",style: TextStyle(
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
                    "Tipo de campo:",
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),

                  ),
                  SizedBox(width: 20.0,),
                  Text("  Campo",style: TextStyle(
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
                    "Valor por pessoa:",
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),

                  ),

                  Text("   R\$30,00",style: TextStyle(
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
                    style: TextStyle(fontSize: 18.0,color: Colors.black54),

                  ),
                  SizedBox(width: 90.0,),
                  Text("    Profissional",style: TextStyle(
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
