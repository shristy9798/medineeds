// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/Doctors/general.dart';

import 'Doctors/2dermatologist.dart';

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
          backgroundColor: Colors.blueAccent,
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
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color.fromARGB(255, 119, 180, 230),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "General Physician",
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                ),
              ),
            ),
          ),
          Column(children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/fever.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(60),
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: ((context) {
                              //   return(fever());
                              // })));
                            },
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                child: Text(
                                  "EEh",
                                  style: TextStyle(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Fever",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),

                  // Container(
                  //   padding: EdgeInsets.all(18), //insert space within
                  //   margin: EdgeInsets.only(bottom: 10),
                  //   child: Center(
                  //     child: InkWell(
                  //       splashColor: Colors.black26,
                  //       onTap: () {},
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: [
                  //           Ink.image(
                  //             image: AssetImage("images/fever.png"),
                  //             height: 100,
                  //             width: 100,
                  //             fit: BoxFit.cover,
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             "Fever",
                  //             style:
                  //                 TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/dizziness.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(60),
                            onTap: () {
                              //  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                              //   return(diziness());
                              // })));
                            },
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                child: Text(
                                  "EEh",
                                  style: TextStyle(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Dizziness",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(10), //insert space within
                  //   margin: EdgeInsets.only(bottom: 5),
                  //   child: Center(
                  //     child: InkWell(
                  //       splashColor: Colors.black26,
                  //       onTap: () {},
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: [
                  //           Ink.image(
                  //             image: AssetImage("images/dizziness.jpg"),
                  //             height: 100,
                  //             width: 100,
                  //             fit: BoxFit.cover,
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             "Dizziness",
                  //             style:
                  //                 TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/cough.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(60),
                            onTap: () {
                              //  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                              //   return(cough());
                              // })));
                            },
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                child: Text(
                                  "EEh",
                                  style: TextStyle(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Cough",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        "",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/injury.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(60),
                            onTap: () {
                              //    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                              //     return(minor());
                              //   })));
                            },
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                child: Text(
                                  "EEh",
                                  style: TextStyle(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Minor",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        "injuries",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Center(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Container(
            //         padding: EdgeInsets.all(10), //insert space within
            //         margin: EdgeInsets.only(bottom: 5),
            //         child: Center(
            //           child: InkWell(
            //             splashColor: Colors.black26,
            //             onTap: () {},
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               children: [
            //                 Ink.image(
            //                   image: AssetImage("images/cough.jpg"),
            //                   height: 100,
            //                   width: 100,
            //                   fit: BoxFit.cover,
            //                 ),
            //                 SizedBox(
            //                   height: 5,
            //                 ),
            //                 Text(
            //                   "Cough",
            //                   style:
            //                       TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(10), //insert space within
            //         margin: EdgeInsets.only(bottom: 5),
            //         child: Center(
            //           child: InkWell(
            //             splashColor: Colors.black26,
            //             onTap: () {},
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               children: [
            //                 Ink.image(
            //                   image: AssetImage("images/injury.png"),
            //                   height: 80,
            //                   width: 100,
            //                   fit: BoxFit.cover,
            //                 ),
            //                 SizedBox(
            //                   height: 5,
            //                 ),
            //                 Text(
            //                   "Minor injuries",
            //                   style:
            //                       TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromARGB(255, 150, 193, 228),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Dermatologist",
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    ),
                  ),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(18), //insert space within
            //   margin: EdgeInsets.only(bottom: 10),

            //   color: Color.fromARGB(255, 207, 170, 146),
            //   width: 1000,
            //   height: 100,
            //   child: Center(
            //     child: Text(
            //       "Dermatologist",
            //       style: TextStyle(
            //         color: Colors.black38,
            //         fontSize: 35,
            //       ),
            //     ),
            //   ),
            // ),
            Column(children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/acne.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(60),
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: ((context) {
                                //   return (acne());
                                // })));
                              },
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                  child: Text(
                                    "EEh",
                                    style: TextStyle(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Acne Scars",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/hairloss.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(60),
                              onTap: () {
                                //    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                //   return(hair());
                                // })));
                              },
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                  child: Text(
                                    "EEh",
                                    style: TextStyle(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Hair loss",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/skin.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(60),
                              onTap: () {
                                //    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                //   return(skincare());
                                // })));
                              },
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                  child: Text(
                                    "EEh",
                                    style: TextStyle(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Skincare",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/vitiligo.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(60),
                              onTap: () {
                                //    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                //   return(vitiligo());
                                // })));
                              },
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 28, 20, 28),
                                  child: Text(
                                    "EEh",
                                    style: TextStyle(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Vitiligo",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Column(children: [
              //   Center(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Container(
              //           padding: EdgeInsets.all(18), //insert space within
              //           margin: EdgeInsets.only(bottom: 10),
              //           child: Center(
              //             child: InkWell(
              //               splashColor: Colors.black26,
              //               onTap: () {},
              //               child: Column(
              //                 mainAxisSize: MainAxisSize.min,
              //                 children: [
              //                   Ink.image(
              //                     image: AssetImage("images/acne.jpg"),
              //                     height: 100,
              //                     width: 100,
              //                     fit: BoxFit.cover,
              //                   ),
              //                   SizedBox(
              //                     height: 5,
              //                   ),
              //                   Text(
              //                     "Acne Scars",
              //                     style:
              //                         TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(10), //insert space within
              //           margin: EdgeInsets.only(bottom: 5),
              //           child: Center(
              //             child: InkWell(
              //               splashColor: Colors.black26,
              //               onTap: () {},
              //               child: Column(
              //                 mainAxisSize: MainAxisSize.min,
              //                 children: [
              //                   Ink.image(
              //                     image: AssetImage("images/hairloss.jpg"),
              //                     height: 100,
              //                     width: 100,
              //                     fit: BoxFit.cover,
              //                   ),
              //                   SizedBox(
              //                     height: 5,
              //                   ),
              //                   Text(
              //                     "Hair loss",
              //                     style:
              //                         TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //   Center(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Container(
              //           padding: EdgeInsets.all(10), //insert space within
              //           margin: EdgeInsets.only(bottom: 5),
              //           child: Center(
              //             child: InkWell(
              //               splashColor: Colors.black26,
              //               onTap: () {},
              //               child: Column(
              //                 mainAxisSize: MainAxisSize.min,
              //                 children: [
              //                   Ink.image(
              //                     image: AssetImage("images/skin.jpg"),
              //                     height: 100,
              //                     width: 100,
              //                     fit: BoxFit.cover,
              //                   ),
              //                   SizedBox(
              //                     height: 5,
              //                   ),
              //                   Text(
              //                     "Skincare",
              //                     style:
              //                         TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(10), //insert space within
              //           margin: EdgeInsets.only(bottom: 5),
              //           child: Center(
              //             child: InkWell(
              //               splashColor: Colors.black26,
              //               onTap: () {},
              //               child: Column(
              //                 mainAxisSize: MainAxisSize.min,
              //                 children: [
              //                   Ink.image(
              //                     image: AssetImage("images/vitiligo.jpg"),
              //                     height: 100,
              //                     width: 100,
              //                     fit: BoxFit.cover,
              //                   ),
              //                   SizedBox(
              //                     height: 5,
              //                   ),
              //                   Text(
              //                     "Vitiligo",
              //                     style:
              //                         TextStyle(fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // Container(
              //     padding: EdgeInsets.all(18), //insert space within
              //     margin: EdgeInsets.only(bottom: 10),
              //     color: Color.fromARGB(255, 218, 100, 198),
              //     width: 1000,
              //     height: 100,
              //     child: Center(
              //       child: Text(
              //         "Orthopedist",
              //         style: TextStyle(color: Colors.black38, fontSize: 35),
              //       ),
              //     )),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 150, 193, 228),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Orthopedist",
                        style: TextStyle(color: Colors.black, fontSize: 28),
                      ),
                    ),
                  ),
                ),
              ),
              Column(children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/knee pain.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(60),
                                onTap: () {},
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 28, 20, 28),
                                    child: Text(
                                      "EEh",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(0, 255, 255, 255),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Knee Pain",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/shoulder.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(60),
                                onTap: () {
                                  print("hello");
                                },
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 28, 20, 28),
                                    child: Text(
                                      "EEh",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(0, 255, 255, 255),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Shoulder pain",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/leg.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(60),
                                onTap: () {},
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 28, 20, 28),
                                    child: Text(
                                      "EEh",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(0, 255, 255, 255),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Leg Pain",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            " ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/carpel.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(60),
                                onTap: () {
                                  print("hello");
                                },
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 28, 20, 28),
                                    child: Text(
                                      "EEh",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(0, 255, 255, 255),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Carpal Tunnel",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            "Syndrome ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Column(children: [
                //   Center(
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Container(
                //           padding: EdgeInsets.all(18), //insert space within
                //           margin: EdgeInsets.only(bottom: 10),
                //           child: Center(
                //             child: InkWell(
                //               splashColor: Colors.black26,
                //               onTap: () {},
                //               child: Column(
                //                 mainAxisSize: MainAxisSize.min,
                //                 children: [
                //                   Ink.image(
                //                     image: AssetImage("images/knee pain.jpg"),
                //                     height: 100,
                //                     width: 100,
                //                     fit: BoxFit.cover,
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                   Text(
                //                     "Knee Pain",
                //                     style: TextStyle(
                //                         fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         Container(
                //           padding: EdgeInsets.all(10), //insert space within
                //           margin: EdgeInsets.only(bottom: 5),
                //           child: Center(
                //             child: InkWell(
                //               splashColor: Colors.black26,
                //               onTap: () {},
                //               child: Column(
                //                 mainAxisSize: MainAxisSize.min,
                //                 children: [
                //                   Ink.image(
                //                     image: AssetImage("images/shoulder.jpg"),
                //                     height: 100,
                //                     width: 100,
                //                     fit: BoxFit.cover,
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                   Text(
                //                     "Shoulder pain",
                //                     style: TextStyle(
                //                         fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                //   Center(
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Container(
                //           padding: EdgeInsets.all(10), //insert space within
                //           margin: EdgeInsets.only(bottom: 5),
                //           child: Center(
                //             child: InkWell(
                //               splashColor: Colors.black26,
                //               onTap: () {},
                //               child: Column(
                //                 mainAxisSize: MainAxisSize.min,
                //                 children: [
                //                   Ink.image(
                //                     image: AssetImage("images/leg.png"),
                //                     height: 100,
                //                     width: 100,
                //                     fit: BoxFit.cover,
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                   Text(
                //                     "Leg Pain",
                //                     style: TextStyle(
                //                         fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         Container(
                //           padding: EdgeInsets.all(10), //insert space within
                //           margin: EdgeInsets.only(bottom: 5),
                //           child: Center(
                //             child: InkWell(
                //               splashColor: Colors.black26,
                //               onTap: () {},
                //               child: Column(
                //                 mainAxisSize: MainAxisSize.min,
                //                 children: [
                //                   Ink.image(
                //                     image: AssetImage("images/carpel.png"),
                //                     height: 100,
                //                     width: 100,
                //                     fit: BoxFit.cover,
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                   Text(
                //                     "Carpal Tunnel",
                //                     style: TextStyle(
                //                         fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                //                   ),
                //                   Text(
                //                     " Syndrome ",
                //                     style: TextStyle(
                //                         fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                //                     textAlign: TextAlign.center,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromARGB(255, 150, 193, 228),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ENT Specialist",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
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
                          Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/sore.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(60),
                                    onTap: () {},
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 28, 20, 28),
                                        child: Text(
                                          "EEh",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Sore Throat",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/mouth.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(60),
                                    onTap: () {
                                      print("hello");
                                    },
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 28, 20, 28),
                                        child: Text(
                                          "EEh",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Mouth Sores",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/snore.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(60),
                                    onTap: () {},
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 28, 20, 28),
                                        child: Text(
                                          "EEh",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Snoring",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/hear.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(60),
                                    onTap: () {
                                      print("hello");
                                    },
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 28, 20, 28),
                                        child: Text(
                                          "EEh",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Hearing Loss",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(18), //insert space within
                    //   margin: EdgeInsets.only(bottom: 10),

                    //   color: Color.fromARGB(255, 207, 170, 146),
                    //   width: 1000,
                    //   height: 100,
                    //   child: Center(
                    //     child: Text(
                    //       "ENT Specialist",
                    //       style: TextStyle(
                    //         color: Colors.black38,
                    //         fontSize: 35,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Column(
                    //   children: [
                    //     Center(
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //         children: [
                    //           Container(
                    //             padding: EdgeInsets.all(18), //insert space within
                    //             margin: EdgeInsets.only(bottom: 10),
                    //             child: Center(
                    //               child: InkWell(
                    //                 splashColor: Colors.black26,
                    //                 onTap: () {},
                    //                 child: Column(
                    //                   mainAxisSize: MainAxisSize.min,
                    //                   children: [
                    //                     Ink.image(
                    //                       image: AssetImage("images/sore.jpg"),
                    //                       height: 100,
                    //                       width: 100,
                    //                       fit: BoxFit.cover,
                    //                     ),
                    //                     SizedBox(
                    //                       height: 5,
                    //                     ),
                    //                     Text(
                    //                       "Sore Throat",
                    //                       style: TextStyle(
                    //                           fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Container(
                    //             padding: EdgeInsets.all(10), //insert space within
                    //             margin: EdgeInsets.only(bottom: 5),
                    //             child: Center(
                    //               child: InkWell(
                    //                 splashColor: Colors.black26,
                    //                 onTap: () {},
                    //                 child: Column(
                    //                   mainAxisSize: MainAxisSize.min,
                    //                   children: [
                    //                     Ink.image(
                    //                       image: AssetImage("images/mouth.png"),
                    //                       height: 100,
                    //                       width: 100,
                    //                       fit: BoxFit.cover,
                    //                     ),
                    //                     SizedBox(
                    //                       height: 5,
                    //                     ),
                    //                     Text(
                    //                       "Mouth Sores",
                    //                       style: TextStyle(
                    //                           fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     Center(
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //         children: [
                    //           Container(
                    //             padding: EdgeInsets.all(10), //insert space within
                    //             margin: EdgeInsets.only(bottom: 5),
                    //             child: Center(
                    //               child: InkWell(
                    //                 splashColor: Colors.black26,
                    //                 onTap: () {},
                    //                 child: Column(
                    //                   mainAxisSize: MainAxisSize.min,
                    //                   children: [
                    //                     Ink.image(
                    //                       image: AssetImage("images/snore.jpg"),
                    //                       height: 100,
                    //                       width: 100,
                    //                       fit: BoxFit.cover,
                    //                     ),
                    //                     SizedBox(
                    //                       height: 5,
                    //                     ),
                    //                     Text(
                    //                       "Snoring",
                    //                       textAlign: TextAlign.center,
                    //                       style: TextStyle(
                    //                         fontSize: 20,
                    //                         color:Color.fromARGB(255, 150, 193, 228),,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Container(
                    //             padding: EdgeInsets.all(10), //insert space within
                    //             margin: EdgeInsets.only(bottom: 5),
                    //             child: Center(
                    //               child: InkWell(
                    //                 splashColor: Colors.black26,
                    //                 onTap: () {},
                    //                 child: Column(
                    //                   mainAxisSize: MainAxisSize.min,
                    //                   children: [
                    //                     Ink.image(
                    //                       image: AssetImage("images/hear.jpg"),
                    //                       height: 100,
                    //                       width: 100,
                    //                       fit: BoxFit.cover,
                    //                     ),
                    //                     SizedBox(
                    //                       height: 5,
                    //                     ),
                    //                     Text(
                    //                       "Hearing Loss",
                    //                       style: TextStyle(
                    //                           fontSize: 20, color:Color.fromARGB(255, 150, 193, 228),),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    // Container(
                    //     padding: EdgeInsets.all(18), //insert space within
                    //     margin: EdgeInsets.only(bottom: 10),
                    //     color: Color.fromARGB(255, 172, 221, 233),
                    //     width: 1000,
                    //     height: 125,
                    //     child: Center(
                    //       child: Text(
                    //         "Choose Other Specialists",
                    //         style:
                    //             TextStyle(color: Colors.black38, fontSize: 35),
                    //       ),
                    //     )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color.fromARGB(255, 150, 193, 228),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Choose Other Specialists",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 28),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(children: [
                      SizedBox(height: 5),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/Pediatrics.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(60),
                                      onTap: () {},
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 28, 20, 28),
                                          child: Text(
                                            "EEh",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Pediatrics",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/gyno.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(60),
                                      onTap: () {},
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 28, 20, 28),
                                          child: Text(
                                            "EEh",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Gynaecology",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/Psychiatry.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(60),
                                      onTap: () {},
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 28, 20, 28),
                                          child: Text(
                                            "EEh",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Psychiatry",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            // Container(
                            //   padding: EdgeInsets.all(15), //insert space within
                            //   margin: EdgeInsets.only(bottom: 10),
                            //   child: Center(
                            //     child: InkWell(
                            //       splashColor: Colors.black26,
                            //       onTap: () {},
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: [
                            //           Ink.image(
                            //             image:
                            //                 AssetImage("images/Pediatrics.jpg"),
                            //             height: 80,
                            //             width: 80,
                            //             fit: BoxFit.cover,
                            //           ),
                            //           SizedBox(
                            //             height: 5,
                            //           ),
                            //           Text(
                            //             "Pediatrics",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(10), //insert space within
                            //   margin: EdgeInsets.only(bottom: 5),
                            //   child: Center(
                            //     child: InkWell(
                            //       splashColor: Colors.black26,
                            //       onTap: () {},
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: [
                            //           Ink.image(
                            //             image: AssetImage("images/gyno.jpg"),
                            //             height: 80,
                            //             width: 80,
                            //             fit: BoxFit.cover,
                            //           ),
                            //           SizedBox(
                            //             height: 5,
                            //           ),
                            //           Text(
                            //             "Gynaecology",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(10), //insert space within
                            //   margin: EdgeInsets.only(bottom: 5),
                            //   child: Center(
                            //     child: InkWell(
                            //       splashColor: Colors.black26,
                            //       onTap: () {},
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: [
                            //           Ink.image(
                            //             image:
                            //                 AssetImage("images/Psychiatry.jpg"),
                            //             height: 80,
                            //             width: 80,
                            //             fit: BoxFit.cover,
                            //           ),
                            //           SizedBox(
                            //             height: 5,
                            //           ),
                            //           Text(
                            //             "Psychiatry",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/Dental.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(60),
                                      onTap: () {},
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 28, 20, 28),
                                          child: Text(
                                            "EEh",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Dental",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/Pulmonology.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(60),
                                      onTap: () {},
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 28, 20, 28),
                                          child: Text(
                                            "EEh",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Pulmonology",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/diet.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(60),
                                      onTap: () {},
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 28, 20, 28),
                                          child: Text(
                                            "EEh",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    0, 255, 255, 255),
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Diet &",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                Text(
                                  "Nutrition",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            // Container(
                            //   padding: EdgeInsets.all(10), //insert space within
                            //   margin: EdgeInsets.only(bottom: 5),
                            //   child: Center(
                            //     child: InkWell(
                            //       splashColor: Colors.black26,
                            //       onTap: () {},
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: [
                            //           Ink.image(
                            //             image: AssetImage("images/Dental.jpg"),
                            //             height: 80,
                            //             width: 80,
                            //             fit: BoxFit.cover,
                            //           ),
                            //           SizedBox(
                            //             height: 5,
                            //           ),
                            //           Text(
                            //             "Dental",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(10), //insert space within
                            //   margin: EdgeInsets.only(bottom: 5),
                            //   child: Center(
                            //     child: InkWell(
                            //       splashColor: Colors.black26,
                            //       onTap: () {},
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: [
                            //           Ink.image(
                            //             image: AssetImage(
                            //                 "images/Pulmonology.jpg"),
                            //             height: 80,
                            //             width: 80,
                            //             fit: BoxFit.cover,
                            //           ),
                            //           SizedBox(
                            //             height: 5,
                            //           ),
                            //           Text(
                            //             "Pulmonology",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(10), //insert space within
                            //   margin: EdgeInsets.only(bottom: 5),
                            //   child: Center(
                            //     child: InkWell(
                            //       splashColor: Colors.black26,
                            //       onTap: () {},
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         children: [
                            //           Ink.image(
                            //             image: AssetImage("images/diet.jpg"),
                            //             height: 80,
                            //             width: 80,
                            //             fit: BoxFit.cover,
                            //           ),
                            //           SizedBox(
                            //             height: 5,
                            //           ),
                            //           Text(
                            //             "Diet &",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //           ),
                            //           Text(
                            //             "Nutrition",
                            //             style: TextStyle(
                            //                 fontSize: 18, color:Color.fromARGB(255, 150, 193, 228),),
                            //             textAlign: TextAlign.center,
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
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
