
class Company{
late final String name;
late final String location;
late final String logo;
late final String backdropPhoto;
late final String about;
late final List<Course> course;
Company({
  required this.name,
  required this.location,
  required this.logo,
  required this.backdropPhoto,
  required this.about,
  required this.course,
});
}
class Course{
late final String title;
late final String thumbnail;
late final String url;
Course({
  required this.title,
  required this.thumbnail,
  required this.url
});
}