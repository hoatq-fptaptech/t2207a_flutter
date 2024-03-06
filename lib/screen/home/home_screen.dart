
import 'package:flutter/material.dart';
import 'package:t2207a_flutter/screen/home/ui/home_carousel.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return const Column(
       children: [
          HomeCarousel(),
         Text("First section"),
         Text("Second section")
       ],
     );
  }
}