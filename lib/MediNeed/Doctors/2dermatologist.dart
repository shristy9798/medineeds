// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/3.payment.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: skincare()));
}

class acne extends StatefulWidget {
  const acne({Key? key}) : super(key: key);

  @override
  State<acne> createState() => _acneState();
}

class _acneState extends State<acne> {
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
                    'You will be ok!',
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
                                "Dr. Himanshu Raj",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Dermatologist",
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
                              Text("MBBS,MD-Dermatology,(FAM)",
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

class hair extends StatefulWidget {
  const hair({Key? key}) : super(key: key);

  @override
  State<hair> createState() => _hairState();
}

class _hairState extends State<hair> {
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
                    'You will be ok!',
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
                            "images/3drma.jpg",
                            height: 150.0,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.Saumya Rawat",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Dermatologist",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Ibarra Real Nova",
                                      color: Color.fromARGB(95, 26, 25, 25),
                                      decoration: TextDecoration.underline)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("5 years experience ",
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
                                    text: "  4.5",
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
                              Text("MBBS,DDVL",
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
                        text: " 4000 consultations",
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

class skincare extends StatefulWidget {
  const skincare({Key? key}) : super(key: key);

  @override
  State<skincare> createState() => _skincareState();
}

class _skincareState extends State<skincare> {
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
                    'You will be ok!',
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
                            "images/2drma.jpg",
                            height: 150.0,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr.Nisha Kumari",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Dermatologist",
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
                              Text("MBBS,MD-Dermatology ",
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
                        text: " 3000 consultations",
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

class vitiligo extends StatefulWidget {
  const vitiligo({Key? key}) : super(key: key);

  @override
  State<vitiligo> createState() => _vitiligoState();
}

class _vitiligoState extends State<vitiligo> {
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
                    'You will be ok!',
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
                            "images/1drma.jpg",
                            height: 150.0,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr. Vikash vatra",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              Text("Dermatologist",
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
                              Text("MBBS,MD Dermatology ",
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
                        text: " 3000 consultations",
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
