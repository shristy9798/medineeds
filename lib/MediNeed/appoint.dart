// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class appoint extends StatelessWidget {
  appoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(Scaffold(appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 45, 57, 121),
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('Appointments'),
        ),
      ),body: Column(children: [Text("Appointments")],),));
  }
  
}