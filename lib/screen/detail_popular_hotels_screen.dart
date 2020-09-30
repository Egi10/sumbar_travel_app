import 'package:flutter/material.dart';
import 'package:sumbar_travel_app/models/popular_hotels_model.dart';

class DetailPopularHotels extends StatelessWidget {
  final PopularHotels popularHotels;

  DetailPopularHotels({@required this.popularHotels});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: popularHotels.image,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    child: Image.network(
                      popularHotels.image,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width * 1.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 15.0),
                          child: GestureDetector(
                            onTap: () => {
                              Navigator.pop(context),
                            },
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FavoriteButton(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    popularHotels.name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0, bottom: 20.0),
                    child: Text(
                      popularHotels.address,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Hotel details",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Text(
                      popularHotels.description,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isfavorite = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 1.3 - 23,
          right: 32.0,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isfavorite = !isfavorite;
            });
          },
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Icon(
              isfavorite ? Icons.favorite : Icons.favorite_border,
              size: 20.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
