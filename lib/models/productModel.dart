class ProductModel {
  int id;
  String title;
  String image;
  double price;
  String description;
  String category;
  Rating rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.category,
    required this.rating,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: double.parse(json['price'].toString()),
      description: json['description'],
      category: json['category'],
      rating: Rating.fromJson(json['rating']),
    );
  }
}

class Rating {
  double rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });
  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
        rate: double.parse(json['rate'].toString()), count: json['count']);
  }
}