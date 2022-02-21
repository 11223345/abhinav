import 'package:flutter/material.dart';
import 'package:untitled/Pages/catalog.dart';

class ItemWidget extends StatelessWidget{
  final Items item;
  

  const ItemWidget({Key? key, required this.item}) :assert(item!= null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(leading: Image.network("https://www.reliancedigital.in/medias/OnePlus-Nord-CE-Smartphone-491996836-i-1-1200W"
            "x1200H?context=bWFzdGVyfGltYWdlc3w3OTk4NXxpbWFnZS9qcGVnfGltYWdlcy9oZTkvaDUxLzk1Njg3NzgwMjcwMzguanBnfDY5OTRiMjI2OWRjZGVi"
            "YWMwMjBlMjcyN2RmN2RlMzE3ZDBhNzdlNDIwZjIwYWM3YmE5NGUyYTdhNTc2MzlkZmQ"),
          title: Text(item.name),
          onTap: (){
          print("${item.name} pressed");
          },
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}", style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,

          ),
          textScaleFactor: 1.5,),

        ),
      ),
    );
    
    
    
  }
}