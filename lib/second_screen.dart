import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab_Two',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('2 лабораторная Вариант 4',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    width: 250,
                    height: 250,
                  ),
                  Container(
                    color: Colors.yellowAccent,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.green,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    color: Colors.lightBlue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blueAccent,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.deepPurple,
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Назад'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
