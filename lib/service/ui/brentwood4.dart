
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'brentwood5.dart';
import 'home.dart';



class Buspage4 extends StatefulWidget {
  @override
  State<Buspage4> createState() => _Buspage4State();
}

class _Buspage4State extends State<Buspage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,


          leading: InkWell(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
          },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black87,



            ),
          ),

        ),
        body: ListView(
          children: [
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Image(
                image: AssetImage(
                    "assets/image/WhatsApp Image 2024-01-06 at 12.22.20_aa57bfc5.jpg"),height: 400,
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
                        " Spacious Seating: Designed for adventure seekers, this bus offers ample space for gear and comfortable seating for all passengers"
                    " All-Terrain Capability: Built to tackle diverse landscapes, our Adventure Explorer ensures a smooth ride on any road"
                    " Outdoor Viewing Deck: Experience the thrill of the outdoors on the built-in viewing deck, perfect for capturing scenic moments",


                    style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),),
            SizedBox(height: 10),

            Center(child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Buspage5()));
            },



                child: Text("BookNow",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)))


          ],
        ));
  }
}
