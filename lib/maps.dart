import 'package:car_app/stats.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:car_app/main.dart';
import 'package:location/location.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:car_app/additional.dart';



class MapsPage extends StatelessWidget {

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
      home: _MapsPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _MapsPage extends StatefulWidget {
  _MapsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MapScreenState createState() => _MapScreenState();
}




class _MapScreenState extends State<_MapsPage> {
  bool _hasBeenPressed=false;
  LatLng _initialcameraposition = LatLng(32.9858, -96.7501);
  late GoogleMapController _controller;
  List<Marker> _markers = [];
  @override
  void initState(){
    initialize();
    super.initState();}
    initialize() {
      Marker first = Marker(
              markerId: MarkerId('SomeId'),
              position: LatLng(32.9858, -97),
              infoWindow: InfoWindow(
                  title: 'Charging Station - 1'
              ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)

      );
      Marker third = Marker(
          markerId: MarkerId('SomeId'),
          position: LatLng(32.5, -96.0),
          infoWindow: InfoWindow(
              title: 'Charging Station - 2'
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)

      );
      Marker second = Marker(
          markerId: MarkerId('SomeId'),
          position: LatLng(31.9858, -96.7501),
          infoWindow: InfoWindow(
              title: 'Charging Station - 3'
          ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)
      );
      Marker fourth = Marker(
          markerId: MarkerId('SomeId'),
          position: LatLng(31.5, -97.2),
          infoWindow: InfoWindow(
              title: 'Charging Station - 4'
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)
      );
      _markers.add(first);
      _markers.add(second);
      _markers.add(third);
      _markers.add(fourth);

      setState(() {

      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Stack(
          children: [
            GoogleMap(
              markers: _markers.map((e) => e).toSet(),
              zoomGesturesEnabled: true,
              initialCameraPosition: CameraPosition(
                  target: _initialcameraposition,
              zoom:8.0),
                zoomControlsEnabled: false,
                scrollGesturesEnabled: true,
                compassEnabled: true,
                rotateGesturesEnabled: true,
                mapToolbarEnabled: true,
                tiltGesturesEnabled: true,
                onCameraMove:(CameraPosition cameraPosition){
                  //print(cameraPosition.zoom);
                },
                gestureRecognizers: Set()
                  ..add(Factory<TapGestureRecognizer>(() => TapGestureRecognizer()))

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/8,
              color: Colors.red[800],
              padding: EdgeInsets.only(top:50, left: 30),
              child: Text(
                  "Charging Stations",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
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
                    //Navigator.push(context , MaterialPageRoute(builder: (context) => MapsPage()));
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



