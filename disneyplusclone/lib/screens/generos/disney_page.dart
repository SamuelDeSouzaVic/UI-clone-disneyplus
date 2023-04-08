// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class DisneyPage extends StatefulWidget {
  const DisneyPage({Key? key}) : super(key: key);

  @override
  State<DisneyPage> createState() => _DisneyPageState();
}

class _DisneyPageState extends State<DisneyPage> {
  ScrollController? scrollController;
  GlobalKey widgetKey = GlobalKey();
  Offset? widgetOffset;
  double? currentPosition;
  double opacity = 1;
  Color? color = Colors.transparent;

  scrollListener() {
    RenderBox renderBox = widgetKey.currentContext!.findRenderObject() as RenderBox;
    widgetOffset = renderBox.localToGlobal(Offset.zero);
    currentPosition = widgetOffset!.dy;
    currentPosition = currentPosition! + 63;
    if (96 > currentPosition! && currentPosition! > 1) {
      setState(() {
        opacity = currentPosition! / 100;
        color = Colors.transparent;
      });
    } else if (currentPosition! > 96 && opacity != 1) {
      opacity = 1;
    } else if (currentPosition! < 1 && opacity != 0) {
      opacity = 0;
      setState(() {
        color = Color.fromRGBO(40, 42, 63, 1);
      });
    }
  }

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController!.addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(45, 48, 69, 1),
        body: SafeArea(
            child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [0.0, 1.0],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Color.fromRGBO(45, 48, 69, 1),
                  Color.fromRGBO(26, 29, 41, 1)
                ]),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: <Widget>[
              SliverAppBar(
                forceElevated: true,
                elevation: 35,
                floating: false,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: AnimatedOpacity(
                    key: widgetKey,
                    duration: Duration(milliseconds: 1),
                    opacity: opacity,
                    child: Image.asset(
                      'assets/catalogos/disney.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                expandedHeight: 445,
                backgroundColor: color,
                leading: IconButton(
                  icon: Icon(Icons.arrow_circle_left_rounded,
                      color: Colors.white60, size: 28),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("Originais",
                          style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 160,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/6.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/3.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/2.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/1.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/4.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/5.jpg',fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("Walt Disney Animation Studios",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 160,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/5.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/1.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/4.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/3.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/6.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/2.jpg',fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("Filmes em Live-Action",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 160,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/3.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/2.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/6.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/5.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/1.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/4.jpg',fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("Curtas",
                          style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 160,
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/4.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/1.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/5.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/3.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/2.jpg',fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset('assets/posteres/disney/6.jpg',fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}