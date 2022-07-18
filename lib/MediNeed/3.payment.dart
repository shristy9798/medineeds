// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/2.mainpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: pay(
      time: 'hj',
    ),
  ));
}

class pay extends StatefulWidget {
  pay({Key? key, required this.time}) : super(key: key);
  final String time;
  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  String? carderror = null;

  String? nameerror = null;

  String? validerror = null;

  String? cvverror = null;

  TextEditingController card = TextEditingController();

  TextEditingController name = TextEditingController();

  TextEditingController valid = TextEditingController();

  TextEditingController cvv = TextEditingController();
  final firebase = FirebaseFirestore.instance;

  void create() async {
    print(name.text);
    try {
      await firebase
          .collection("User")
          // .doc()
          .doc(name.text)
          .set({
        "name": name.text,
        "Booked Appointment": widget.time,
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 45, 57, 121),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("images/pay.png"),
              fit: BoxFit.cover,
              height: 30,
              width: 30,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' Payment Window',
                  style: TextStyle(fontSize: 26),
                )),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(18), //insert space within
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),

            child: Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "To pay :",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.black)),
                WidgetSpan(
                    child: Icon(
                  Icons.currency_rupee,
                  color: Colors.black,
                  size: 28,
                )),
                TextSpan(
                    text: "449.00",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Colors.black)),
              ])),
            ),
          ),
          Text("Pay Here",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center),
          Container(
            padding: EdgeInsets.all(18), //insert space within
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.wallet,
                      color: Color.fromARGB(220, 45, 57, 121),
                      size: 30,
                    )),
                    TextSpan(
                        text: "Debit/Credit Card",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: card,
                  maxLength: 16,
                  decoration: InputDecoration(
                      errorText: carderror,
                      labelText: "Card Number",
                      hintText: "XXXX-XXXX-XXXX-XXXX",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.wallet)),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      errorText: nameerror,
                      labelText: "Card Holder's Name",
                      hintText: "Name",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: valid,
                  decoration: InputDecoration(
                      errorText: validerror,
                      labelText: "Valid Upto",
                      hintText: "MM-YY",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_month_outlined)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: cvv,
                  maxLength: 3,
                  decoration: InputDecoration(
                      errorText: cvverror,
                      labelText: " Enter CVV",
                      hintText: "***",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.wallet)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(220, 45, 57, 121),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () async {
                    setState(() {
                      if (card.text.isEmpty) {
                        carderror = "Enter Card Number";
                      } else {
                        nameerror = null;
                      }
                      if (name.text.isEmpty) {
                        nameerror = "Enter Name";
                      } else {
                        nameerror = null;
                      }
                      if (valid.text.isEmpty) {
                        validerror = "Enter the expiry date";
                      } else if (valid.text.length != 5 &&
                          valid.text.isNotEmpty) {
                        validerror = "Enter in MM-YY Format";
                      } else {
                        validerror = null;
                      }
                      if (cvv.text.isEmpty) {
                        cvverror = "Enter CVV";
                      } else if (cvv.text.length != 3) {
                        cvverror = "Invalid CVV";
                      } else {
                        cvverror = null;
                      }
                    });

                    if (card.text.isNotEmpty &&
                        name.text.isNotEmpty &&
                        cvv.text.isNotEmpty &&
                        cvv.text.length == 3 &&
                        valid.text.isNotEmpty &&
                        valid.text.length == 5) {
                      create();
                      setState(() {
                        card.clear();
                        name.clear();
                        cvv.clear();
                        valid.clear();
                      });
                      payment(context);
                    }
                  },
                  child: Text('Pay'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void payment(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        'Booking Confirmed',
        style: TextStyle(
            color: Color.fromARGB(220, 45, 57, 121),
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      content: Text(
          'Your Slot has been booked successfully\nSelected time slot : ${widget.time}\nDoctor will call you soon.'),
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
