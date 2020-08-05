import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(MyLottieTutorial());
}

class MyLottieTutorial extends StatefulWidget {
  @override
  _MyLottieTutorialState createState() => _MyLottieTutorialState();
}

class _MyLottieTutorialState extends State<MyLottieTutorial> with SingleTickerProviderStateMixin{
AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/truckLottie.json',
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration;
              },
            ),

            Slider(
              min: 0.0,
              max: 1.0, onChanged: (double value) {
                _controller.value = value;
                setState(() {

                });
            }, value: _controller.value,

            )
          ],
        ),
      ),
    );
  }
}

