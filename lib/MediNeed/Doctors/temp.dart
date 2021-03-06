import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(home: acne()));
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                    ' you will be ok soon!!',
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
                          image: AssetImage("images/4drma.jpg"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.Himanshu Raj",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("Dermatologist",
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
                            Text("MBBS,MD-Dermatology,(FAM)",
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
                          image: AssetImage("images/3drma.jpg"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.Saumya Rawat",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("Dermatologist",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Ibarra Real Nova",
                                    color: Color.fromARGB(95, 26, 25, 25),
                                    decoration: TextDecoration.underline)),
                            Text("5 years experience ",
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
                            Text("MBBS,DDVL",
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
                          image: AssetImage("images/2drma.jpg"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.Nisha Kumari",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("Dermatologist.",
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
                            Text("MBBS,MD-Dermatology",
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
                          image: AssetImage("images/1drma.jpg"),
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 58), //insert space within

                          child: Column(children: [
                            Text(
                              "Dr.vikash vatra",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Oswald",
                              ),
                            ),
                            Text("Dermatologist",
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
                            Text("MBBS,MD Dermatology ",
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
