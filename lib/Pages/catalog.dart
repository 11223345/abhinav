class items{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  items({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  items(id: "code", name: "Aman", desc: "Iphone 12",
      price: 500, color: "Black", image: "img")
];