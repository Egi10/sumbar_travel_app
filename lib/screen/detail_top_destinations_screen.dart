import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:sumbar_travel_app/models/top_destinations_model.dart';
import 'package:toast/toast.dart';

class DetailTopDestinations extends StatelessWidget {
  final TopDestinationModel topDestinations;

  DetailTopDestinations({@required this.topDestinations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 1.3,
                child: Stack(
                  children: <Widget>[
                    Hero(
                      tag: topDestinations.urlImage,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          topDestinations.urlImage,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 1.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, right: 20.0),
                            child: GestureDetector(
                              onTap: () => {
                                Navigator.pop(context),
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    color: Color(0x40eeeeee),
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 25.0,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 20.0, left: 20.0, bottom: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            topDestinations.name,
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    topDestinations.harga,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  RatingBar(
                                    initialRating: topDestinations.start,
                                    filledIcon: Icons.star,
                                    emptyIcon: Icons.star_border,
                                    halfFilledIcon: Icons.star_half,
                                    isHalfAllowed: true,
                                    filledColor: Colors.amber,
                                    size: 20,
                                    onRatingChanged: (double rating) {
                                      Toast.show("Start $rating", context,
                                          duration: Toast.LENGTH_SHORT,
                                          gravity: Toast.BOTTOM);
                                    },
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Introduce',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                      child: Text(
                        topDestinations.introduce,
                        style: TextStyle(fontSize: 14.0),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
