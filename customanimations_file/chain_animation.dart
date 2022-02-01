import 'package:flutter/material.dart';
// class ChainAnimation extends AnimatedWidget{
//   static final _opacityTween=Tween(begin: 0.1,end: 1.0);
//   static final _sizeTween=Tween(begin: 0.0,end: 170);
//   static final _colorTween=ColorTween(begin: Colors.blue,end: Colors.red);
//   final Widget widget;
//   ChainAnimation(this.widget, {Key? key,Animation<double>? animation,}) : super(key: key,listenable: animation!);
//
//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation=listenable as Animation<double>;
//     return Opacity(
//       opacity: _opacityTween.evaluate(animation),
//       child:Container(
//         color: _colorTween.evaluate(animation),              //evaluate mean wo go through all value that define
//         height: _sizeTween.evaluate(animation).toDouble(),
//         width: _sizeTween.evaluate(animation).toDouble(),
//         child: Center(
//           child: widget,
//         )
//       ) ,);
//   }
// }
class ChainAnimation extends AnimatedWidget{
  static final _opacityTween =Tween(begin: 0.1,end: 1.0);
  static final _sizeTween =Tween(begin: 0.0,end:200);
  static final _colorTween=ColorTween(begin: Colors.deepPurple,end: Colors.purple);
  final Widget? widget;
  ChainAnimation({Key? key,this.widget,Animation<double>? animation}) : super(key: key,listenable: animation!);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation=listenable as Animation<double>;
    return Opacity(
      opacity: _opacityTween.evaluate(animation),
      child: Container(
        margin: EdgeInsets.all(10),
        height: _sizeTween.evaluate(animation).toDouble(),
        width: _sizeTween.evaluate(animation).toDouble(),
        color: _colorTween.evaluate(animation),
        child: Center(child: widget),

      ),
    );
  }
}