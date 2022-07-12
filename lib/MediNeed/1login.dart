// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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

  TextEditingController namecontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
           /* height: 1000,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media.istockphoto.com/photos/online-consultation-telemedicine-to-medicine-man-stayhome-video-call-picture-id1222739018?k=20&m=1222739018&s=612x612&w=0&h=kzYIC1l5BNMYz0ULXtyO8W7BwK7s7f1cUhIRhc99EYc="),
                  fit: BoxFit.cover),
            ),*/
            child: ListView(children: [
              Center(
                  child: Image(
                image: NetworkImage(
                    "data:image/png;base64,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"),
              )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    TextField(
                      controller: namecontrol,
                      decoration: InputDecoration(
                          errorText: nameerror,
                          labelText: "Name",
                          hintText: "enter your name",
                          labelStyle:
                              TextStyle(fontSize: 30, color: Colors.red),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                            labelText: "Address",
                            hintText: "enter your Address",
                            labelStyle:
                                TextStyle(fontSize: 28, color: Colors.blue),
                            border: UnderlineInputBorder())),
                    SizedBox(height: 20),
                    TextField(
                      maxLength: 10,
                      decoration: InputDecoration(
                          labelText: "Mobile no.",
                          hintText: "enter your Mobile no. ",
                          labelStyle:
                              TextStyle(fontSize: 30, color: Colors.blue),
                          border: UnderlineInputBorder()),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "enter your password",
                        labelStyle: TextStyle(fontSize: 28, color: Colors.blue),
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {}
                            /* setState(() {
                      st = !st;
                    });*/
                            ,
                            icon: Icon(st
                                ? Icons.remove_red_eye
                                : Icons.accessibility_new_rounded)),
                      ),
                      obscureText: st,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                  if (namecontrol.text.length < 3)
                    nameerror = "enter atleast 3 character";
                  else
                    nameerror = null;
                });

                print(namecontrol);
                        },
                        child: Text("submit"))
                  ],
                ),
              ))
            ])));
  }
}
