import 'package:destinationapp/screen/placeCard.dart';
import 'package:flutter/material.dart';
import 'package:destinationapp/data/iconsdata.dart';
import 'package:destinationapp/styles/style.dart';
import 'package:destinationapp/data/places.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 10),
        child: new ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 100),
              child: new Text(
                "What you would like to find?",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 80,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                  children: iconData
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              width: 70,
                              child: new Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.blue[50],
                                ),
                                child: new Icon(
                                  e["Icon"],
                                  color: e["Color"],
                                  size: 40,
                                ),
                              ),
                            ),
                          ))
                      .toList()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "Top Destinations",
                    style: subHeading,
                  ),
                  new Text(
                    "See All",
                    style: smallSubHeading,
                  )
                ],
              ),
            ),
            new Container(
              height: 330,
              child: new ListView(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 30),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: dataPlace
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Container(
                            height: 200,
                            width: 200,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration: Duration(milliseconds: 500),
                                        pageBuilder: (context, _, __) =>
                                            PlaceCardInfo(
                                              card: e,
                                            )));
                              },
                              child: new Card(
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Hero(
                                        tag: e.place.toString(),
                                        child: Container(
                                          height: 150,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/${e.image}'),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: new Text(
                                        "${e.place}, ${e.country}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          new Text(
                                            "\$${e.price}",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          new Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "Popular Hotels",
                    style: subHeading,
                  ),
                  new Text(
                    "See All",
                    style: smallSubHeading,
                  )
                ],
              ),
            ),
            new Container(
              height: 330,
              child: new ListView(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 30),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: dataPlace.reversed
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Container(
                            height: 200,
                            width: 200,
                            child: new Card(
                              elevation: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/${e.image}'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: new Text(
                                      "${e.place}, ${e.country}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text(
                                          "\$${e.price}",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        new Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList()),
            )
          ],
        ),
      ),
    );
  }
}
