import 'package:flutter/material.dart';
import 'third_screen.dart';

class CalculateScreen extends StatelessWidget {
  final String answer;

  const CalculateScreen({Key? key, required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ответ'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
              child: Text(
                answer,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
