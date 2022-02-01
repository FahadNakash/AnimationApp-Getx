import 'package:flutter/material.dart';
import '../model/company.dart';
import '../animation/company_detail_intro_animation.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;
class CoursesListView extends StatelessWidget {
  final Company? company;
  final CompanyDetailIntroAnimation? animation;
  CoursesListView(this.company, this.animation);
  Future<void> hitUrl(String url)async{
    urlLauncher.launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.diagonal3Values(animation!.courseScrollerOpacity.value, animation!.courseScrollerOpacity.value, 1.0),
      child: Container(
        height: 250,
        child: ListView.separated(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                color: Colors.grey.withOpacity(0.4),
                width: MediaQuery.of(context).size.width/2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                     Stack(
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                           child: Container(
                             height: 100,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               image: DecorationImage(image: AssetImage(company!.course[index].thumbnail),fit: BoxFit.cover)
                             ),
                           ),
                         ),
                         Positioned(
                           bottom: 10,
                             right: 8,
                             child: InkWell(
                               onTap: (){
                                 hitUrl(company!.course[index].url);
                               },
                               child: CircleAvatar(
                                 backgroundColor: Colors.white.withOpacity(0.4),
                                 child: Icon(Icons.add_link,color: Colors.black,),
                               ),
                             )
                         ),
                       ],
                     ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(company!.course[index].title,style: TextStyle(color: Colors.grey.shade200),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (context,index)=>SizedBox(width: 10,),
            itemCount: company!.course.length
        ),
      ),
    );
  }
}
