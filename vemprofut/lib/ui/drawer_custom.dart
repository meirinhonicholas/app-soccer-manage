import 'package:flutter/material.dart';
import 'package:vemprofut/ui/amigos_page.dart';
import 'package:vemprofut/ui/amigosperf_page.dart';
import 'package:vemprofut/ui/login_page.dart';
import 'package:vemprofut/ui/perfil_page.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String text;
  int op;

  DrawerTile(this.icon, this.text,this.op);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: (){
          if(op==1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PerfilPage()));
          }else if(op == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AmigosPage()));
          }else if(op == 3){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AmigoPerfPage()));
          }else if(op == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          }

        },
        child: Container(
          height: 60.0,
          child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  size: 32.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 32.0,),
                Text(text,style: TextStyle(
                  fontSize: 16.0,color: Colors.black54
                ),)
              ],
          ),
        ),
      ),
    );
  }
}
