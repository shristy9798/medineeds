// ignore_for_file: prefer_const_constructors

// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/2.mainpage.dart';
import 'package:medineeds/MediNeed/login.dart';
import 'package:medineeds/MediNeed/signup.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mainpage(),
  ));
}
