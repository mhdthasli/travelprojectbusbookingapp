import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'brentwoodbusfadeanimation.dart';

import 'home.dart';

class brentwood extends StatefulWidget {
  const brentwood({super.key});

  @override
  State<brentwood> createState() => _brentwoodState();
}

class _brentwoodState extends State<brentwood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Column(
          children: [
            LottieBuilder.asset("assets/animation/ticker.json"),
            FadeInAnimation(
              delay: 2,
              child: Text(
                "Your Bus is Booked!",
                style:
                TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87),


              ),
            ),
            FadeInAnimation(
              delay: 2,
              child: Text(
                "Your Bus  has been booked successfully",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20,fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeInAnimation(
              delay: 2,
              child: CustomElevatedButton(
                message:" Back To HomePage",
                function: () {
                  //GoRouter.of(context).pushReplacement(Routers.loginpage.name);
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  final String message;
  final FutureOr<void> Function() function;
  final Color? color;
  const CustomElevatedButton({
    Key? key,
    required this.message,
    required this.function,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        setState(() {
          loading = true;
        });
        if (widget.function != null) {
          await widget.function!();
        }

        setState(() {
          loading = false;
        });
      },
      style: ButtonStyle(
          side: MaterialStatePropertyAll(BorderSide(color: Colors.black)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: const MaterialStatePropertyAll(Size.fromWidth(370)),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 20),
          ),
          backgroundColor: MaterialStatePropertyAll(widget.color)),
      child: loading
          ? const CupertinoActivityIndicator()
          : FittedBox(
          child: Text(
            widget.message,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),

          )),
    );
  }
}