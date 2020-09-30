import 'package:flutter/material.dart';
import 'package:sumbar_travel_app/models/popular_hotels_model.dart';
import 'package:sumbar_travel_app/screen/detail_popular_hotels_screen.dart';

class PopularHotels extends StatelessWidget {
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
                'Popular Hotels',
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
          height: 350.0,
          child: ListView.builder(
              padding: EdgeInsets.only(right: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: listPopular.length,
              itemBuilder: (BuildContext context, int index) {
                var popular = listPopular[index];
                return Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailPopularHotels(
                              popularHotels: popular,
                            );
                          }));
                        },
                        child: Hero(
                          tag: popular.image,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              popular.image,
                              width: 220.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                popular.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.location_city),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 3.0),
                                        child: Text(
                                          popular.address,
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
