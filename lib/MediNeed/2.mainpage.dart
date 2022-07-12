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
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb8cqPLU8Nf8kBzhbRfF7oEdLsmn3G51ABPw&usqp=CAU"),
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
                              image: NetworkImage(
                                  "data:image/jpeg;base64,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"),
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
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSss4ZAzeKwz9a0c4Dv2dLpfT-pRhGRQlCSsg&usqp=CAU"),
                              height: 100,
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
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/z/woman-shines-mirror-withe-acne-woman-shines-mirror-concerns-acne-her-face-147781215.jpg"),
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
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw7PVqQHLw4WaO9fQHOfoLil6a-SatKhnl8g&usqp=CAU"),
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
                                image: NetworkImage(
                                    "data:image/jpeg;base64,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"),
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
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqXbLxl5DXRiXZMj7PomLNVHBy7nFAKRZAyQ&usqp=CAU"),
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
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbPHm92V1gJUGwQy0Fl4uUPT2R99QxzA4g8A&usqp=CAU"),
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
                                  image: NetworkImage(
                                      "data:image/jpeg;base64,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"),
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
                                  image: NetworkImage(
                                      "data:image/jpeg;base64,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"),
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
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIVMyN-TEbvTYezUM3uMUFEKEeQqT8OBQxcA&usqp=CAU"),
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
                                      image: NetworkImage(
                                          "data:image/jpeg;base64,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"),
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
                                      image: NetworkImage(
                                          "data:image/jpeg;base64,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"),
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
                                      image: NetworkImage(
                                          "https://thumbs.dreamstime.com/z/loud-snoring-man-image-loudly-41425396.jpg"),
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
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTM8eClABgNRCM2fpjI1-0KyfcTUK38uYDwQ&usqp=CAU"),
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
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGjdrvLxymsa1KkLP6ZRHvmd4jA0CiA-gejg&usqp=CAU"),
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
                                        image: NetworkImage(
                                            "data:image/jpeg;base64,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"),
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
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0uQM9afwiZMwuAL2OTNGDE94_NyxW2Msq1g&usqp=CAU"),
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
                                        image: NetworkImage(
                                            "data:image/jpeg;base64,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"),
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
                                        image: NetworkImage(
                                            "data:image/jpeg;base64,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"),
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
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmpNle0Unp-h22oNk387hAsd02jo5T1CvRCw&usqp=CAU"),
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
