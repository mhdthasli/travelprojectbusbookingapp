import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelbusbookingapp/service/ui/registerpage.dart';


import '../firebase.dart';
import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(

    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
  String? password;
  bool showpass = true;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Center(child: Text("")),
        // leading: GestureDetector(onTap: (){
        //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
        // },child: Icon(Icons.arrow_back_ios),),

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
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Login Your Account",
                                  style: GoogleFonts.macondo(
                                      color: Colors.orange[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50),
                                ),
                                SizedBox(height: 45),
                                TextFormField(textInputAction: TextInputAction.next,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white24,
                                      hintText: "Enter your email id",
                                      hintStyle:
                                          TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      labelStyle:
                                          TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      suffixIcon: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.white)),
                                      labelText: "Email",
                                    ),
                                    validator: (email) {
                                      if (email!.isEmpty || !email.contains("@") || !email.contains(".com")) {
                                        return "Enter Some value";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (eemail) {
                                      email = eemail;
                                    }),
                                const SizedBox(
                                  height: 45,
                                ),
                                TextFormField(textInputAction: TextInputAction.next,
                                    style: TextStyle(color: Colors.white),
                                    obscureText: showpass,
                                    obscuringCharacter: "*",
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white24,
                                        hintText: "Enter your password",
                                        hintStyle:
                                            TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        labelStyle:
                                            TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        suffixIcon: Icon(Icons.password,
                                            color: Colors.white),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.redAccent)),
                                        labelText: "Password"),
                                    validator: (password) {
                                      if (password!.isEmpty || password.length < 6) {
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
                                  child: SizedBox(
                                    height: 70,
                                    width: 300,
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.orangeAccent),
                                          onPressed: () {
                                            if (formkey.currentState!
                                                .validate());
                                            {
                                              formkey.currentState!.save();
                                              FireHelper1()
                                                  .signIn(
                                                      mail: email!,
                                                      pasword: password!)
                                                  .then((value) {
                                                if (value == null) {
                                                  Get.to(Home());

                                                } else {
                                            Get.snackbar("Error",
                                            "User not found $value");





                                                }
                                              });
                                            }
                                          },

                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(registration());
                                    },
                                    child: Text(
                                      "Don't have an account? Sign Up",
                                      style: GoogleFonts.aBeeZee(
                                          color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ))))),
        ),
      )
    ]));
  }
}
