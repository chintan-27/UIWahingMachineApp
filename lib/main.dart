import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:washingapp/scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _outershadow = BoxDecoration(
      color: Color.fromARGB(255, 238, 238, 238),
      boxShadow: [
        BoxShadow(offset: Offset(10, 10),color: Color.fromARGB(80, 0, 0, 0),blurRadius: 10 ),
        BoxShadow(offset: Offset(-10, -10),color: Color.fromARGB(150, 255, 255, 255),blurRadius: 10)
      ],
      borderRadius: BorderRadius.all(Radius.circular(20))
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 238, 238, 238),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    NeuomorphicContainer(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
                      color: Color.fromARGB(255, 238, 238, 238),
                      borderRadius: BorderRadius.circular(20),
                      child: FlatButton(
                        child: Icon(Icons.arrow_left,size: 40,color: Colors.black54,),
                      ),
                    ),
                  ],
                ),
                Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                      height: MediaQuery.of(context).size.height * 0.61,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          NeuomorphicContainer(
                            height:  MediaQuery.of(context).size.height * 0.6,
                            width: 100,
                            color: Color.fromARGB(255, 238, 238, 238),
                            borderRadius: BorderRadius.circular(50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.redAccent,
                                        Colors.yellowAccent
                                      ]
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child:Scale()
                          )
                        ],
                      ),
                    ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Current   :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "400",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    )
                  ],
                )
              ],
            )
          ),
        ),
        backgroundColor: Color.fromARGB(255, 238, 238, 238),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NeuomorphicContainer(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(30),
                      color: Color.fromARGB(255, 238, 238, 238),
                      borderRadius: BorderRadius.circular(20),
                      child: FlatButton(
                          child: Icon(Icons.arrow_left,size: 40,color: Colors.black54,),
                        onPressed: (){
                            _scaffoldKey.currentState.openDrawer();
                        },
                      ),
                    ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: NeuomorphicContainer(
                      style: NeuomorphicStyle.Concave,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 238, 238, 238),
                      height: 70,
                      width: 140,
                      offset: Offset(10, 10),
                      child: Text(
                        "29:20",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          color: Colors.black
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Text(
                      "Washing \n Machine",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        NeuomorphicContainer(
                          width: 30,
                          height: 30,
                          padding: EdgeInsets.all(7.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 238, 238, 238),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(7.5)
                            ),
                          ),
                          ),
                        SizedBox(
                          height: 30,
                        ),
                        NeuomorphicContainer(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(15),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 238, 238, 238),
                          child: Icon(
                            Icons.power_settings_new,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        NeuomorphicContainer(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(15),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 238, 238, 238),
                          child: Icon(
                            Icons.wb_incandescent,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        NeuomorphicContainer(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(15),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 238, 238, 238),
                          child: Icon(
                            Icons.pause,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    NeuomorphicContainer(
                      height: 300,
                      width: 300,
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 220, 220, 220),
                      padding: EdgeInsets.all(25),
                      child: NeuomorphicContainer(
                        height: 250,
                        width: 250,
                        style: NeuomorphicStyle.Concave,
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 238, 238, 238),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
//                padding: EdgeInsets.symmetric(horizontal:),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    NeuomorphicContainer(
                      shape: BoxShape.rectangle,
                      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                      color: Color.fromARGB(255, 238, 238, 238),
                      height: 150,
                      width: 130,
                      borderRadius: BorderRadius.circular(20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(15),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Fast".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20  ,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                    "12min",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 0
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    NeuomorphicContainer(
                      shape: BoxShape.rectangle,
                      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                      color: Color.fromARGB(255, 238, 238, 238),
                      height: 150,
                      width: 130,
                      borderRadius: BorderRadius.circular(20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(15),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Medium".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 20  ,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "24min",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 0
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    NeuomorphicContainer(
                      shape: BoxShape.rectangle,
                      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                      color: Color.fromARGB(255, 238, 238, 238),
                      height: 150,
                      width: 130,
                      borderRadius: BorderRadius.circular(20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(15),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Slow".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 20  ,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "32min",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 0
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
