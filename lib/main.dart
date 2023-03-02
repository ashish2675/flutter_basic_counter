import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Counter'),
          backgroundColor: Color.fromARGB(255, 182, 76, 200),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                x.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Tap the plus icon to increment the number.'),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 194, 122, 206),
          child: Icon(Icons.add),
          onPressed: () {
            x++;
            setState(() {});
            print(x.toString());
          },
        ),
      ),
    );
  }
}
