
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget{
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories"),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Category name"),
              );
            },
          ),
        )
      ],
    );
  }
}