import 'dart:io';

import 'package:vemprofut/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:vemprofut/ui/fut_page.dart';
import 'package:vemprofut/ui/futpagenonadmin.dart';
import 'package:vemprofut/ui/lista_page.dart';
import 'package:vemprofut/ui/novofut_page.dart';

class CriarPage extends StatefulWidget {
  @override
  _CriarPageState createState() => _CriarPageState();
}

class _CriarPageState extends State<CriarPage> {

  FutHelper helper = FutHelper();

  List<Fut> futs = List();


  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futs"),
        backgroundColor: Colors.green,
        centerTitle: true,

      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NovoFutPage()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: 1,
          itemBuilder: (context,index){
            return Column(
              children: <Widget>[
                _contactCardAdmin(context,"Fut da Ressaca","Domingo - 9:00","Gama","images/ressaca.jpg"),
                _contactCard(context,"Jabaquara F.C","Sexta - 19:00","Campo do Jabaquara","images/vemtranquilo.jpg")
              ],
            );

          }),
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
              ),


            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FutPageNonAdmin()));
      },
    );
  }

  Widget _contactCardAdmin(BuildContext context,String nome, String data, String local,String img){
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
                    Row(
                      children: <Widget>[
                        Text(nome,
                          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 45.0,
                        ),
                        Icon(Icons.person,color: Colors.black,),
                      ],
                    ),

                    Text(data,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(local,
                      style: TextStyle(fontSize: 18.0),
                    )

                  ],
                ),
              ),



            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ListaPage()));
      },
    );
  }


}
