import 'package:flutter/material.dart';

class Tweenbuilder extends StatefulWidget {
  const Tweenbuilder({Key? key}) : super(key: key);

  @override
  State<Tweenbuilder> createState() => _TweenbuilderState();
}

class _TweenbuilderState extends State<Tweenbuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: 4),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.only(top: value * 40),
                child: Transform.translate(
                  offset: Offset(value * 200, 0),
                  child: Text(
                    "i will slide down",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
