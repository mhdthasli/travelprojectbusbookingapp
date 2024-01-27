
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'brentwoodbus2.dart';
import 'home.dart';



class Buspage1 extends StatefulWidget {
  @override
  State<Buspage1> createState() => _Buspage1State();
}

class _Buspage1State extends State<Buspage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Home()) );},

            child: Icon(Icons.arrow_back),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image(
                image: AssetImage(
                    "assets/image/WhatsApp Image 2024-01-06 at 12.16.14_58ab6a03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "Description",
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, fontSize: 29),
                  ),
                  SizedBox(height:2 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  Plush Leather Seats: Sink into the lap of luxury with our comfortable leather seats, ensuring a relaxing journey"
                      " Panoramic Windows: Enjoy breathtaking views through expansive windows that provide an immersive experience"
                      " Onboard Entertainment: Stay entertained with individual multimedia systems, offering a variety of music, movies, and information",
                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
                ),),
            SizedBox(height: 10),

            Center(child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Buspage2()));
            },



                child: Text("BookNow",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)))


          ],
        ));
  }
}
