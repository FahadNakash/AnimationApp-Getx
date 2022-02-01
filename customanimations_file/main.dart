// import 'package:flutter/material.dart';
// import 'package:untitled/customanimations_file/chain_animation.dart';
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
//   AnimationController? controller;
//   Animation<double>? animation;
//
//
//   @override
//   void initState() {
//     controller=AnimationController(vsync: this,duration: Duration(milliseconds: 2000));
//     animation=CurvedAnimation(parent: controller!, curve: Curves.easeIn)..addStatusListener((status) {
//       if (status==AnimationStatus.completed) {
//         controller!.reverse();
//       }else if (status==AnimationStatus.dismissed) {
//         controller!.forward();
//       }
//     });
//     controller!.forward();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(child: ChainAnimation(widget: Text('CustomAnimations',style: TextStyle(color: Colors.white),),animation: animation,)),
//     );
//   }
// }
