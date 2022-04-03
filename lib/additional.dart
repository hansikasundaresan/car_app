import 'package:car_app/stats.dart';
import 'package:flutter/material.dart';
import 'package:car_app/main.dart';
import 'package:flutter/foundation.dart';
import 'package:car_app/login.dart';
import 'package:car_app/maps.dart';
import 'package:percent_indicator/percent_indicator.dart';



class additional extends StatelessWidget {

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
      home: _additional(title: 'Flutter Demo Home Page'),
    );
  }
}

class _additional extends StatefulWidget {
  _additional({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _add createState() => _add();

}


class _add extends State<_additional> {
  bool _hasBeenPressed = false;
  bool on_clicked = false;
  bool heater = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
                        "Additional Details and Settings",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            new CircularPercentIndicator(
              radius: 175.0,
              lineWidth: 15.0,
              animation: true,
              percent: 0.22,
              center: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '22%',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Premium Improved By',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 12),
                    )
                  ],
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: on_clicked ? Colors.green : Colors.red,
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
                            Center(child:IconButton(
                              iconSize: 100,
                              icon: Icon(on_clicked ? Icons.lock_rounded: Icons.lock_open),
                              tooltip: "Lock or Unlock",
                              onPressed: () {
                                setState(() {
                                  on_clicked = ! on_clicked;
                                });
                              },
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Card(
                    color: heater ? Colors.green : Colors.red,
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
                            Center(child:IconButton(
                              iconSize: 100,
                              icon: Icon(heater? Icons.thermostat_auto_rounded :Icons.thermostat_rounded ),
                              tooltip: "Turn on auto AC or Heater",
                              onPressed: () {
                                setState(() {
                                  heater = ! heater;
                                });
                              },
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right:10, top:10),
              child: Card(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/8,
                    child : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                            Text(
                                '\$ Saved \n on Gas',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),),
                          ]
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20))
                          ],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(
                                '123K',
                                style: TextStyle(
                                    fontSize: 47,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ]
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Logout Confirmation'),
                    content: Text('Are you sure you want to log out?'),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[800],
                          ),
                          onPressed: () {
                            Navigator.push(context , MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: Text('Yes')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[800],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('No'))
                    ],
                  ),
                );
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.grey, fontSize: 15),
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
                    Navigator.push(context , MaterialPageRoute(builder: (context) => StatsPage()));
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