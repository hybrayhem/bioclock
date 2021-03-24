import 'package:flutter/material.dart';

class Activity {
  String title;
  double time;
  String description;
  IconData icon;
  bool expand;

  Activity({this.title, this.time, this.description, this.icon, this.expand});


  static List<Activity> activityList = [
    Activity(
      title: "Kahvaltı",
      time: 18.23,
      description:
      "Günün en önemli öğünüdür. Sağlam bir kahvaltı günü enerjik geçirmenizi sağlar.",
      icon: Icons.free_breakfast_outlined,
      expand: false,
    ),
    Activity(
      title: "Öğle Yemeği",
      time: 18.00,
      description:
      "Kahvaltıdan beri yoğun çalışarak kaybettiğimiz enerjiyi kazanmanın yolu öğle yemeğinden geçer.",
      icon: Icons.lunch_dining,
      expand: false,
    ),
    Activity(
      title: "Akşam Yemeği",
      time: 18.00,
      description:
      "Günün son öğünüdür ve bundan sonra enerjiye ihtiyacımız yok! Hafif bir akşam yemeği en iyi akşam yemeğidir.",
      icon: Icons.dinner_dining,
      expand: false,
    ),
    Activity(
      title: "Spor",
      time: 18.00,
      description:
      "Günün belirli bir vaktinde egzersiz yapmak vücuda dinçlik verir. Genç kalmanın sırrı esnekliğinizi kaybetmemekten geçer.",
      icon: Icons.directions_run_outlined,
      expand: false,
    ),
    Activity(
      title: "Uyku",
      time: 18.00,
      description:
      "Gece ve öğlen uykusu hayatımızın vazgeçilmez birer parçasıdır. Sirkadyen ritmin doğru işleyebilmesi için en dikkat edilmesi gereken şey uyku düzenidir.",
      icon: Icons.hotel_outlined,
      expand: false,
    ),
    Activity(
      title: "Zihinsel Aktivite",
      time: 18.00,
      description:
      "Zihnimiz günün her vaktinde aktif olmayabilir ancak zihni doğru kullanmanın sırrı doğru zamanda kullanmaktır.",
      icon: Icons.menu_book_outlined,
      expand: false,
    ),
  ];
}

/* var titleList = ["Breakfast", "Breakfast", "Breakfast", "Breakfast"];
  var timeList = ["18:00", "18:00", "18:00", "18:00"];
  var iconList = [
    Icons.free_breakfast_outlined,
    Icons.free_breakfast_outlined,
    Icons.free_breakfast_outlined,
    Icons.free_breakfast_outlined,
  ];
  */