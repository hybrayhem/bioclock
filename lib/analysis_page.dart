import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalysisPage extends StatefulWidget {
  @override
  _AnalysisPageState createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.4,
              child: Container(
                margin: EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2c274c),
                      Color(0xff46426c),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const SizedBox(
                          height: 37,
                        ),
                        const Text(
                          'Verim',
                          style: TextStyle(
                            color: Color(0xff827daa),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        // const Text(
                        //   'Monthly Sales',
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 32,
                        //       fontWeight: FontWeight.bold,
                        //       letterSpacing: 2),
                        //   textAlign: TextAlign.center,
                        // ),
                        const SizedBox(
                          height: 37,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                            child: LineChart(
                              isShowingMainData ? sampleData1() : sampleData2(),
                              swapAnimationDuration: const Duration(milliseconds: 250),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          isShowingMainData = !isShowingMainData;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            ListTile(title: Text("  20 Mart"), trailing: Text("Verim:    %59.2"),onTap: (){},),
            Divider(height: 12, thickness: 2,),
            ListTile(title: Text("  21 Mart"), trailing: Text("Verim:    %89.5"),onTap: (){},),
            Divider(height: 12, thickness: 2,),
            ListTile(title: Text("  22 Mart"), trailing: Text("Verim:    %72.2"),onTap: (){},),
            Divider(height: 12, thickness: 2,),
            ListTile(title: Text("  23 Mart"), trailing: Text("Verim:    %18.2"),onTap: (){},),
            Divider(height: 12, thickness: 2,),
            ListTile(title: Text("  24 Mart"), trailing: Text("Verim:    %32.2"),onTap: (){},),
            Divider(height: 12, thickness: 2,),
          ],
        ),
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '20M';
              case 7:
                return '21M';
              case 12:
                return '22M';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return ' +%10';
              case 2:
                return ' +%20';
              case 3:
                return ' +%30';
              case 4:
                return ' +%50';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 4,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 14,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
      isCurved: true,
      colors: [
        const Color(0xff4af699),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 3.9),
      ],
      isCurved: true,
      colors: [
        const Color(0xffaa4cfc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final LineChartBarData lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      colors: const [
        Color(0xff27b6fc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
      // lineChartBarData2,
      // lineChartBarData3,
    ];
  }

  LineChartData sampleData2() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '20M';
              case 7:
                return '21M';
              case 12:
                return '22M';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return ' +%10';
              case 2:
                return ' +%20';
              case 3:
                return ' +%30';
              case 4:
                return ' +%50';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(
              color: Color(0xff4e4965),
              width: 4,
            ),
            left: BorderSide(
              color: Colors.transparent,
            ),
            right: BorderSide(
              color: Colors.transparent,
            ),
            top: BorderSide(
              color: Colors.transparent,
            ),
          )),
      minX: 0,
      maxX: 14,
      maxY: 6,
      minY: 0,
      lineBarsData: linesBarData2(),
    );
  }

  List<LineChartBarData> linesBarData2() {
    return [
      LineChartBarData(
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
        isCurved: true,
        curveSmoothness: 0,
        colors: const [
          Color(0x444af699),
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
      // LineChartBarData(
      //   spots: [
      //     FlSpot(1, 1),
      //     FlSpot(3, 2.8),
      //     FlSpot(7, 1.2),
      //     FlSpot(10, 2.8),
      //     FlSpot(12, 2.6),
      //     FlSpot(13, 3.9),
      //   ],
      //   isCurved: true,
      //   colors: const [
      //     Color(0x99aa4cfc),
      //   ],
      //   barWidth: 4,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: false,
      //   ),
      //   belowBarData: BarAreaData(show: true, colors: [
      //     const Color(0x33aa4cfc),
      //   ]),
      // ),
      // LineChartBarData(
      //   spots: [
      //     FlSpot(1, 3.8),
      //     FlSpot(3, 1.9),
      //     FlSpot(6, 5),
      //     FlSpot(10, 3.3),
      //     FlSpot(13, 4.5),
      //   ],
      //   isCurved: true,
      //   curveSmoothness: 0,
      //   colors: const [
      //     Color(0x4427b6fc),
      //   ],
      //   barWidth: 2,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(show: true),
      //   belowBarData: BarAreaData(
      //     show: false,
      //   ),
      // ),
    ];
  }
}
