import 'package:flutter/material.dart';
import 'package:vemprofut/ui/fut_page.dart';
import 'package:vemprofut/ui/infofutpagenonadmin.dart';

class FutPageNonAdmin extends StatefulWidget {
  @override
  _FutPageNonAdminState createState() => _FutPageNonAdminState();
}

class _FutPageNonAdminState extends State<FutPageNonAdmin> {

  List _List = ["Nicholas","Arthur","Diguinho","Eldinho","GP","Gucil","Tutu","Cesar"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Jabaquara F.C"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InfoFutPageNonAdmin()));
              },
            )
          ],
        ),

        body: Container(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Container(

                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/vemtranquilo.jpg")
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text("Sexta - 19:00hrs", style: TextStyle(
                          fontSize: 18.0, color: Colors.black38),),
                      Text("R\$300,00", style: TextStyle(
                          fontSize: 18.0, color: Colors.black38),),
                    ],
                  ),
                ),

                Divider(),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 10.0),
                      itemCount: _List.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_List[index]),

                        );
                      }),
                ),


              ],
            ),
          ),
        )

    );
  }
}
