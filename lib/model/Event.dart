class Event {
  String title, location, urlImage;
  DateTime dateTime;
  CategoryType category;

  Event(this.title, this.location, this.urlImage, this.dateTime, this.category);
}

enum CategoryType { Concert, Sports, Education, Health, Art }
