import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
class CompanyDetailIntroAnimation {
  late final AnimationController controller;
  late final Animation<double> bgDropOpacity;
  late final Animation<double> bgDropBlur;
  late final Animation<double> avatarSize;
  late final Animation<double> nameOpacity;
  late final Animation<double> locationOpacity;
  late final Animation<double> dividerWidth;
  late final Animation<double> aboutOpacity;
  late final Animation<double> coursesScrollerXTranslation;
  late final Animation<double> courseScrollerOpacity;
  CompanyDetailIntroAnimation(this.controller){
    bgDropOpacity=Tween(begin: 0.0,end:1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.000,0.500,curve: Curves.ease)));
    bgDropBlur=Tween(begin: 0.0,end:2.0 ).animate(CurvedAnimation(parent: controller, curve: Interval(0.000,0.800,curve: Curves.ease),));
    avatarSize=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.100,0.400,curve: Curves.easeIn)));
    nameOpacity=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.350,0.450,curve: Curves.ease)));
    locationOpacity=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.450,0.550,curve: Curves.ease)));
    dividerWidth=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.550,0.650,curve: Curves.easeIn)));
    aboutOpacity=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.650,0.750,curve: Curves.ease)));
    courseScrollerOpacity=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.750,1.00,curve: Curves.easeIn)));

  }
}