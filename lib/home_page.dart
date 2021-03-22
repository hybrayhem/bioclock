import 'package:bioclock/activity_page.dart';
import 'package:bioclock/analysis_page.dart';
import 'package:bioclock/plan_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool dense = false;
  bool drag = false;
  int acceptedData = 0;

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Do you going to make healthy things?'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('NO'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('YES'),
              ),
            ],
          ),
        ) ??
        false;
  }

  void _onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          drawerScrimColor: Colors.transparent,
          appBar: _appBar(),
          drawer: _drawer(),
          bottomNavigationBar: _bottomBar(),
          body: SafeArea(
            child: IndexedStack(
              index: _selectedIndex,
              children: <Widget>[
                PlanPage(dense: dense, drag: drag),
                AnalysisPage(),
                ActivityPage(),
              ],
            ),
            top: false,
          )),
    );
  }

  Widget _appBar() => AppBar(
        toolbarHeight: 85,
        title: Text(
          _selectedIndex == 0
              ? "Weekday Routine"
              : _selectedIndex == 1
                  ? "Analysis"
                  : _selectedIndex == 2
                      ? "Inspire"
                      : " ",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 21,
              fontFamily: "Poppins"),
        ),
        actions: [
          _selectedIndex == 0
              ? IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      dense = !dense;
                    });
                  })
              : Container()
        ],
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      );

  Widget _drawer() => Container(
        width: 60,
        color: Colors.grey.shade900,
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            IconButton(
              icon: Icon(Icons.check_circle),
              onPressed: () {},
            ),
            Padding(padding: EdgeInsets.all(40)),
            Icon(Icons.free_breakfast_outlined),
            Padding(padding: EdgeInsets.all(20)),
            Icon(Icons.sports_cricket_outlined),
            Padding(padding: EdgeInsets.all(20)),
            Icon(Icons.nights_stay_outlined),
            Padding(padding: EdgeInsets.all(20)),
            Draggable<int>(
              // Data is the value this Draggable stores.
              data: 10,
              child: IconButton(
                icon: Icon(Icons.free_breakfast_outlined),
                onPressed: () {},
              ),
              feedback: ClipOval(
                child: Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                  child: Icon(Icons.free_breakfast_outlined),
                ),
              ),
              childWhenDragging: IconButton(
                icon: Icon(Icons.free_breakfast_outlined),
                onPressed: null,
              ),
              onDragStarted: () {
                setState(() {
                  drag = true;
                });
              },
              onDragEnd: (val) {
                setState(() {
                  drag = false;
                });
              },
            ),
            // DragTarget<int>(
            //   builder: (
            //     BuildContext context,
            //     List<dynamic> accepted,
            //     List<dynamic> rejected,
            //   ) {
            //     return Container(
            //       height: 100.0,
            //       width: 100.0,
            //       color: Colors.cyan,
            //       child: Center(
            //         child: Text('Value is updated to: $acceptedData'),
            //       ),
            //     );
            //   },
            //   onAccept: (int data) {
            //     setState(() {
            //       acceptedData += data;
            //     });
            //   },
            // ),
          ],
        ),
      );

  Widget _bottomBar() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: "Analysis"),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined), label: "Inpire"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
      );
}
