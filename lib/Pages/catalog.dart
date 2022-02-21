class Items{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}



class Catalogmodels{
   static final items = [
  Items(id: 1, name: "Aman", desc: "Iphone 12",
  price: 500, color: "Black", image: "https://www.reliancedigital.in/medias/OnePlus-Nord-CE-Smartphone-491996836-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w3OTk4NXxpbWFnZS9qcGVnfGltYWdlcy9oZTkvaDUxLzk1Njg3NzgwMjcwMzguanBnfDY5OTRiMjI2OWRjZGViYWMwMjBlMjcyN2RmN2RlMzE3ZDBhNzdlNDIwZjIwYWM3YmE5NGUyYTdhNTc2MzlkZmQ")
  ];
}
