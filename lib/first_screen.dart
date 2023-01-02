import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '1 лабораторная, 4 вариант',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                child: Image.network(
                    'https://i.pinimg.com/originals/3e/6c/b4/3e6cb451104af925b3ec592132d5f0b4.jpg'),
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
