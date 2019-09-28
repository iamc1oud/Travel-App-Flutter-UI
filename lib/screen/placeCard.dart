import 'package:destinationapp/data/places.dart';
import 'package:flutter/material.dart';

class PlaceCardInfo extends StatelessWidget {
  final PlaceCard card;

  PlaceCardInfo({this.card});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
        children: [new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Hero(
              tag: card.place.toString(),
              child: new Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/${card.image}'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        bottom: 20,
                        left: 20,
                        child: Material(
                          type: MaterialType.transparency,
                          child: new Text(
                            "${card.place}, ${card.country}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: Material(
                          type: MaterialType.transparency,
                          child: new Text(
                            "\$${card.price}",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ],
        )],
      ),
      bottomSheet: Container(
        height: 50,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 500,
            height: 50,
            child: new RaisedButton(
              splashColor: Colors.deepOrange,
              color: Colors.deepOrange,
              onPressed: () {},
              child: new Text(
                "Book",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
