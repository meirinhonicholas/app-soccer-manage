import 'package:flutter/material.dart';
import 'package:vemprofut/ui/drawer_custom.dart';

class AmigosPage extends StatefulWidget {
  @override
  _AmigosPageState createState() => _AmigosPageState();
}

class _AmigosPageState extends State<AmigosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Amigos",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green ,

      ),
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
          Container(
            padding: EdgeInsets.only(left:20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                DrawerTile(Icons.account_circle, "Arthur", 3),
                DrawerTile(Icons.account_circle, "Beatriz", 5),
                DrawerTile(Icons.account_circle, "Alek", 5),
              ],
            ),

          ),

        ],
      ),
    );
  }
}
