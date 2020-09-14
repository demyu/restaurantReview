import 'package:flutter/material.dart';
import 'package:restaurantreview/info.dart';
import 'review.dart';
import 'createReview.dart';

class homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<homepage> {
  List<Review> reviews = List();

  void addReviews(Review r){
    this.reviews.add(r);
    setState(() {
      this.reviews=reviews;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Restaurant Review"),
          leading: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => createReview(this)));
              }),

        ),
        body: ListView.builder(
            itemCount: reviews.length,
            itemBuilder: (BuildContext context, int index) {
              final review = reviews[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => info(
                                review: review,
                              )));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: EdgeInsets.only(
                        top: 5.0, bottom: 5, right: 10, left: 5),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          review.getName(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(review.getRestaurant(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
              );
            }));
  }
}

