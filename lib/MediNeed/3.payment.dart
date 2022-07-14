import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: pay(),
  ));
}

class pay extends StatefulWidget {
  const pay({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Consumer Payments",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          /*Image(
            image: AssetImage("images/pay.jpg"),
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),*/
          Container(
            padding: EdgeInsets.all(18), //insert space within
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),

            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "  To pay:",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25)),
              WidgetSpan(
                  child: Icon(
                Icons.currency_rupee,
                color: Colors.black,
                size: 25,
              )),
              TextSpan(
                  text: "499.00",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
            ])),
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
                      color: Color.fromARGB(255, 8, 50, 66),
                      size: 30,
                    )),
                    TextSpan(
                        text: "Debit/Credit Card",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500)),
                  ]),
                ),
                TextField(
                  controller: card,
                  decoration: InputDecoration(
                      errorText: carderror,
                      labelText: "card Number",
                      hintText: "XXXX XXXX XXXX",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.wallet)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: card,
                  decoration: InputDecoration(
                      errorText: carderror,
                      labelText: "card Holder's Name",
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
                  controller: card,
                  decoration: InputDecoration(
                      errorText: carderror,
                      labelText: "Valid Upto",
                      hintText: "MM/YY",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_month_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: card,
                  decoration: InputDecoration(
                      errorText: carderror,
                      labelText: " Enter CVV",
                      hintText: "***",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(220, 0, 6, 8)),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.wallet)),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(220, 45, 57, 121),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      /* setState(() {
                        if (card.text.isEmpty) {
                          carderror = "Enter your name";
                        } else {
                          nameerror = null;
                        }
                        if (name.text.isEmpty) {
                          nameerror = "Enter valid mail id";
                        } else {
                          nameerror = null;
                        }
                        if (valid.text.isEmpty) {
                          validerror = "Enter valid mobile no.";
                        } else if (valid.text.length != 10 &&
                            valid.text.isNotEmpty) {
                          validerror = "Number must consist 10 digits";
                        } else {
                          validerror = null;
                        }
                        if (cvv.text.isEmpty) {
                          cvverror = "Enter cvvword";
                        } else {
                          cvverror = null;
                        }
                      });

                      if (card.text.isNotEmpty &&
                          name.text.isNotEmpty &&
                          cvv.text.isNotEmpty &&
                          valid.text.length == 10) {
                        //create();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return (mainpage());
                        }));
                      }*/
                    },
                    child: Text("Pay"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
