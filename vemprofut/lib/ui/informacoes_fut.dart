import 'package:flutter/material.dart';

class InfoFutPage extends StatefulWidget {
  @override
  _InfoFutPageState createState() => _InfoFutPageState();
}

class _InfoFutPageState extends State<InfoFutPage> {
  String _entrarfut = "Entrar no fut";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Fut dos mlk bom"),
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
                      image: AssetImage("images/fut.jpg")
                  ),
                ),
              ),
            ),
            Text(
              "Fut dos mlk bom",style: TextStyle(fontSize: 24.0,color: Colors.black54,fontWeight: FontWeight.bold),
            ),
           Container(
             padding: EdgeInsets.only(top:15.0),
             height: 50.0,
             width: 140,
             child:  RaisedButton(
               child:
               Text(_entrarfut,style: TextStyle(color: Colors.white),),
               color: Colors.green,
               onPressed: (){
                 setState(() {
                   if(_entrarfut == "Solicitado"){
                     _entrarfut = "Entrar no fut";
                   }else{
                     _entrarfut = "Solicitado";
                   }
                 });


               },
             ),
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
                  Text("     Sabado",style: TextStyle(
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
                  Text("  18:00",style: TextStyle(
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
                  Text("      Itaquera",style: TextStyle(
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

                  Text("   R\$100,00",style: TextStyle(
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
