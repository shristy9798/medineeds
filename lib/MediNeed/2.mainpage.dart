// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mainpage(),
  ));
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  var choices = ["Help", "Chat", "Feedback", "Appointments"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "DOCTOR'S CABIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.orangeAccent,
          actions: [
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return choices.map((String myChoice) {
                return PopupMenuItem(child: Text(myChoice), value: myChoice);
              }).toList();
            })
          ],
        ),
        body: Center(
            child: ListView(children: [
          Text(
            "General Physician",
            style: TextStyle(color: Colors.black38, fontSize: 35),
          ),
          Column(children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(18), //insert space within
                    margin: EdgeInsets.only(bottom: 10),
                    child: Center(
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage("images/fever.png"),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fever",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10), //insert space within
                    margin: EdgeInsets.only(bottom: 5),
                    child: Center(
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage("images/dizziness.jpg"),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Dizziness",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(10), //insert space within
                    margin: EdgeInsets.only(bottom: 5),
                    child: Center(
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage("images/cough.jpg"),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cough",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10), //insert space within
                    margin: EdgeInsets.only(bottom: 5),
                    child: Center(
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage("images/injury.png"),
                              height: 80,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Minor injuries",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(18), //insert space within
              margin: EdgeInsets.only(bottom: 10),

              color: Color.fromARGB(255, 247, 170, 146),
              width: 1000,
              height: 100,
              child: Center(
                child: Text(
                  "Dermatologist",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Column(children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(18), //insert space within
                      margin: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: InkWell(
                          splashColor: Colors.black26,
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Ink.image(
                                image: AssetImage("images/acne.jpg"),
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Acne Scars",
                                style:
                                    TextStyle(fontSize: 24, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10), //insert space within
                      margin: EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: InkWell(
                          splashColor: Colors.black26,
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Ink.image(
                                image: AssetImage("images/hairloss.jpg"),
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Hair loss",
                                style:
                                    TextStyle(fontSize: 24, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), //insert space within
                      margin: EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: InkWell(
                          splashColor: Colors.black26,
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Ink.image(
                                image: AssetImage("images/skin.jpg"),
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Skincare",
                                style:
                                    TextStyle(fontSize: 24, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10), //insert space within
                      margin: EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: InkWell(
                          splashColor: Colors.black26,
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Ink.image(
                                image: AssetImage("images/vitiligo.jpg"),
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Vitiligo",
                                style:
                                    TextStyle(fontSize: 24, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(18), //insert space within
                  margin: EdgeInsets.only(bottom: 10),
                  color: Color.fromARGB(255, 218, 100, 198),
                  width: 1000,
                  height: 100,
                  child: Center(
                    child: Text(
                      "Orthopedist",
                      style: TextStyle(color: Colors.black38, fontSize: 35),
                    ),
                  )),
              Column(children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18), //insert space within
                        margin: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: AssetImage("images/knee pain.jpg"),
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Knee Pain",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10), //insert space within
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: AssetImage("images/shoulder.jpg"),
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Shoulder pain",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10), //insert space within
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: AssetImage("images/leg.png"),
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Leg Pain",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10), //insert space within
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: AssetImage("images/carpel.png"),
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Carpal Tunnel",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.blue),
                                ),
                                Text(
                                  " Syndrome ",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18), //insert space within
                  margin: EdgeInsets.only(bottom: 10),

                  color: Color.fromARGB(255, 247, 170, 146),
                  width: 1000,
                  height: 100,
                  child: Center(
                    child: Text(
                      "ENT Specialist",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18), //insert space within
                            margin: EdgeInsets.only(bottom: 10),
                            child: Center(
                              child: InkWell(
                                splashColor: Colors.black26,
                                onTap: () {},
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Ink.image(
                                      image: AssetImage("images/sore.jpg"),
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Sore Throat",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10), //insert space within
                            margin: EdgeInsets.only(bottom: 5),
                            child: Center(
                              child: InkWell(
                                splashColor: Colors.black26,
                                onTap: () {},
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Ink.image(
                                      image: AssetImage("images/mouth.png"),
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Mouth Sores",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10), //insert space within
                            margin: EdgeInsets.only(bottom: 5),
                            child: Center(
                              child: InkWell(
                                splashColor: Colors.black26,
                                onTap: () {},
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Ink.image(
                                      image: AssetImage("images/snore.jpg"),
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Snoring",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10), //insert space within
                            margin: EdgeInsets.only(bottom: 5),
                            child: Center(
                              child: InkWell(
                                splashColor: Colors.black26,
                                onTap: () {},
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Ink.image(
                                      image: AssetImage("images/hear.jpg"),
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Hearing Loss",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(18), //insert space within
                        margin: EdgeInsets.only(bottom: 10),
                        color: Color.fromARGB(255, 172, 221, 233),
                        width: 1000,
                        height: 125,
                        child: Center(
                          child: Text(
                            "Choose Other Specialists",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 35),
                          ),
                        )),
                    Column(children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15), //insert space within
                              margin: EdgeInsets.only(bottom: 10),
                              child: Center(
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Ink.image(
                                        image:
                                            AssetImage("images/Pediatrics.jpg"),
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Pediatrics",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10), //insert space within
                              margin: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Ink.image(
                                        image: AssetImage("images/gyno.jpg"),
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Gynaecology",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10), //insert space within
                              margin: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Ink.image(
                                        image:
                                            AssetImage("images/Psychiatry.jpg"),
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Psychiatry",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10), //insert space within
                              margin: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Ink.image(
                                        image: AssetImage("images/Dental.jpg"),
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Dental",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10), //insert space within
                              margin: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Ink.image(
                                        image: AssetImage(
                                            "images/Pulmonology.jpg"),
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Pulmonology",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10), //insert space within
                              margin: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Ink.image(
                                        image: AssetImage("images/diet.jpg"),
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Diet &",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                      Text(
                                        "Nutrition",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ],
                )
              ]),
            ])
          ])
        ])));
  }
}
