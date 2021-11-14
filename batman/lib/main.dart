import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: size.width,
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.bug_report_sharp),
                  labelText: "Введите буквы",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  )
                )
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send
              
              ),
              onPressed: null,
            )
          ]
        ),
        ),
      );
    
  }
} 