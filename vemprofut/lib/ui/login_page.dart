import 'package:flutter/material.dart';
import 'package:vemprofut/ui/cadastro_page.dart';
import 'package:vemprofut/ui/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool val = false;
  TextEditingController _loginController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 120.0,bottom: 75),
              child: Text("VEM PRO FUT",style: TextStyle(color: Colors.green,fontSize: 40.0,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(validator:(value){
                      if(value.isEmpty) {
                        return "Insira seu login!";
                      }
                      else
                        {
                          return null;
                        }

                    },
                        controller: _loginController,decoration: InputDecoration(labelText: "Login",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green))),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(validator:(value){
                      if(value.isEmpty) {
                        return "Insira sua senha!";
                      }
                      else
                      {
                        return null;
                      }

                    },
                        controller: _senhaController,obscureText:true, decoration: InputDecoration(labelText: "Senha",border: OutlineInputBorder(),labelStyle: TextStyle(color: Colors.green))),
                    Container(
                      height: 70.0,
                      width: 350.0,
                      padding: EdgeInsets.all(10.0),
                      child:  RaisedButton(
                        child: Text("Entrar",style: TextStyle(color: Colors.white),),
                        color: Colors.green,
                        onPressed: (){
                          if(_formKey.currentState.validate()) {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => HomePage()));
                          }
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CadastroPage()));
                      },
                      child: Text("Ainda nao tem conta? Cadastre-se agora!",style: TextStyle(color: Colors.grey,)),
                    ),


                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20.0),
              height: 180.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  child: Text("Logar com Gmail",style: TextStyle(color: Colors.white),),
                  color: Colors.redAccent,
                  onPressed: (){},
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
