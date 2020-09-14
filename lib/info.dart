import 'package:flutter/material.dart';
import 'package:restaurantreview/review.dart';


class info extends StatefulWidget {
  
  Review review;

  info({this.review});

  _infoState createState() => _infoState();
}

class _infoState extends State<info> {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text(widget.review.getRestaurant()),

    
    ),
    body: Column(
      children: [
        Text(widget.review.getName()),
        Text(widget.review.getRestaurant()),
        Text(widget.review.getRating()),
        Text(widget.review.getNotes()),
      ]
    ),
    );
  }
}