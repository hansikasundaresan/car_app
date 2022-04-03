import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:car_app/main.dart';
import 'package:car_app/maps.dart';
import 'package:mdi/mdi.dart';
import 'package:car_app/additional.dart';




class StatsPage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: _StatsPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _StatsPage extends StatefulWidget {
  _StatsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  __StatsPage createState() => __StatsPage();
}

class __StatsPage extends State<_StatsPage> {
  int _counter = 0;
  bool _hasBeenPressed= false;
  String hard_breaking = '15%';
  int hb = 15;
  String collision_warnings= '50%';
  int cw=50;
  String tailgating = '40%';
  int tg = 40;
  String aggressive_turninging = "70%";
  int agt = 70;
  @override
  Widget build(BuildContext context) {



    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      "Stats",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Icon(Icons.search)
                  ],
                 ),
                SizedBox(
                  height: 25,
                ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right:10),
              child: Card(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 20.0, right:20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Weekly Stats',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Percentage'),
                        SizedBox(height: 10),
                        Center(
                          child: Column(
                            children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TextButton(
                                child: Text(
                                  "Sun",
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                  fontSize: 20),

                                ),
                                onPressed: () => {
                                  setState(() {
                                    hard_breaking = '15%';
                                    hb = 15;
                                    collision_warnings= '50%';
                                    cw=50;
                                    tailgating = '40%';
                                    tg = 40;
                                    aggressive_turninging = "70%";
                                    agt = 70;
                                  }),

                                },

                              ),
                              TextButton(
                                child: Text(
                                  "Mon",
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),

                                ),
                                onPressed: () => {
                                  setState(() {
                                    hard_breaking = '45%';
                                    hb = 45;
                                    collision_warnings= '70%';
                                    cw=70;
                                    tailgating = '62%';
                                    tg = 62;
                                    aggressive_turninging = "82%";
                                    agt = 82;
                                  })
                                },




                              ),
                              TextButton(
                                child: Text(
                                  "Tue",
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),

                                ),
                                onPressed: () => {
                                  setState(() {
                                    hard_breaking = '73%';
                                    hb = 73;
                                    collision_warnings= '37%';
                                    cw=37;
                                    tailgating = '11%';
                                    tg = 11;
                                    aggressive_turninging = "12%";
                                    agt = 12;
                                  }),
                                                            },

                              ),
                              TextButton(
                                child: Text(
                                  "Wed",
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),

                                ),
                                onPressed: () => {
                                  setState(() {
                                    hard_breaking = '55%';
                                    hb = 55;
                                    collision_warnings= '44%';
                                    cw=44;
                                    tailgating = '33%';
                                    tg = 33;
                                    aggressive_turninging = "22%";
                                    agt = 22;
                                  }),
                                  },

                              ),
                            ],
                          ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  TextButton(
                                    child: Text(
                                      "Thur",
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),

                                    ),
                                    onPressed: () => {
                                    setState(() {
                                    hard_breaking = '34%';
                                      hb = 34;
                                      collision_warnings= '77%';
                                      cw=77;
                                      tailgating = '99%';
                                      tg = 99;
                                      aggressive_turninging = "66%";
                                      agt = 66;                   }),                  },

                                  ),
                                  TextButton(
                                    child: Text(
                                      "Fri",
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),

                                    ),
                                    onPressed: () => {
                                      setState(() {
                                        hard_breaking = '34%';
                                        hb = 34;
                                        collision_warnings= '55%';
                                        cw=55;
                                        tailgating = '89%';
                                        tg = 89;
                                        aggressive_turninging = "13%";
                                        agt = 13;
                                      })

                                      },

                                  ),
                                  TextButton(
                                    child: Text(
                                      "Sat",
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),

                                    ),
                                    onPressed: () => {
                                      setState(() {
                                        hard_breaking = '92%';
                                        hb = 92;
                                        collision_warnings= '11%';
                                        cw=11;
                                        tailgating = '50%';
                                        tg = 50;
                                        aggressive_turninging = "83%";
                                        agt = 83;
                                      })   },

                                  ),
                                  TextButton(
                                    child: Text(
                                      "Avg",
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),

                                    ),
                                    onPressed: () => {
                                      setState(() {
                                        hard_breaking = '49%';
                                        hb = 49;
                                        collision_warnings= '49%';
                                        cw=49;
                                        tailgating = '54%';
                                        tg = 54;
                                        aggressive_turninging = "49%";
                                        agt = 49;
                                      })}

                                  ),
                                ],),

                            ],),
                        ),
                        Text("Safety Score: 47",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                              color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: hb < 33 ? Colors.green : hb < 66  ? Colors.yellow : Colors.red,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hard Breaking',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(''),
                            SizedBox(height: 10),
                            Center(
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: hard_breaking,
                                      style: TextStyle(
                                          fontSize: 47,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Card(
                    color: cw < 33 ? Colors.green : cw < 66  ? Colors.yellow : Colors.red,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Collision',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Warnings'),
                            SizedBox(height: 10),
                            Center(
                              child: Text(collision_warnings,
                                  style: TextStyle(
                                      fontSize: 47,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: tg < 33 ? Colors.green : tg < 66  ? Colors.yellow : Colors.red,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tailgaiting',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(''),
                            SizedBox(height: 10),
                            Center(
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: tailgating,
                                      style: TextStyle(
                                          fontSize: 47,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,

                  ),
                  Card(
                    color: agt < 33 ? Colors.green : agt < 66  ? Colors.yellow : Colors.red,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Aggresive',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('turning'),
                            SizedBox(height: 10),
                            Center(
                              child: Text(aggressive_turninging,
                                  style: TextStyle(
                                      fontSize: 47,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: _hasBeenPressed ? Colors.green : Colors.red[800],
        onPressed: () => {
          setState(() {
            _hasBeenPressed = !_hasBeenPressed;
          })
        },
        tooltip: _hasBeenPressed ? 'Turn Car Off' : 'Turn Car On',
        foregroundColor: Colors.white,
        //backgroundColor: Colors.red[800],
        child: Icon(Icons.power_settings_new_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        color: Colors.red[800],
        child: Container(
          height: MediaQuery.of(context).size.height/15,
          child: Material(
            type: MaterialType.transparency,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(context , MaterialPageRoute(builder: (context) => MyHomePage(title: 'title')));
                  },
                  iconSize: 30,
                  icon: Icon(Icons.home_rounded),
                ),
                IconButton(
                  color: Colors.white,
                  onPressed: (){

                  },
                  iconSize: 30,
                  icon: Icon(Icons.bar_chart_rounded),
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.height/20),
                ),
                IconButton(
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(context , MaterialPageRoute(builder: (context) => MapsPage()));
                  },

                  iconSize: 30,
                  icon: Icon(Icons.add_location_alt_outlined),
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/20),
                ),
                IconButton(
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(context , MaterialPageRoute(builder: (context) => additional()));
                  },
                  iconSize: 30,
                  icon: Icon(Icons.manage_search_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
