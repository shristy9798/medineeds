// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: fever()));
}

class fever extends StatefulWidget {
  const fever({Key? key}) : super(key: key);

  @override
  State<fever> createState() => _feverState();
}

class _feverState extends State<fever> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),*/
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You will be ok soon!!',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Container(
          padding: EdgeInsets.all(18), //insert space within
          margin: EdgeInsets.only(bottom: 10),
          child: Center(
            //insert space within

            child: ListView(
              children: [
                Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(38), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/d1.jpg"),
                          height: 180,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.Anand Sachdeva",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("General Physician.",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Ibarra Real Nova",
                                    color: Color.fromARGB(95, 26, 25, 25),
                                    decoration: TextDecoration.underline)),
                            Text("10 years experience ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Ibarra Real Nova",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                            RichText(
                                text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 40, 178, 45),
                                size: 30,
                              )),
                              TextSpan(
                                  text: "4.9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20)),
                              TextSpan(
                                  text: "  Rated by 2000+ patients",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                            ])),
                            Text("Qualification:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            Text("MBBS",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                          ]),
                        ),
                      ],
                    )),
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
                          text: " Speaks:English",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("4:30 PM",
                                style: TextStyle(fontWeight: FontWeight.w400))),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("6:00 PM",
                                style: TextStyle(fontWeight: FontWeight.w400))),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("7:30 PM",
                                style: TextStyle(fontWeight: FontWeight.w400))),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("9:00 PM",
                                style: TextStyle(fontWeight: FontWeight.w400)))
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class diziness extends StatefulWidget {
  const diziness({Key? key}) : super(key: key);

  @override
  State<diziness> createState() => _dizinessState();
}

class _dizinessState extends State<diziness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ' you will be fine soon!!',
                    style: TextStyle(fontSize: 35),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Container(
          padding: EdgeInsets.all(18), //insert space within
          margin: EdgeInsets.only(bottom: 10),
          child: Center(
            //insert space within

            child: ListView(
              children: [
                Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(38), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/d2.png"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.sanzida khan",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("General Physician.",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Ibarra Real Nova",
                                    color: Color.fromARGB(95, 26, 25, 25),
                                    decoration: TextDecoration.underline)),
                            Text("8 years experience ",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Ibarra Real Nova",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                            RichText(
                                text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.star_half_outlined,
                                color: Color.fromARGB(255, 40, 178, 45),
                                size: 30,
                              )),
                              TextSpan(
                                  text: "4.5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20)),
                              TextSpan(
                                  text: "  Rated by 2000+ patients",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                            ])),
                            Text("Qualification:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            Text("MBBS",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                          ]),
                        ),
                      ],
                    )),
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
                          text: " Speaks:English",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("4:30 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("6:00 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("7:30 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("9:00 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400))))
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class cough extends StatefulWidget {
  const cough({Key? key}) : super(key: key);

  @override
  State<cough> createState() => _coughState();
}

class _coughState extends State<cough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ' you will be fine soon!!',
                    style: TextStyle(fontSize: 35),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Container(
          padding: EdgeInsets.all(18), //insert space within
          margin: EdgeInsets.only(bottom: 10),
          child: Center(
            //insert space within

            child: ListView(
              children: [
                Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(38), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/d3.jpg"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.Ravikant Kumar",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("General Physician.",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Ibarra Real Nova",
                                    color: Color.fromARGB(95, 26, 25, 25),
                                    decoration: TextDecoration.underline)),
                            Text("8 years experience ",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Ibarra Real Nova",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                            RichText(
                                text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 40, 178, 45),
                                size: 30,
                              )),
                              TextSpan(
                                  text: "4.9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20)),
                              TextSpan(
                                  text: "  Rated by 2000+ patients",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                            ])),
                            Text("Qualification:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            Text("MBBS",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                          ]),
                        ),
                      ],
                    )),
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
                          text: " Speaks:English",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("4:30 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("6:00 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("7:30 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("9:00 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400))))
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class minor extends StatefulWidget {
  const minor({Key? key}) : super(key: key);

  @override
  State<minor> createState() => _minorState();
}

class _minorState extends State<minor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/appbar.png"),
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ' you will be fine soon!!',
                    style: TextStyle(fontSize: 35),
                  )),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 42, 114, 178),
        ),
        body: Container(
          padding: EdgeInsets.all(18), //insert space within
          margin: EdgeInsets.only(bottom: 10),
          child: Center(
            //insert space within

            child: ListView(
              children: [
                Text("Best Doctor In Suggestion.",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(38), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/d4.jpg"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.vikash Kumar",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("General Physician/Orthopedist",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Ibarra Real Nova",
                                    color: Color.fromARGB(95, 26, 25, 25),
                                    decoration: TextDecoration.underline)),
                            Text("8 years experience ",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Ibarra Real Nova",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                            RichText(
                                text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 40, 178, 45),
                                size: 30,
                              )),
                              TextSpan(
                                  text: "4.9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20)),
                              TextSpan(
                                  text: "  Rated by 2000+ patients",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                            ])),
                            Text("Qualification:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            Text("MBBS",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                          ]),
                        ),
                      ],
                    )),
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
                          text: " Speaks:English",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                              fontSize: 20, fontWeight: FontWeight.w400))
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
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("4:00 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("5:00 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("7:30 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400)))),
                        new SizedBox(
                            width: 150,
                            height: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("9:30 PM",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400))))
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
