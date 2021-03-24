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
  bool drop = false;

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you going to live a healthy life?'),
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
          key: _drawerKey,
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
        title: Row(
          mainAxisAlignment: _selectedIndex == 0 ? MainAxisAlignment.end : MainAxisAlignment.center,
          children: [
            Text(
              _selectedIndex == 0
                  ? "Haftaiçi Rutini"
                  : _selectedIndex == 1
                      ? "Analiz"
                      : _selectedIndex == 2
                          ? "Bilgi"
                          : " ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                  fontFamily: "Poppins"),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 26)),
            _selectedIndex == 0
                ? IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {
                  // setState(() {
                  //   dense = !dense;
                  // });
                })
                : Container()
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            setState(() {
              dense = true;
            });
            _drawerKey.currentState.openDrawer();
          },
        ),
        // actions: [
        //   _selectedIndex == 0
        //       ? IconButton(
        //           icon: Icon(Icons.arrow_drop_down),
        //           onPressed: () {
        //             // setState(() {
        //             //   dense = !dense;
        //             // });
        //           })
        //       : Container()
        // ],
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
              onPressed: () {
                setState(() {
                  dense = false;
                });
                Navigator.of(context).pop();
              },
            ),
            Padding(padding: EdgeInsets.all(30)),
            _dragIcon(Icons.free_breakfast_outlined),
            _dragIcon(Icons.lunch_dining),
            _dragIcon(Icons.directions_run_outlined),
            _dragIcon(Icons.dinner_dining),
            _dragIcon(Icons.menu_book_outlined),
            _dragIcon(Icons.hotel_outlined),
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
              icon: Icon(Icons.home_outlined), label: "Ana Sayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: "Analiz"),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined), label: "Bilgi"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
      );

  Widget _dragIcon(IconData icon) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Draggable<int>(
          // Data is the value this Draggable stores.
          data: 10,
          child: IconButton(
            icon: Icon(icon),
            onPressed: () {},
          ),
          feedback: ClipOval(
            child: Container(
              color: Colors.black,
              height: 60,
              width: 60,
              child: Icon(icon),
            ),
          ),
          childWhenDragging: IconButton(
            icon: Icon(icon),
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
      );
}
