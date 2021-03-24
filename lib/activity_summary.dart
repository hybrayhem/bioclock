import 'package:flutter/material.dart';
import 'package:bioclock/models/activity_info.dart';
import 'package:bioclock/activity_detail_page.dart';
import 'package:bioclock/theme/text_style.dart';

class ActivitySummary extends StatelessWidget {
  final ActivityInfo planet;
  final List<Color> gradients;
  final bool horizontal;

  ActivitySummary(this.planet, this.gradients, {this.horizontal = true});

  ActivitySummary.vertical(this.planet, this.gradients) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: new Hero(
        tag: "planet-hero-${planet.id}",
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradients,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4)),
          child: new Icon(
            planet.icon,
            size: 32,
          ),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _planetValue() {
      return new Container(
        child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(Icons.timelapse, size: 18,),
          new Container(width: 8.0),
          new Text(planet.timeInterval, style: Style.smallTextStyle),
        ]),
      );
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(planet.title, style: Style.titleTextStyle),
          new Container(height: 10.0),
          new Text(planet.subtitle, style: Style.commonTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff) //seperator
              ),
          _planetValue(),
          // new Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     new Expanded(
          //       flex: horizontal ? 1 : 0,
          //       child: _planetValue()
              // ),
              // new Container(
              //   width: horizontal ? 8.0 : 32.0,
              // ),
              // new Expanded(
              //     flex: horizontal ? 1 : 0,
              //     child: _planetValue(
              //     value: planet.gravity,
              //     icon: 'assets/img/ic_gravity.png')
              // )
            // ],
          // ),
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: horizontal ? 134.0 : 164.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
      decoration: new BoxDecoration(
        color: Colors.grey.shade900,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: gradients.last.withOpacity(0.4),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(3, 3),
          ),
        ],
      ),
    );

    return new GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (_, __, ___) =>
                        new ActivityDetailPage(planet, gradients),
                    transitionsBuilder: (context, animation, secondaryAnimation,
                            child) =>
                        new FadeTransition(opacity: animation, child: child),
                  ),
                )
            : null,
        child: new Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
        ));
  }
}
