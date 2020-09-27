import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sumbar_travel_app/models/top_destinations_model.dart';

class TopDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Destinations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              GestureDetector(
                onTap: () => {print('See All')},
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.0),
          height: 268.0,
          child: ListView.builder(
              padding: EdgeInsets.only(right: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: topDestination.length,
              itemBuilder: (BuildContext context, int index) {
                var topDestinations = topDestination[index];
                return Container(
                  width: 210.0,
                  child: Card(
                    margin: EdgeInsets.only(left: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: InkWell(
                      onTap: () {
                        print('Klik Disni');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 10.0),
                            child: Hero(
                              tag: topDestinations.urlImage,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  topDestinations.urlImage,
                                  height: 120.0,
                                  width: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15.0, left: 10.0, right: 10.0),
                            child: Text(
                              topDestinations.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 10.0),
                            child: Text(
                              topDestinations.harga,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12.0),
                            child: RatingBarIndicator(
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemSize: 12.0,
                              itemCount: 5,
                              itemPadding: EdgeInsets.only(left: 10.0),
                              rating: topDestinations.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
