import 'package:flutter/material.dart';
import 'package:vemprofut/ui/homepage.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 80,left: 10.0,right: 10.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Cadastre-se",style: TextStyle(color: Colors.green,fontSize: 24.0),),
                ),
                TextFormField(
                  validator:(value){
                    if(value.isEmpty) {
                      return "Insira seu login!";
                    }
                    else
                    {
                      return null;
                    }

                  },
                  decoration: InputDecoration(
                    labelText: "Login",
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.green)
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator:(value){
                    if(value.isEmpty) {
                      return "Insira sua senha!";
                    }
                    else
                    {
                      return null;
                    }

                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.green)
                  ),
                ),
                Container(
                  height: 70.0,
                  width: 350.0,
                  padding: EdgeInsets.all(10.0),
                  child:  RaisedButton(
                    child: Text("Cadastrar",style: TextStyle(color: Colors.white),),
                    color: Colors.green,
                    onPressed: (){
                      if(_formKey.currentState.validate()) {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage()));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
