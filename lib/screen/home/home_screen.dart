
import 'package:flutter/material.dart';
import 'package:t2207a_flutter/screen/home/ui/home_carousel.dart';
import 'package:t2207a_flutter/screen/home/ui/home_category.dart';
import 'package:t2207a_flutter/screen/home/ui/popular.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child:  Column(
         children: [
           HomeCarousel(),
           HomeCategory(),
           Popular()
         ],
       ),
     );
  }
}