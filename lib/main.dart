import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2207a_flutter/bloc/cart_bloc.dart';
import 'package:t2207a_flutter/my_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (_)=> CartBloc(),
        child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyPage(),
    );
  }
}

