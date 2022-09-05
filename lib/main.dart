import 'package:flutter/material.dart';
import 'package:rest_api/screens/technicalscreen.dart';
import '../screens/overviewscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OverViewScreen()),
                    );}, child: const Text("OverviewScreen")),
          const Padding(padding:  EdgeInsets.all(20)),
          ElevatedButton(onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TechnicalScreen()),
                    );}, child: const Text("TechnicalScreen")),
        ],),
      )
    );
  }
}

