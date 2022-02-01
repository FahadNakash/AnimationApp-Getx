import 'package:flutter/material.dart';
import '../model/company.dart';
import '../animation/company_detail_intro_animation.dart';
import 'dart:ui' as ui;
import '../widgets/courses_listview.dart';
class CompanyDetail extends StatelessWidget {
  final AnimationController? controller;
  final Company? company;
  CompanyDetailIntroAnimation? animation;
  CompanyDetail({this.controller,this.company}):animation=CompanyDetailIntroAnimation(controller!);
  @override
  Widget build(BuildContext context) {
    print(animation!.controller);
    // animation=CompanyDetailIntroAnimation(controller!);
    return  AnimatedBuilder(
        animation: animation!.controller,
        builder:(context,child){
          return Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                  opacity: animation!.bgDropOpacity.value.toDouble(),
                  child: Image.asset(
                    company!.backdropPhoto,
                    fit:BoxFit.cover,
                  )
              ),
              BackdropFilter(
                filter: ui.ImageFilter.blur(
                    sigmaX: animation!.bgDropBlur.value.toDouble(),
                    sigmaY: animation!.bgDropBlur.value.toDouble()),
                child: Container(
                    color: Colors.black.withOpacity(0.3),
                    child:SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          avatarTile(),
                          nameAndLocationAndAbout(),
                          CoursesListView(company, animation),
                        ],
                      ),
                    )
                ),
              )
            ],
          );
        }
    );
  }
  Widget avatarTile(){
    return Transform(
      transform: Matrix4.diagonal3Values(animation!.avatarSize.value, animation!.avatarSize.value, 1.0),
      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        height: 110,
        margin: EdgeInsets.only(top: 32,left: 19),
        padding: EdgeInsets.all(3.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(company!.logo,height: 90,width: 90,),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
              child: FittedBox(
                child: Text(
                  company!.name,
                  style: TextStyle(
                      fontSize: 16*animation!.avatarSize.value + 2.0,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget nameAndLocationAndAbout(){
    return Padding(
      padding: const EdgeInsets.only(right: 14,left: 14,top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text(company!.name,style: TextStyle(color: Colors.white.withOpacity(animation!.nameOpacity.value),fontSize: 20*animation!.nameOpacity.value+3,fontWeight: FontWeight.bold),),
         Text(company!.location,style: TextStyle(color: Colors.white.withOpacity(animation!.locationOpacity.value),fontSize: 20* animation!.locationOpacity.value+3,fontWeight: FontWeight.w300),),
          Divider(color: Colors.white.withOpacity(animation!.dividerWidth.value),endIndent: 100,),
          Text(company!.about,style: TextStyle(color: Colors.white.withOpacity(animation!.aboutOpacity.value),fontWeight: FontWeight.w300,fontSize: 15*animation!.aboutOpacity.value,height: 1.5),),
        ],
      ),
    ) ;
  }

}
// return Container(
//   height: 200,
//   padding: EdgeInsets.all(10),
//   child: ListView.separated(
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return ClipRRect(
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//           child: Container(
//             color: Colors.grey.withOpacity(0.4),
//             width: 165,
//             child:Column(
//               children: [
//                 Container(),
//               ],
//             ),
//           ),
//         );
//       },
//       separatorBuilder: (context, index) => SizedBox(width: 10,),
//       itemCount: 7),
// );
