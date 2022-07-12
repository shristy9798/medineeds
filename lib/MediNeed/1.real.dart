// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/2.mainpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: log(),
  ));
}

class log extends StatefulWidget {
  log({Key? key}) : super(key: key);

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  var st = true;

  String? nameerror = null;

  String? mailerror = null;

  String? phoneerror = null;

  String? passerror = null;

  TextEditingController namecontrol = TextEditingController();

  TextEditingController mailcontrol = TextEditingController();

  TextEditingController phonecontrol = TextEditingController();

  TextEditingController passcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SafeArea(
                child: ListView(
      children: [
        Container(
            padding: EdgeInsets.all(20), //insert space within
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.blue,
            width: 300,
            height: 200,
            child: Image(image: AssetImage('images/medi.png'))),
        Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
              TextField(
                controller: namecontrol,
                decoration: InputDecoration(
                    errorText: nameerror,
                    labelText: "Name",
                    hintText: "enter your name",
                    labelStyle: TextStyle(fontSize: 28, color: Colors.blue),
                    border: UnderlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                  controller: mailcontrol,
                  decoration: InputDecoration(
                      errorText: mailerror,
                      labelText: "Email",
                      hintText: "enter your email",
                      labelStyle: TextStyle(fontSize: 28, color: Colors.blue),
                      border: UnderlineInputBorder())),
              SizedBox(height: 20),
              TextField(
                controller: phonecontrol,
                maxLength: 10,
                decoration: InputDecoration(
                    errorText: phoneerror,
                    labelText: "Mobile no.",
                    hintText: "enter your Mobile no. ",
                    labelStyle: TextStyle(fontSize: 28, color: Colors.blue),
                    border: UnderlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              TextField(
                controller: passcontrol,
                decoration: InputDecoration(
                  errorText: passerror,
                  labelText: "Password",
                  hintText: "Enter your password",
                  labelStyle: TextStyle(fontSize: 28, color: Colors.blue),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          st = !st;
                        });
                      },
                      icon: Icon(st
                          ? Icons.remove_red_eye
                          : Icons.accessibility_new_rounded)),
                ),
                obscureText: st,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (namecontrol.text.isEmpty) {
                          nameerror = "enter your name";
                        } else {
                          nameerror = null;
                        }
                        if (mailcontrol.text.isEmpty) {
                          mailerror = "enter valid mail id";
                        } else {
                          mailerror = null;
                        }
                        if (phonecontrol.text.isEmpty) {
                          phoneerror = "enter valid mobile no.";
                        } else {
                          phoneerror = null;
                        }
                        if (passcontrol.text.isEmpty) {
                          passerror = "enter password";
                        } else {
                          passerror = null;
                        }
                        if (phonecontrol.text.length != 10) {
                          phoneerror = "Number must consist 10 digits";
                        } else {
                          phoneerror = null;
                        }
                        
                      });
                      if (namecontrol.text.isNotEmpty &&
                          mailcontrol.text.isNotEmpty &&
                          phonecontrol.text.length != 10 &&
                          passcontrol.text.isNotEmpty) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return (mainpage());
                        }));
                      }
                    },
                    child: Text("submit")),
              )
            ],
          ),
        )
      ],
    ))));
  }
}
