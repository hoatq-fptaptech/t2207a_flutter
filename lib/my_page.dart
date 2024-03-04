
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget{
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("T2207A Demo App"),
      ),
      body:const Text(
        "Hello world!",
        style: TextStyle(color: Colors.pink)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
        ],
      ),
    );
  }
}