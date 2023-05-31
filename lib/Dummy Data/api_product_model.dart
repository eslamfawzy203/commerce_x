class ApiProductModel {
  // to be accessed by dot
  int? id;
  String? title;
  String? price;
  String? description;
  String? category;
  String? image;
  int? quantity;
  bool isFavourite = false;

  ApiProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.quantity,
    required this.isFavourite,
  });

  ApiProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'].toString();
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;

    return data;
  }
}
