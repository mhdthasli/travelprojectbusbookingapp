
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lottie/lottie.dart';


import 'loginpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(

    debugShowCheckedModeBanner: false,
    home: Splash (),
  ));
}
class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState(){
    super.initState();
    Future.delayed(Duration(seconds:10),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.black87,
     body:Padding(
       padding: const EdgeInsets.all(0),
       child: Center(
         child: SizedBox(
           child: Lottie.asset("assets/animation/Animation - 1706080324353.json"),
         ),
       ),
     ),



   );
  }
}