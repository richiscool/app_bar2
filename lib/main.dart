import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is an App bar',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is an App bar'),
        leading: const Icon(
          Icons.favorite,
          color: Colors.amber,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        elevation: 4,
      ),

      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            // First Row
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.amber,
                  width: 488,
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.amber,
                  width: 488,
                  height: 100,
                ),
              ],
            ),
            // Second Row
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.lightGreenAccent,
                  width: 1000,
                  height: 90,
                ),
              ],
            ),
          // Third Row
           Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.blueAccent,
                  width: 320.333333333,
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.amber,
                  width: 320.333333333,
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.pink,
                  width: 320.333333333,
                  height: 100,
                ),
              ],
            ),
            // Fourth Row
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.red,
                  width: 1000,
                  height: 500,
                ),
              ],
            ),
          ],
        ),
      ),

      // Click Button
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              fixedSize: const Size(double.infinity, 30),
            ),
            child: const Text('Click Me!'),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
    );
  }
}
