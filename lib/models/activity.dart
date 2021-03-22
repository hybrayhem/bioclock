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
      title: "Breakfast",
      time: 18.23,
      description:
      "Günün en önemli öğünüdür. Sağlam bir kahvaltı günü enerjik geçirmenizi sağlar.",
      icon: Icons.free_breakfast_outlined,
      expand: false,
    ),
    Activity(
      title: "Breakfast",
      time: 18.00,
      description:
      "Kahvaltıdan beri yoğun çalışarak kaybettiğimiz enerjiyi kazanmanın yolu öğle yemeğinden geçer.",
      icon: Icons.free_breakfast_outlined,
      expand: false,
    ),
    Activity(
      title: "Breakfast",
      time: 18.00,
      description:
      "Günün son öğünüdür ve bundan sonra enerjiye ihtiyacımız yok! Hafif bir akşam yemeği en iyi akşam yemeğidir.",
      icon: Icons.free_breakfast_outlined,
      expand: false,
    ),
    Activity(
      title: "Breakfast",
      time: 18.00,
      description:
      "Günün belirli bir vaktinde egzersiz yapmak vücuda dinçlik verir.Genç kalmanın sırrı esnekliğinizi kaybetmemekten geçer.",
      icon: Icons.free_breakfast_outlined,
      expand: false,
    ),
    Activity(
      title: "Breakfast",
      time: 18.00,
      description:
      "Geceve öğlen uykusu hayatımızın vazgeçilmez birer parçasıdır. Sirkadyen ritmin doğru işleyebilmesi için en dikkat edilmesi gereken şey uyku düzenidir.",
      icon: Icons.free_breakfast_outlined,
      expand: false,
    ),
    Activity(
      title: "Breakfast",
      time: 18.00,
      description:
      "Zhnimiz günün her vaktinde aktif olmayabilir ancak zihni doğru kullanmanın sırrı doğru zamanda kullanmaktır.",
      icon: Icons.free_breakfast_outlined,
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