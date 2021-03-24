import 'package:bioclock/theme/gradients.dart';
import 'package:bioclock/models/activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PlanPage extends StatefulWidget {
  final bool dense;
  final bool drag;

  const PlanPage({Key key, this.dense, this.drag}) : super(key: key);

  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  // List<Activity> activityList = [
  //   Activity(
  //     title: "Breakfast",
  //     time: 18.23,
  //     description:
  //     "Günün en önemli öğünüdür. Sağlam bir kahvaltı günü enerjik geçirmenizi sağlar.",
  //     icon: Icons.free_breakfast_outlined,
  //     expand: false,
  //   ),
  //   Activity(
  //     title: "Breakfast",
  //     time: 18.00,
  //     description:
  //     "Kahvaltıdan beri yoğun çalışarak kaybettiğimiz enerjiyi kazanmanın yolu öğle yemeğinden geçer.",
  //     icon: Icons.free_breakfast_outlined,
  //     expand: false,
  //   ),
  //   Activity(
  //     title: "Breakfast",
  //     time: 18.00,
  //     description:
  //     "Günün son öğünüdür ve bundan sonra enerjiye ihtiyacımız yok! Hafif bir akşam yemeği en iyi akşam yemeğidir.",
  //     icon: Icons.free_breakfast_outlined,
  //     expand: false,
  //   ),
  //   Activity(
  //     title: "Breakfast",
  //     time: 18.00,
  //     description:
  //     "Günün belirli bir vaktinde egzersiz yapmak vücuda dinçlik verir.Genç kalmanın sırrı esnekliğinizi kaybetmemekten geçer.",
  //     icon: Icons.free_breakfast_outlined,
  //     expand: false,
  //   ),
  //   Activity(
  //     title: "Breakfast",
  //     time: 18.00,
  //     description:
  //     "Geceve öğlen uykusu hayatımızın vazgeçilmez birer parçasıdır. Sirkadyen ritmin doğru işleyebilmesi için en dikkat edilmesi gereken şey uyku düzenidir.",
  //     icon: Icons.free_breakfast_outlined,
  //     expand: false,
  //   ),
  //   Activity(
  //     title: "Breakfast",
  //     time: 18.00,
  //     description:
  //     "Zhnimiz günün her vaktinde aktif olmayabilir ancak zihni doğru kullanmanın sırrı doğru zamanda kullanmaktır.",
  //     icon: Icons.free_breakfast_outlined,
  //     expand: false,
  //   ),
  // ];
  var activities = Activity.activityList;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: widget.dense
            ? const EdgeInsets.only(left: 60)
            : const EdgeInsets.only(left: 0),
        child: ListView.builder(
            itemCount: activities.length,
            itemBuilder: (context, index) {
              var activity = activities[index];
              var hour = activity.time.floor();
              var minute = ((activity.time - hour) * 60).ceil();
              var gradientColor =
                  GradientTemplate.gradientTemplate[index % 5].colors;
              return Column(
                children: [
                  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.15,
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            activities.removeAt(index);
                            setState(() {});
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("${activity.title} silindi."),
                              action: SnackBarAction(
                                label: "TAMAM",
                                onPressed: () {},
                              ),
                            ));
                          })
                    ],
                    secondaryActions: <Widget>[
                      IconButton(
                          icon: Icon(Icons.check_circle),
                          onPressed: () {
                            activities.removeAt(index);
                            setState(() {});
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "Tebrikler! ${activity.title} tamamlandı."),
                              action: SnackBarAction(
                                label: "TAMAM",
                                onPressed: () {},
                              ),
                            ));
                          })
                    ],
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 16),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: gradientColor,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: gradientColor.last.withOpacity(0.4),
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: Offset(3, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.label,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    activity.title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'avenir',
                                        fontSize: 16),
                                  ),
                                  activity.expand
                                      ? IconButton(
                                          icon: Icon(Icons.edit_outlined),
                                          onPressed: () {},
                                        )
                                      : Container()
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(activity.icon),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "$hour:${minute.toString().padLeft(2, '0')}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'avenir',
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700),
                              ),
                              RotatedBox(
                                quarterTurns: activity.expand ? 3 : 1,
                                child: IconButton(
                                    icon: Icon(Icons.play_arrow_rounded),
                                    color: Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        activity.expand = !activity.expand;
                                      });
                                      print(activity.expand);
                                    }),
                              ),
                            ],
                          ),
                          activity.expand
                              ? Column(
                                  children: [
                                    Divider(
                                      color: Colors.white,
                                      thickness: 0.8,
                                    ),
                                    ListTile(
                                      subtitle: Text(activity.description),
                                      // trailing: IconButton(
                                      //   icon: Icon(Icons.edit_outlined),
                                      //   onPressed: (){},
                                      // ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25.0, top: 12.0),
                                      child: stickRow(
                                          widget.dense ? 260 : 320,
                                          [
                                            0,
                                            0,
                                            0,
                                            1,
                                            2,
                                            2,
                                            3,
                                            4,
                                            5,
                                            4,
                                            2,
                                            2,
                                            1,
                                            1,
                                            1,
                                            0,
                                            0,
                                            0,
                                            1,
                                            3,
                                            2,
                                            0,
                                            0,
                                            0,
                                          ],
                                          hour),
                                    ),
                                    // Row(
                                    //   children: [
                                    //     Container(color: Colors.white, width: 5, height: 10, ),
                                    //     Container(color: Colors.transparent, width: 2, height: 10,),
                                    //     Container(color: Colors.white, width: 2, height: 10,),
                                    //   ],
                                    // ),
                                    Slider(
                                      value: activity.time,
                                      onChanged: (val) {
                                        setState(() {
                                          activity.time = val;
                                        });
                                      },
                                      min: 0,
                                      max: 24,
                                      divisions: 96,
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.deepPurpleAccent,
                                    )
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  widget.drag
                      ? index % 2 == 0
                          ? Divider(
                              color: Colors.white,
                            )
                          : Divider(
                              color: Colors.transparent,
                            )
                      : Container(),
                ],
              );
            }));
  }

  Widget stickRow(double width, List<double> heights, int selectedIndex) {
    int length = heights.length;
    double itemWidth = (width / length) / 2;
    print(itemWidth);
    List<Widget> sticks = [];

    double kw = 0.9;
    double kh = 8;

    for (int i = 0; i < length; i++) {
      sticks.add(Row(
        children: [
          Container(
            height: (heights[i] + 1) * kh,
            width: itemWidth * kw,
            decoration: BoxDecoration(
              color: i == selectedIndex ? Colors.indigo : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          Container(
            // color: Colors.red,
            height: heights[i] * kh,
            width: itemWidth * kw,
          ),
        ],
      ));
    }

    return Container(
      // color: Colors.white,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: sticks,
      ),
    );
  }
}

/*ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                GradientCard(
                  gradient: Gradients.rainbowBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Breakfast"),
                        leading: Icon(Icons.free_breakfast_outlined),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        title: Text("18:00"),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Breakfast"),
                        leading: Icon(Icons.free_breakfast_outlined),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        title: Text("18:00"),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Breakfast"),
                        leading: Icon(Icons.free_breakfast_outlined),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        title: Text("18:00"),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ],
            ),
          ),
        ],
      ),*/
