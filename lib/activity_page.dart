import 'package:bioclock/theme/gradients.dart';
import 'package:flutter/material.dart';
import 'package:bioclock/models/activity_info.dart';
import 'package:bioclock/activity_summary.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        // color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                      (context, index) => new ActivitySummary(planets[index], GradientTemplate.gradientTemplate[index % 5].colors),
                  childCount: planets.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
