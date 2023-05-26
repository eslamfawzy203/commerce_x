class Product {
  int id;
  String name;
  double price;
  String description;
  String image;
  int? quantity;
  bool isFavourite;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      required this.image,
      this.quantity,required this.isFavourite,});
}
