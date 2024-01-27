import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'berntbus7.dart';
import 'brentwood4.dart';
import 'brentwoodbus1.dart';
import 'loginpage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.privacy_tip,
                  size: 30,
                ),
              ),
              title: Text(
                "Privacy",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.share,
                  size: 30,
                ),
              ),
              title: Text(
                "Share",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.help,
                  size: 30,
                ),
              ),
              title: Text(
                "About",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.terminal_sharp,
                  size: 30,
                ),
              ),
              title: Text(
                "Terms & Conditions",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            Divider(color: Colors.black),

            ListTile(

              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.logout,
                  size: 30,
                ),
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            Divider(color: Colors.black),



          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black87,
              size: 29,
            ),
          ),
        ),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 26, top: 30),
          child: Text(
            " BRENTWOOD TRAVEL",
            style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        )),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 29),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Buspage1()));
              },
              child: Card(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 29),
                        child: Image(
                            image: AssetImage(
                                "assets/image/WhatsApp Image 2024-01-06 at 12.16.14_58ab6a03.jpg")),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Luxury Cruiser",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: Text(
                          "Kochi,Calicut,Malappuram",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star_half, color: Colors.green),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Buspage4()));
              },
              child: Card(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 29),
                        child: Image(
                            image: AssetImage(
                                "assets/image/WhatsApp Image 2024-01-06 at 12.22.20_aa57bfc5.jpg")),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Adventure Explorer",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: Text(
                          "Kochi,Calicut,Malappuram",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star_half, color: Colors.green),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Buspage7()));
              },
              child: Card(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 29),
                        child: Image(
                            image: AssetImage(
                                "assets/image/WhatsApp Image 2024-01-06 at 12.22.20_c96a9786.jpg")),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Text(
                          "Cultural Discovery",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: Text(
                          "Kochi,Calicut,Malappuram",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star_half, color: Colors.green),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
