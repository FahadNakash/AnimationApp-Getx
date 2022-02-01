import 'package:flutter/material.dart';
class CounterAnimation extends StatefulWidget {
  const CounterAnimation({Key? key}) : super(key: key);

  @override
  _CounterAnimationState createState() => _CounterAnimationState();
}

class _CounterAnimationState extends State<CounterAnimation> with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation<num>? _animation;
  int counter=0;
  @override
  void initState() {
    _controller=AnimationController(vsync: this,duration:Duration(milliseconds: 1800));
    _animation=Tween(begin: 0.0,end: 5.0).animate(_controller!)..addStatusListener((status) {
      if (status==AnimationStatus.completed){
        print('status $status');
        print('Counter => $counter');
        _controller!.reverse(from: 2.5);
      }else if (status==AnimationStatus.reverse) {
        counter=counter-200;
        print('Counter => $counter');

      }

    })
      ..addListener(() {
      setState(() {
        print(_animation!.value);
        counter++;
      });
    });
    // _animation=CurvedAnimation(parent: _controller!, curve: Curves.easeInOutSine)..addListener(() {
    //   setState(() {
    //    print(_animation!.value);
    //     counter++;
    //   });
    // });
    super.initState();
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Center(
          child: Text(
            _controller!.isAnimating?counter.toStringAsFixed(2):'Lets Begin',
            style: TextStyle(fontSize: 24.0*_animation!.value+16),
          ),
        ),
        onTap: (){
          _controller!.forward(from: 0.0);
        },
      ),
    );
  }
}
