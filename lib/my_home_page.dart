
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  ConfettiController controller;


  @override
  void initState() {
    super.initState();
    setState(() {
      initController();
    });

  }

  void initController() {
    controller = ConfettiController(duration: const Duration(seconds: 1));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Flutter Confetti Animation"),
        automaticallyImplyLeading: false,
      ),

      body: SafeArea(
        child: Stack(
          children: <Widget>[

            buildConfettiWidget(controller, pi / 1),
            buildConfettiWidget(controller, pi / 5),

            Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/trophy.png",
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.5,
                  ),
                ],
              ),
            ),

            buildButton()
          ],
        ),
      ),
    );
  }

  Align buildButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: RaisedButton(
          onPressed: (){
            controller.play();

          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.red,
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Congratulations!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Align buildConfettiWidget(controller, double blastDirection) {
    // return Align(
    //   alignment: Alignment.topCenter,
    //   child: ConfettiWidget(
    //     colors: [
    //       Colors.red,
    //       Colors.blue,
    //       Colors.orange,
    //       Colors.purple,
    //       Colors.lightBlue
    //     ],
    //     maximumSize: Size(20, 20),
    //     shouldLoop: false, //determines if the emission will reset after the duration is completed, which will result in continues particles being emitted,
    //     confettiController: controller,
    //     blastDirection: blastDirection, // particle emission direction.
    //     blastDirectionality: BlastDirectionality.directional,
    //     maxBlastForce: 20, // will determine the maximum blast force applied to a particle within it's first 5 frames of life. The default maxBlastForce is set to 20
    //     minBlastForce: 8, // will determine the minimum blast force applied to a particle within it's first 5 frames of life.
    //     emissionFrequency: 0.5, // should be a value between 0 and 1. The higher the value the higher the likelihood that particles will be emitted on a single frame.
    //     numberOfParticles: 50, // This attribute is used to be emitted per emission.
    //     gravity: 1, // change the speed at which the confetti falls. A value between 0 and 1. The higher the value the faster it will fall.
    //   ),
    // );






    // return Align(
    //   alignment: Alignment.topRight,
    //   child: ConfettiWidget(
    //     colors: [
    //       Colors.red,
    //       Colors.blue,
    //       Colors.orange,
    //       Colors.purple,
    //       Colors.lightBlue
    //     ],
    //     shouldLoop: true, //determines if the emission will reset after the duration is completed, which will result in continues particles being emitted,
    //     confettiController: controller,
    //     emissionFrequency: 0, // should be a value between 0 and 1. The higher the value the higher the likelihood that particles will be emitted on a single frame.
    //     numberOfParticles: 20, // This attribute is used to be emitted per emission.
    //   ),
    // );



    // return Align(
    //   alignment: Alignment.center,
    //   child: ConfettiWidget(
    //     colors: [
    //       Colors.red,
    //       Colors.blue,
    //       Colors.orange,
    //       Colors.purple,
    //       Colors.lightBlue
    //     ],
    //     blastDirectionality: BlastDirectionality.explosive,
    //     blastDirection: -pi / 2,
    //     shouldLoop: true, //determines if the emission will reset after the duration is completed, which will result in continues particles being emitted,
    //     confettiController: controller,
    //     emissionFrequency: 1, // should be a value between 0 and 1. The higher the value the higher the likelihood that particles will be emitted on a single frame.
    //     numberOfParticles: 20, // This attribute is used to be emitted per emission.
    //   ),
    // );



    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        colors: [
          Colors.red,
          Colors.blue,
          Colors.orange,
          Colors.purple,
          Colors.lightBlue
        ],
        blastDirectionality: BlastDirectionality.explosive,
        shouldLoop: true, //determines if the emission will reset after the duration is completed, which will result in continues particles being emitted,
        confettiController: controller,
        emissionFrequency: 0.05, // should be a value between 0 and 1. The higher the value the higher the likelihood that particles will be emitted on a single frame.
        numberOfParticles: 5, // This attribute is used to be emitted per emission.
      ),
    );





  }
}