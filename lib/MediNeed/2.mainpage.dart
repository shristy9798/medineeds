// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:medineeds/MediNeed/Doctors/ent.dart';
import 'package:medineeds/MediNeed/Doctors/general.dart';
import 'package:medineeds/MediNeed/Doctors/ortho.dart';
import 'package:medineeds/MediNeed/Doctors/other.dart';
import 'package:medineeds/MediNeed/appoint.dart';
import 'package:medineeds/MediNeed/help.dart';
import 'package:medineeds/MediNeed/login.dart';

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
  var choices = ["Help", "Appointments","Sign Out"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "DOCTOR'S CABIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.orangeAccent,
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return choices.map((String myChoice) {
                  return PopupMenuItem(child: Text(myChoice), value: myChoice);
                }).toList();
              },
              onSelected: (value) {
                if (value == 'Help') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => help())));
                }
                if (value == 'Appointments') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => appoint())));
                }
                if (value == 'Sign Out') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => login())));
                }
              },
            )
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return (fever());
                              })));
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return (diziness());
                              })));
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return (cough());
                              })));
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return (minor());
                              })));
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
                      "Dermatologist",
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
                                  'images/acne.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(60),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return (acne());
                                })));
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return (hair());
                                })));
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return (skincare());
                                })));
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return (vitiligo());
                                })));
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return (knee());
                                  }));
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
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return (shoulder());
                                  })));
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return (leg());
                                  })));
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
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return (carpol());
                                  })));
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
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return (soar());
                                      })));
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
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return (mouth());
                                      })));
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
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return (snoring());
                                      })));
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
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return (hearing());
                                      })));
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
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return (ped());
                                        })));
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
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return (gyno());
                                        })));
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
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return (psy());
                                        })));
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
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return (dental());
                                        })));
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
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return (pul());
                                        })));
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
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return (diet());
                                        })));
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
