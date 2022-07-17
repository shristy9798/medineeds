// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:medineeds/MediNeed/2.mainpage.dart';


class help extends StatefulWidget {
  const help({Key? key}) : super(key: key);

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  String? queryerror = null;

  TextEditingController query = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 45, 57, 121),
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('Help'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.help_center),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Type your query here',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: query,
              decoration: InputDecoration(
                  errorText: queryerror,
                  labelText: "Your query",
                  hintText: "Ex - Doctor not contacted.",
                  labelStyle: TextStyle(
                      fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color.fromARGB(220, 45, 57, 121),
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(220, 45, 57, 121),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: Icon(Icons.help)),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(220, 45, 57, 121),
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                setState(() {
                  if (query.text.isEmpty) {
                    queryerror = "Query can't be empty";
                  } else {
                    queryerror = null;
                  }
                });

                if (query.text.isNotEmpty) {
                  setState(() {
                    query.clear();
                  });
                  Query(context);
                }
              },
              child: Text('Sumbit'),
            )
          ],
        ),
      ),
    ));
  }

  void Query(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        'Query Submitted',
        style: TextStyle(
            color: Color.fromARGB(220, 45, 57, 121),
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      content: Text(
          'Your query has been submitted sucessfully.\nWe will help you soon.'),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(220, 45, 57, 121),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return (mainpage());
              }));
            },
            child: Text("Return to main page")),
      ],
    );

    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}
