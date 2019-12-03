import 'package:vemprofut/helpers/helper.dart';
import 'package:vemprofut/ui/fut_page.dart';
import 'package:vemprofut/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:vemprofut/ui/homepage.dart';
import 'package:vemprofut/ui/lista_page.dart';
import 'package:vemprofut/ui/login_page.dart';
import 'package:vemprofut/ui/perfil_page.dart';
import 'ui/home_page.dart';

void main(){
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}