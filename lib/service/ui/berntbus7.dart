
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelbusbookingapp/service/ui/berntbus8.dart';


import 'brentwood5.dart';
import 'home.dart';



class Buspage7 extends StatefulWidget {
  @override
  State<Buspage7> createState() => _Buspage7State();
}

class _Buspage7State extends State<Buspage7> {
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
                    "assets/image/WhatsApp Image 2024-01-06 at 12.22.20_c96a9786.jpg"),height: 400,
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
                        " Cultural Ambiance: Immerse yourself in the ambiance of the region with themed interiors, showcasing local art and design"
                    " Knowledgeable Guides: Enjoy the company of expert guides who share fascinating stories and insights about each cultural stop"
                    " Culinary Delights: Indulge in regional cuisine with an onboard kitchen serving authentic dishes, enhancing your culturaljourney",

                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),),
            SizedBox(height: 10),

            Center(child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Buspage8()));
            },



                child: Text("BookNow",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)))


          ],
        ));
  }
}
