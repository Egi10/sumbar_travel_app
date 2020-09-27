import 'package:flutter/material.dart';
import 'package:sumbar_travel_app/widget/popular_hotels.dart';
import 'package:sumbar_travel_app/widget/top_destinations.dart';
import 'package:toast/toast.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<IconData> _icons = [
    Icons.flight,
    Icons.domain,
    Icons.directions_railway,
    Icons.local_taxi,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What you would like to find?',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cera'),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            TopDestinations(),
            SizedBox(
              height: 40.0,
            ),
            PopularHotels(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          Toast.show("Cooming Soon", context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color:
              _selectedIndex == index ? Color(0xFF0278ae) : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color:
              _selectedIndex == index ? Color(0xFFFFFFFF) : Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}
