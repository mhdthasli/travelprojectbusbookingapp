import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:google_fonts/google_fonts.dart';

import '../firebase.dart';


import 'loginpage.dart';

class registration extends StatefulWidget {
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  String? name;
  String? email;
  String? password;
  bool showpass = true;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/image/WhatsApp Image 2024-01-02 at 12.41.24_5c3f73ef.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Form(
              key: formkey,
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Text(
                            "Create Your  Account",
                            style: GoogleFonts.macondo(
                                color: Colors.orange[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 50),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          TextFormField(textInputAction: TextInputAction.next,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(filled: true,fillColor: Colors.white24,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.white),

                                ),

                                  labelText: "Name",

                                  hintText: "Enter your name",
                                  hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  )),
                              validator: (name) {
                                if (name!.isEmpty) {
                                  return "Enter Some value";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (ename) {
                                name = ename;
                              }),
                          SizedBox(
                            height: 45,
                          ),
                          TextFormField(textInputAction: TextInputAction.next,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: Colors.white24,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  labelText: "email",
                                  hintText: "Enter your email",
                                  hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  suffixIcon: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  )),
                              validator: (email) {
                                if (email!.isEmpty) {
                                  return "Enter Some value";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (eemail) {
                                email = eemail;
                              }),
                          SizedBox(
                            height: 45,
                          ),
                          TextFormField(textInputAction: TextInputAction.next,
                              style: TextStyle(color: Colors.white),
                              obscureText: showpass,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(fillColor: Colors.white24,filled: true,


                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.white)
                                  ),
                                  labelText: "password",
                                  hintText: "Enter your password",
                                  labelStyle: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold
                                  ),
                                  hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  suffixIcon: Icon(
                                    Icons.password,
                                    color: Colors.white,
                                  ),
                              ),

                              validator: (password) {
                                if (password!.isEmpty) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (epass) {
                                password = epass;
                              }),
                          SizedBox(
                            height: 24,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(height: 70,width: 300,


                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: ElevatedButton(style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orangeAccent
                                ),
                                    onPressed: () {
                                      if (formkey.currentState!.validate())
                                      {
                                        formkey.currentState!.save();
                                        FireHelper1()
                                            .signUp(mail: email!, pasword: password!)
                                            .then((value) {
                                          if (value == null) {
                                            Get.to(Login());
                                          } else {
                                            Get.snackbar(
                                                "Error", "User not found $value");
                                          }
                                        });
                                      }
                                    },
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height:20 ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },


                            child: Text(""),
                          ),// child: Text("Create New Account",style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
