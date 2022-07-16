// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../3.payment.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ped()));
}

class ped extends StatefulWidget {
  const ped({Key? key}) : super(key: key);

  @override
  State<ped> createState() => _pedState();
}

class _pedState extends State<ped> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 26),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                    padding: EdgeInsets.all(8), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "images/ot1.jpg",
                            height: 150.0,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.Sonam Singh",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("pediatrics",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Color.fromARGB(95, 26, 25, 25),
                                      decoration: TextDecoration.underline)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("8 years experience ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 40, 178, 45),
                                  size: 25,
                                )),
                                TextSpan(
                                    text: "  4.9",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: " Rated by 2000+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ])),
                              Text("patients",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Qualification:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              Text("MBBS,MD-pediatrics",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200)),
                            ]),
                      ],
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 20), //insert space within
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.textsms,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " Speaks: English",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.duo,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " 6442 consultations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 20,
                    )),
                    TextSpan(
                        text: "449 Consultation fee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Select any slot to book consultation",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 4,
                    right: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "4:30 PM"));
                            }));
                          },
                          child: Text("4:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "6:00 PM"));
                            }));
                          },
                          child: Text("6:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "7:30 PM"));
                            }));
                          },
                          child: Text("7:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "9:00 PM"));
                            }));
                          },
                          child: Text("9:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400)))
                    ],
                  )),
            ],
          ),
        ));
  }
}

class gyno extends StatefulWidget {
  const gyno({Key? key}) : super(key: key);

  @override
  State<gyno> createState() => _gynoState();
}

class _gynoState extends State<gyno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 26),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                    padding: EdgeInsets.all(8), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "images/g1.jpg",
                            height: 150.0,
                            width: 120,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.Shivani singh",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Gynecologist",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Color.fromARGB(95, 26, 25, 25),
                                      decoration: TextDecoration.underline)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("8 years experience ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 40, 178, 45),
                                  size: 25,
                                )),
                                TextSpan(
                                    text: "  4.9",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: " Rated by 2000+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ])),
                              Text("patients",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Qualification:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              Text("MBBS",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200)),
                            ]),
                      ],
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 20), //insert space within
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.textsms,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " Speaks: English",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.duo,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " 6442 consultations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 20,
                    )),
                    TextSpan(
                        text: "449 Consultation fee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Select any slot to book consultation",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 4,
                    right: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "4:30 PM"));
                            }));
                          },
                          child: Text("4:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "6:00 PM"));
                            }));
                          },
                          child: Text("6:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "7:30 PM"));
                            }));
                          },
                          child: Text("7:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "9:00 PM"));
                            }));
                          },
                          child: Text("9:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400)))
                    ],
                  )),
            ],
          ),
        ));
  }
}

class psy extends StatefulWidget {
  const psy({Key? key}) : super(key: key);

  @override
  State<psy> createState() => _psyState();
}

class _psyState extends State<psy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 26),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                    padding: EdgeInsets.all(8), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "images/4drma.jpg",
                            height: 150.0,
                            width: 120,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.  Raman Raj",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Psychiatrist",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Color.fromARGB(95, 26, 25, 25),
                                      decoration: TextDecoration.underline)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("8 years experience ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 40, 178, 45),
                                  size: 25,
                                )),
                                TextSpan(
                                    text: "  4.9",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: " Rated by 2000+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ])),
                              Text("patients",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Qualification:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              Text("MBBS",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200)),
                            ]),
                      ],
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 20), //insert space within
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.textsms,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " Speaks: English",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.duo,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " 6442 consultations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 20,
                    )),
                    TextSpan(
                        text: "449 Consultation fee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Select any slot to book consultation",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 4,
                    right: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "4:30 PM"));
                            }));
                          },
                          child: Text("4:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "6:00 PM"));
                            }));
                          },
                          child: Text("6:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "7:30 PM"));
                            }));
                          },
                          child: Text("7:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "9:00 PM"));
                            }));
                          },
                          child: Text("9:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400)))
                    ],
                  )),
            ],
          ),
        ));
  }
}

class dental extends StatefulWidget {
  const dental({Key? key}) : super(key: key);

  @override
  State<dental> createState() => _dentalState();
}

class _dentalState extends State<dental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 26),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                    padding: EdgeInsets.all(8), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "images/dn.jpg",
                            height: 150.0,
                            width: 120,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.Gaurav Punj",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Dentist",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Color.fromARGB(95, 26, 25, 25),
                                      decoration: TextDecoration.underline)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("8 years experience ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 40, 178, 45),
                                  size: 25,
                                )),
                                TextSpan(
                                    text: "  4.9",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: " Rated by 2000+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ])),
                              Text("patients",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Qualification:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              Text("MBBS",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200)),
                            ]),
                      ],
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 20), //insert space within
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.textsms,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " Speaks: English",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.duo,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " 6442 consultations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 20,
                    )),
                    TextSpan(
                        text: "449 Consultation fee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Select any slot to book consultation",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 4,
                    right: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "4:30 PM"));
                            }));
                          },
                          child: Text("4:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "6:00 PM"));
                            }));
                          },
                          child: Text("6:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "7:30 PM"));
                            }));
                          },
                          child: Text("7:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "9:00 PM"));
                            }));
                          },
                          child: Text("9:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400)))
                    ],
                  )),
            ],
          ),
        ));
  }
}

class pul extends StatefulWidget {
  const pul({Key? key}) : super(key: key);

  @override
  State<pul> createState() => _pulState();
}

class _pulState extends State<pul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 26),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                    padding: EdgeInsets.all(8), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "images/d4.jpg",
                            height: 150.0,
                            width: 120,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.Ramesh Raj",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("pulmonologist",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Color.fromARGB(95, 26, 25, 25),
                                      decoration: TextDecoration.underline)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("8 years experience ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 40, 178, 45),
                                  size: 25,
                                )),
                                TextSpan(
                                    text: "  4.9",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: " Rated by 2000+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ])),
                              Text("patients",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Qualification:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              Text("MBBS",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200)),
                            ]),
                      ],
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 20), //insert space within
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.textsms,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " Speaks: English",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.duo,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " 6442 consultations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 20,
                    )),
                    TextSpan(
                        text: "449 Consultation fee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Select any slot to book consultation",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 4,
                    right: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "4:30 PM"));
                            }));
                          },
                          child: Text("4:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "6:00 PM"));
                            }));
                          },
                          child: Text("6:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "7:30 PM"));
                            }));
                          },
                          child: Text("7:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "9:00 PM"));
                            }));
                          },
                          child: Text("9:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400)))
                    ],
                  )),
            ],
          ),
        ));
  }
}

class diet extends StatefulWidget {
  const diet({Key? key}) : super(key: key);

  @override
  State<diet> createState() => _dietState();
}

class _dietState extends State<diet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 26),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                    padding: EdgeInsets.all(8), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "images/n1.jpg",
                            height: 150.0,
                            width: 120,
                          ),
                        ),
                        Flexible(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Dr. Roshni Senghal",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Oswald",
                                  ),
                                ),
                                Text("Dietitian//Nutritionist",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Ibarra Real Nova",
                                        color: Color.fromARGB(95, 26, 25, 25),
                                        decoration: TextDecoration.underline)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text("8 years experience ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Ibarra Real Nova",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 40, 178, 45),
                                    size: 25,
                                  )),
                                  TextSpan(
                                      text: "  4.9",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      )),
                                  TextSpan(
                                      text: " Rated by 2000+",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ])),
                                Text("patients",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text("Qualification:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35, 0, 0, 0),
                                  child: Text(" Master in Dietetics Management",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w200)),
                                ),
                              ]),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 20), //insert space within
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.textsms,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " Speaks: English",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.duo,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    TextSpan(
                        text: " 6442 consultations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromARGB(255, 40, 91, 178),
                      size: 30,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 20,
                    )),
                    TextSpan(
                        text: "449 Consultation fee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Select any slot to book consultation",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 4,
                    right: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "4:30 PM"));
                            }));
                          },
                          child: Text("4:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "6:00 PM"));
                            }));
                          },
                          child: Text("6:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "7:30 PM"));
                            }));
                          },
                          child: Text("7:30 PM",
                              style: TextStyle(fontWeight: FontWeight.w400))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 40, 91, 178),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (pay(time: "9:00 PM"));
                            }));
                          },
                          child: Text("9:00 PM",
                              style: TextStyle(fontWeight: FontWeight.w400)))
                    ],
                  )),
            ],
          ),
        ));
  }
}
