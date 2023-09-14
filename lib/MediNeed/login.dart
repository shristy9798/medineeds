// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_init_to_null,
// import 'package:firebase_core/firebase_core.dart';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medineeds/MediNeed/2.mainpage.dart';
import 'package:medineeds/MediNeed/signup.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
void main(){
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
  int s = 0;
  String useremail = '';
  var st = true;

  String? mailerror = null;

  String? passerror = null;

  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // void signin() async {
  //   final User? user = (await _auth.signInWithEmailAndPassword(
  //           email: email.text, password: pass.text))
  //       .user;
  //   setState(() {
  //     s = 3;
  //   });
  //   if (user != null) {
  //     setState(() {
  //       s = 2;
  //       useremail = user.email!;
  //     });
  //   } else {
  //     setState(() {
  //       s = 3;
  //     });
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
                  child: Image.asset("images/splash2.png"),
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
                  controller: pass,
                  maxLength: 6,
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
                SizedBox(height: 25),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(220, 45, 57, 121),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () async {
                      setState(() {
                        if (email.text.isEmpty) {
                          mailerror = "Enter valid mail id";
                        } else {
                          mailerror = null;
                        }

                        if (pass.text.isEmpty) {
                          passerror = "Enter password";
                        } else {
                          passerror = null;
                        }
                      });
                      if (email.text.isNotEmpty && pass.text.isNotEmpty) {
                        // signin();
                      }
                      if (email.text.isNotEmpty &&
                          pass.text.isNotEmpty &&
                          pass.text.length == 6 &&
                          s == 2) {
                        email.clear();
                        pass.clear();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return (mainpage());
                        }));
                      } else {
                        setState(() {
                          s = 1;
                        });
                      }
                      
                    },
                    child: Text("Login")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New member ?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => signup())));
                      },
                      child: Text(
                        "Sign Up now",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  s == 0
                      ? ''
                      : (s == 2
                          ? 'Signed in Successfully \n    Press login again'
                          : (s == 1
                              ? 'Sign in failed Try again'
                              : 'Validating Please wait')),
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
