
class Food{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food({this.id, this.name, this.imagePath, this.category, this.price, this.discount, this.ratings});

}

final foods = [
  Food(
    id: "1",
    name: "Square Bru",
    imagePath: "assets/images/bru-beer.jpg",
    category: "1",
    price: 450,
    discount: 0,
    ratings: 3000,
  ),
   Food(
    id: "1",
    name: "House Wine",
    imagePath: "assets/images/unsplash.jpg",
    category: "2",
    price: 450,
    discount: 0,
    ratings: 3000,
  ),
];