import 'package:flutter/material.dart';

class TweenV extends StatefulWidget {
  const TweenV({Key? key}) : super(key: key);

  @override
  _TweenVState createState() => _TweenVState();
}

class _TweenVState extends State<TweenV> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;
  late Animation<double> _curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _curvedAnimation = CurveTween(curve: Curves.easeInOut).animate(_controller);

    _slideAnimation =
        Tween<double>(begin: 0.3, end: 1).animate(_curvedAnimation);

    _slideAnimation.addListener(() {
      print(_slideAnimation.value);
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) =>
            FadeTransition(opacity: _slideAnimation, child: child),
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Offstage(
            offstage: false,
            child: IconButton.filled(
                onPressed: () {
                  _controller.reverse();
                },
                icon: Icon(Icons.remove_red_eye)),
          ),
        ),
      ),
    );
  }
}
