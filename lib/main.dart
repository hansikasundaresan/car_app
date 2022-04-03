import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:car_app/stats.dart';
import 'package:car_app/maps.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}




class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasBeenPressed= false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child:Text(
                'Your bZ4X',
                textAlign: TextAlign.left,
                style: const TextStyle(fontWeight: FontWeight.w200,
                    fontSize: 30
                ),
              ),
            ),
            Image.asset(
              'images/car.png',
              //height:MediaQuery.of(context).size.height/2,
              //width:MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
            ),
            new CircularPercentIndicator(
              radius: 175.0,
              lineWidth: 15.0,
              animation: true,
              percent: 0.8,
              center: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '80%',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Charged',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                    color: Colors.white,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Remaining',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Miles'),
                            SizedBox(height: 10),
                            Center(
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '50',
                                      style: TextStyle(
                                          fontSize: 50,
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
                    color: Colors.white,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Maintenance',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Check in (days)'),
                            SizedBox(height: 10),
                            Center(
                              child: Text('15',
                                  style: TextStyle(
                                      fontSize: 50,
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
             /* StreamBuilder(
                stream: FirebaseFirestore.instance.collection('Battery Level').snapshots(),

                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  print(snapshot);
                  return ListView(
                    children: snapshot.data!.docs.map((document) {
                      print(document['Battery Level']);
                      return Container(

                        child: Center(child: Text(document['Battery Level'])),
                      );
                    }).toList(),
                  );
                },
              ),*/
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
                      //Navigator.push(context , MaterialPageRoute(builder: (context) => MyApp()));
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
