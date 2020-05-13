import 'package:uvento/model/Event.dart';

class EventsList {
  static List<Event> getEvents() {
    List<Event> eventList = new List<Event>();
    DateTime date = DateTime.now();

    eventList.add(new Event(
        "Sports Meet in Galaxy Field",
        "Greenfields, Sector 42, Faridabad",
        "https://archistadia.it/wp-content/uploads/2019/09/img-06-MANICA-Slideshow-3-header.jpg",
        date.subtract(Duration(days: 2)),
        CategoryType.Sports));
    eventList.add(new Event(
        "Art & Meet in Street Plaza",
        "Galaxyfields, Sector 22, Faridabad",
        "https://cdn6.aptoide.com/imgs/9/9/d/99d932fb0f5b4ac805e6438fa21f78b9_icon.png",
        date.subtract(Duration(days: 2)),
        CategoryType.Education));
    eventList.add(new Event(
        "Youth Music in Galleria",
        "Galaxyfields, Sector 22, Faridabad",
        "https://acousticbridge.com/wp-content/uploads/2018/02/best-vocal-microphones_730x400.jpg",
        date.subtract(Duration(days: 2)),
        CategoryType.Concert));

    eventList.add(new Event(
        "Sports Meet in Galaxy Field",
        "Greenfields, Sector 42, Faridabad",
        "https://archistadia.it/wp-content/uploads/2019/09/img-06-MANICA-Slideshow-3-header.jpg",
        date,
        CategoryType.Sports));
    eventList.add(new Event(
        "Art & Meet in Street Plaza",
        "Galaxyfields, Sector 22, Faridabad",
        "https://cdn6.aptoide.com/imgs/9/9/d/99d932fb0f5b4ac805e6438fa21f78b9_icon.png",
        date,
        CategoryType.Education));
    eventList.add(new Event(
        "Youth Music in Galleria",
        "Galaxyfields, Sector 22, Faridabad",
        "https://acousticbridge.com/wp-content/uploads/2018/02/best-vocal-microphones_730x400.jpg",
        date,
        CategoryType.Concert));

    eventList.add(new Event(
        "Art & Meet in Street Plaza",
        "Galaxyfields, Sector 22, Faridabad",
        "https://cdn6.aptoide.com/imgs/9/9/d/99d932fb0f5b4ac805e6438fa21f78b9_icon.png",
        date.add(Duration(days: 1)),
        CategoryType.Education));
    eventList.add(new Event(
        "Youth Music in Galleria",
        "Galaxyfields, Sector 22, Faridabad",
        "https://acousticbridge.com/wp-content/uploads/2018/02/best-vocal-microphones_730x400.jpg",
        date.add(Duration(days: 1)),
        CategoryType.Concert));
    eventList.add(new Event(
        "Sports Meet in Galaxy Field",
        "Greenfields, Sector 42, Faridabad",
        "https://archistadia.it/wp-content/uploads/2019/09/img-06-MANICA-Slideshow-3-header.jpg",
        date.add(Duration(days: 1)),
        CategoryType.Sports));

    eventList.add(new Event(
        "Sports Meet in Galaxy Field",
        "Greenfields, Sector 42, Faridabad",
        "https://archistadia.it/wp-content/uploads/2019/09/img-06-MANICA-Slideshow-3-header.jpg",
        date.add(Duration(days: 2)),
        CategoryType.Sports));
    eventList.add(new Event(
        "Youth Music in Galleria",
        "Galaxyfields, Sector 22, Faridabad",
        "https://acousticbridge.com/wp-content/uploads/2018/02/best-vocal-microphones_730x400.jpg",
        date.add(Duration(days: 2)),
        CategoryType.Concert));
    eventList.add(new Event(
        "Art & Meet in Street Plaza",
        "Galaxyfields, Sector 22, Faridabad",
        "https://cdn6.aptoide.com/imgs/9/9/d/99d932fb0f5b4ac805e6438fa21f78b9_icon.png",
        date.add(Duration(days: 2)),
        CategoryType.Education));

    eventList.add(new Event(
        "Sports Meet in Galaxy Field",
        "Greenfields, Sector 42, Faridabad",
        "https://archistadia.it/wp-content/uploads/2019/09/img-06-MANICA-Slideshow-3-header.jpg",
        date.add(Duration(days: 3)),
        CategoryType.Sports));
    eventList.add(new Event(
        "Art & Meet in Street Plaza",
        "Galaxyfields, Sector 22, Faridabad",
        "https://cdn6.aptoide.com/imgs/9/9/d/99d932fb0f5b4ac805e6438fa21f78b9_icon.png",
        date.add(Duration(days: 3)),
        CategoryType.Education));
    eventList.add(new Event(
        "Youth Music in Galleria",
        "Galaxyfields, Sector 22, Faridabad",
        "https://acousticbridge.com/wp-content/uploads/2018/02/best-vocal-microphones_730x400.jpg",
        date.add(Duration(days: 3)),
        CategoryType.Concert));

    return eventList;
  }
}
