import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vemprofut/helpers/helper.dart';
import 'package:vemprofut/ui/fut_page.dart';

class ListaPage extends StatefulWidget {

  final Fut fut;

  ListaPage({this.fut});

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {


  final _ListaController = TextEditingController();

  List _Lista = [];

  void _addLista() {
    setState(() {
      Map<String, dynamic> newToDo = Map();
      newToDo["title"] = _ListaController.text;
      _ListaController.text = "";
      newToDo["ok"] = false;
      _Lista.add(newToDo);
      _saveData();
    });
  }

  @override
  void initState() {
    super.initState();

    _readData().then((data){
      setState(() {
        _Lista = jsonDecode(data);
      });

    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Fut da ressaca"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FutPage()));
            },
          )
        ],
      ),

      body:Container(
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
                  shape:BoxShape.circle,
                  image:DecorationImage(
                      image: AssetImage("images/ressaca.jpg")
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: <Widget>[
                    Text("Domingo - 9:00hrs",style: TextStyle(fontSize: 18.0,color: Colors.black38),),
                    Text("R\$170,00",style: TextStyle(fontSize: 18.0,color: Colors.black38),),
                  ],
                ),
              ),

              Divider(),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: _Lista.length,
                  itemBuilder: (context,index){
                    return Dismissible(
                      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                      background: Container(
                        color: Colors.red,
                        child: Align(
                          alignment: Alignment(-0.9,0.0),
                          child: Icon(Icons.delete,color: Colors.white,),
                        ),
                      ),
                      direction: DismissDirection.startToEnd,
                      child: CheckboxListTile(
                        title: Text(_Lista[index]["title"]),
                        value: _Lista[index]["ok"],
                        activeColor: Colors.green,
                        onChanged: (c){
                          setState(() {
                            _Lista[index]["ok"] = c;
                            _saveData();
                          });
                        },

                      ),
                      onDismissed: (direction){
                        setState(() {
                          _Lista.removeAt(index);
                          _saveData();
                        });
                      },
                    );
                  }),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(

                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _ListaController,
                        decoration: InputDecoration(
                          labelText: "Novo Jogador",
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.green,
                      child: Text("ADD"),
                      textColor: Colors.white,
                      onPressed: _addLista,
                    ),
                  ],
                ) ,
              )


            ],
          ),
        ),
      )

    );
  }
  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveData() async{
    String data = json.encode(_Lista);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async{
    try {
      final file = await _getFile();

      return file.readAsString();
    }catch (e) {
      return null;
    }
  }


}



/*
Container(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  image:DecorationImage(
                      image: AssetImage("images/fut.jpg")
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: <Widget>[
                    Text("Domingo - 9:00hrs",style: TextStyle(fontSize: 18.0,color: Colors.black38),),
                    Text("R\$170,00",style: TextStyle(fontSize: 18.0,color: Colors.black38),),
                  ],
                ),
              ),
        )
      )
    )
 */