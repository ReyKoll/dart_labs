import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

void main() =>
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        routes: {
          '/':(BuildContext context) => HomePage(),
          '/first':(BuildContext context) => FirstScreen(),
          '/second':(BuildContext context) => SecondScreen(),
          '/third':(BuildContext context) => ThirdScreen(),
      },
    ),
  );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Колотилкин Сергей 4 вариант'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: Text('Первая лабораторная'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Вторая лабораторная'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Третья лабораторная'),
            ),
          ],
        ),
      ),
    );
  }
}
