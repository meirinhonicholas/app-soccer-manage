import 'package:flutter/material.dart';
import 'package:vemprofut/helpers/helper.dart';
import 'package:vemprofut/helpers/helper_perfil.dart';
import 'package:vemprofut/ui/drawer_custom.dart';
import 'package:vemprofut/ui/encontrar_page.dart';
import 'package:vemprofut/ui/fut_page.dart';
import 'package:vemprofut/ui/home_page.dart';
import 'package:vemprofut/ui/perfil_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Fut> futs = List();
  List<Perfil> perfs = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(left:32.0,top: 16.0),
          children: <Widget>[
            Container(

              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
              height: 170.0,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 40.0,
                    left: 0.0,
                    child: Text("VEM\ PRO\ FUT",style: TextStyle(color: Colors.green, fontSize: 34.0,fontWeight: FontWeight.bold),),
                  ),


                ],
              ),
            ),
            DrawerTile(Icons.account_circle,"Perfil",1),
            DrawerTile(Icons.people,"Amigos",2),
            DrawerTile(Icons.exit_to_app,"Log-Out",0),


          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Vem pro fut",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green ,

      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:50.0,left: 10.0,right: 10.0),
            child: Container(
              height: 100.0,
              //width: 390.0,
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CriarPage()));
                },
                child: Text(
                  "Seus futs",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                color: Colors.green,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 100.0,
              //width: 390.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EncontrarPage()));
                },
                child: Text(
                  "Encontrar um fut",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                color: Colors.green,
              ),
            ),
          ),
        ],
      )


    );

  }

}
