import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_downward),
                splashColor: Colors.red,
                onPressed: _showDrawer)
          ],
        ),
        body: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("This Is Body"))),
      ),
    );
  }

  _showDrawer() {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 600),
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, _, __) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3.0,
                        spreadRadius: 3.0),
                  ],
                ),
                child: Material(
                  child: ListView(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            icon: Icon(Icons.close),
                            splashColor: Colors.red,
                            onPressed: () {
                              Navigator.pop(context, false);
                            }),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ClipOval(
                            child: Image.asset(
                          "assets/images/avator.jpg",
                          width: MediaQuery.of(context).size.height / 10,
                          height: MediaQuery.of(context).size.height / 10,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Abir Ahsan",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "abirahsan122@gmail.com",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Menu",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Offers",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "My Cart",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Last Orders",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Favourite",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "My Settings",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          ).drive(Tween<Offset>(
            begin: Offset(0, -1.0),
            end: Offset.zero,
          )),
          child: child,
        );
      },
    );
  }
}
