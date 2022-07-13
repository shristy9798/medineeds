// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_init_to_null,
//import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/2.mainpage.dart';

void main() async {
 // WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
  ));
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var st = true;

  String? nameerror = null;

  String? mailerror = null;

  String? phoneerror = null;

  String? passerror = null;

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController pass = TextEditingController();

 // final firebase = FirebaseFirestore.instance;

  // void create() async {
  //   print(name.text);
  //   try {
  //     await firebase
  //         .collection("User")
  //         // .doc()
  //         .doc(phone.text)
  //         .set({
  //       "name": name.text,
  //       "email": email.text,
  //       "Phone": phone.text,
  //       "pass": pass.text
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset("images/medilog.PNG"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Text(
                  "Welcome to MediNeeds",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 70),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      errorText: nameerror,
                      labelText: "Name",
                      hintText: "Enter your name",
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(220, 45, 57, 121)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color.fromARGB(220, 45, 57, 121),
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color.fromARGB(220, 45, 57, 121),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(220, 45, 57, 121),
                      )),
                ),
                SizedBox(height: 35),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hoverColor: Color.fromARGB(220, 45, 57, 121),
                      focusColor: Color.fromARGB(220, 45, 57, 121),
                      errorText: mailerror,
                      labelText: "Email",
                      hintText: "Enter your email",
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(220, 45, 57, 121)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color.fromARGB(220, 45, 57, 121),
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color.fromARGB(220, 45, 57, 121),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Icon(
                        Icons.alternate_email,
                        color: Color.fromARGB(220, 45, 57, 121),
                      )),
                ),
                SizedBox(height: 35),
                TextField(
                  controller: phone,
                  maxLength: 10,
                  decoration: InputDecoration(
                    errorText: phoneerror,
                    labelText: "Mobile no.",
                    hintText: "Enter your Mobile no. ",
                    labelStyle: TextStyle(
                        fontSize: 20, color: Color.fromARGB(220, 45, 57, 121)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color.fromARGB(220, 45, 57, 121),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromARGB(220, 45, 57, 121),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Color.fromARGB(220, 45, 57, 121),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 28),
                TextField(
                  controller: pass,
                  decoration: InputDecoration(
                    errorText: passerror,
                    labelText: "Password",
                    hintText: "Enter your password",
                    labelStyle: TextStyle(
                        fontSize: 20, color: Color.fromARGB(220, 45, 57, 121)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color.fromARGB(220, 45, 57, 121),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromARGB(220, 45, 57, 121),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                        color: Color.fromARGB(220, 45, 57, 121),
                        onPressed: () {
                          setState(() {
                            st = !st;
                          });
                        },
                        icon:
                            Icon(st ? Icons.visibility : Icons.visibility_off)),
                  ),
                  obscureText: st,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(220, 45, 57, 121),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      
                      setState(() {
                        if (name.text.isEmpty) {
                          nameerror = "Enter your name";
                        } else {
                          nameerror = null;
                        }
                        if (email.text.isEmpty) {
                          mailerror = "Enter valid mail id";
                        } else {
                          mailerror = null;
                        }
                        if (phone.text.isEmpty) {
                          phoneerror = "Enter valid mobile no.";
                        } else if (phone.text.length != 10 &&
                            phone.text.isNotEmpty) {
                          phoneerror = "Number must consist 10 digits";
                        } else {
                          phoneerror = null;
                        }
                        if (pass.text.isEmpty) {
                          passerror = "Enter password";
                        } else {
                          passerror = null;
                        }
                      });

                      if (name.text.isNotEmpty &&
                          email.text.isNotEmpty &&
                          pass.text.isNotEmpty &&
                          phone.text.length == 10) {
                        //create();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return (mainpage());
                        }));
                      }
                    },
                    child: Text("Submit"))
              ],
            ),
          )
        ]),
      )),
    );
  }
}
