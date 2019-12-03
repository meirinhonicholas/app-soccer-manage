import 'package:flutter/material.dart';
import 'package:vemprofut/ui/informacoes_fut.dart';
import 'package:vemprofut/ui/lista_page.dart';

class EncontrarPage extends StatefulWidget {
  @override
  _EncontrarPageState createState() => _EncontrarPageState();
}

class _EncontrarPageState extends State<EncontrarPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Encontrar um fut"),
        backgroundColor: Colors.green,
        centerTitle: true,

      ),
      backgroundColor: Colors.white,

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(color: Colors.black54),
              decoration: InputDecoration(
                hintText: "Pesquisar",
                hintStyle: TextStyle(color: Colors.black54),
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          _contactCard(context, "Fut dos mlk bom", "Sabado - 18:00", "Itaquera", "images/fut.jpg")
        ],
      )
    );
  }
  Widget _contactCard(BuildContext context,String nome, String data, String local,String img){
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  image:DecorationImage(
                      image: AssetImage(img)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(nome,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    Text(data,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(local,
                      style: TextStyle(fontSize: 18.0),
                    )

                  ],
                ),
              )

            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => InfoFutPage()));
      },
    );
  }
}
