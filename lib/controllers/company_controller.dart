import 'package:get/get.dart';
import '../model/company.dart';
class CompanyController extends GetxController{
  static CompanyController get companyGetter=>Get.find<CompanyController>();
  final Company object=Company(
      name: 'Build Apps With Fahad Nakash',
      location: 'FaisalAbad, PK',
      logo: 'assets/images/logo.png',
      backdropPhoto:'assets/images/fahad.jpg',
      about:'Our goal is to teach you the skills and equip you with the tools to become the best mobile developer and programmer you can be. '
          ' We want to make you a well-rounded developer.  That’s the mission.',
      course:[
         Course(
            title: 'The Complete Android & Java Bootcamp',
            thumbnail: 'assets/images/android_bootcamp.png',
            url: 'https://www.udemy.com/the-complete-android-bootcamp-course-material-design-uiux/?couponCode=BAWP-SITE-COURSE-15'),
         Course(
            title: 'Kotlin Android Development Masterclass',
            thumbnail: 'assets/images/kotlin.png',
            url:
            'https://www.udemy.com/kotlin-android-developer-masterclass/?couponCode=BAWP-SITE-COURSES-15'),
         Course(
            title: 'Java Design Patterns',
            thumbnail: 'assets/images/java_design-pats.png',
            url:
            'https://www.udemy.com/java-design-patterns-the-complete-masterclass/?couponCode=BAWP-SITE-COURSES-15'),
         Course(
            title: 'The Java 9 Master Course',
            thumbnail: 'assets/images/java9_course.png',
            url:
            'https://www.udemy.com/the-complete-java-9-masterclass-beginner-to-expert/?couponCode=BAWP-SITE-COURSES-15'),
         Course(
            title: 'Android Developer Portfolio',
            thumbnail: 'assets/images/android_portfolio.png',
            url:
            'https://www.udemy.com/android-developers-portfolio-masterclass-build-7-apps/?couponCode=BAWP-SITE-COURSES-15')
      ]
  );
}