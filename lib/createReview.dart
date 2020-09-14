import 'package:flutter/material.dart';
import 'homepage.dart';
import 'review.dart';

class createReview extends StatefulWidget {

  final HomepageState _homepage;
  
  createReview(this._homepage);
  _CreateReviewState createState() => _CreateReviewState(_homepage);

}

class _CreateReviewState extends State<createReview> {
  final HomepageState _homepage;
  _CreateReviewState(this._homepage);

  String stars;
  final name = TextEditingController();
  final restaurant = TextEditingController();
  final notes = TextEditingController();

  void cr(){
    int yo = int.parse(stars);
    String one = name.text; 
    String two = restaurant.text;
    String three = notes.text;
    widget._homepage.addReviews(Review(one, two, yo, three));
    Navigator.pop(context);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Crete"),
      ),
      body: Column(children: [
        TextField(
          controller: name,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter reviewer name'),
        ),
        TextField(
          controller: restaurant,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter restaurant name'),
        ),
        DropdownButton<String>(
          value: stars,
          items: <String>['1', '2', '3', '4', '5'].map((String value) {
            return  DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              stars = value;
            });
          },
        ),
        TextField(
          controller: notes,
          decoration:
              InputDecoration(border: InputBorder.none, hintText: 'Notes'),
        ),
        RaisedButton(
          child: Text("Create"),
          onPressed: (){
            cr();
          },
          )
      ]),
    );
  }
}