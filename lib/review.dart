class Review {
  
  String name, restaurant, rating, notes;

  Review(String name, String restaurant,int rating, String notes) {
    this.name = name;
    this.restaurant = restaurant;
    this.notes = notes;
    setRating(rating);
  }

  void setRating(int rating){
    this.rating = rating.toString() + " Stars";
  }

  String getName(){
    return this.name;
  }

  String getRestaurant(){
    return this.restaurant;
  }

  String getRating(){
    return this.rating;
  }

  String getNotes(){
    return this.notes;
  }

}