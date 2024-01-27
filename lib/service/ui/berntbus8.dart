import 'package:date_field/date_field.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'berntbus7.dart';
import 'berntbus9.dart';


class Buspage8 extends StatefulWidget {
  @override
  State<Buspage8> createState() => _Buspage8State();
}

class _Buspage8State extends State<Buspage8> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
          leading: InkWell(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Buspage7()));
          },

              child: Icon(
                Icons.arrow_back,
                color: Colors.black87,
              )),
        ),

        body: Stack(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 400,),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/image/WhatsApp Image 2024-01-06 at 12.22.20_c96a9786.jpg"),fit: BoxFit.scaleDown
                  ),
                ),height: 300,width: 350,

              ),
            ),
          ),

          ListView(children: [
            SizedBox(
              height: 230,
            ),
            Container(
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(''),
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                        ),
                        //DateTimeFormField(),
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: DateTimeFormField(
                            decoration:  InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              errorStyle: TextStyle(color: Colors.orangeAccent),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(
                                Icons.event_note,
                                color: Colors.black,
                              ),
                              labelText: 'Booking Date ',
                            ),
                            mode: DateTimeFieldPickerMode.date,
                            firstDate: DateTime.now().add( Duration(days: 10)),
                            lastDate: DateTime.now().add( Duration(days: 40)),
                            initialDate:
                            DateTime.now().add( Duration(days: 20)),
                            autovalidateMode: AutovalidateMode.always,
                            validator: (DateTime? e) => (e?.day ?? 0) == 1
                                ? 'Please not the first day'
                                : null,
                            onDateSelected: (DateTime value) {
                              print(value);
                            },
                            onChanged: (DateTime? value) {},
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: DateTimeFormField(
                            decoration:  InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              errorStyle: TextStyle(color: Colors.orangeAccent),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(
                                Icons.timer,
                                color: Colors.black,
                              ),
                              labelText: 'Booking time',
                            ),
                            mode: DateTimeFieldPickerMode.time,
                            autovalidateMode: AutovalidateMode.always,
                            validator: (DateTime? e) {
                              return (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null;
                            },
                            onDateSelected: (DateTime value) {
                              print(value);
                            },
                            onChanged: (DateTime? value) {},
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17,
                        ),
                        ListTile(
                          title: Center(
                              child: Text(
                                "Total Payment",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          subtitle: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Rs:10000/-",
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 70,
                            width: 300,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>brentbus()));
                                  },
                                  child: Text(
                                    "Proceed",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,fontSize:17 ),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]))
          ])
        ]));
  }
}
