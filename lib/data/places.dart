import 'package:flutter/material.dart';

class PlaceCard {
  String image;
  String place;
  String country;
  int price;
  
  PlaceCard({this.image, this.country, this.place, this.price});
}

List<PlaceCard> dataPlace = [
  PlaceCard(
    image: "Geography-of-Vatican-City-View-from-Vatican-City.jpg",
    country: "Vatican",
    place: "Vatican City",
    price: 456
  ),
  PlaceCard(
    image: "London-UK-Uvet.se_.jpg",
    country: "United Kingdom",
    place: "London",
    price: 543
  ),
  PlaceCard(
    image: "taj-mahal-xl_101717072707.jpg",
    country: "India",
    place: "Agra",
    price: 519
  ),
];  