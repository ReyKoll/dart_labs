import 'package:flutter/material.dart';
import 'calculator_answer.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '3 лабораторная 4 вариант',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          centerTitle: true,
        ),
        body: Screen(),
      ),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final _formKey = GlobalKey<FormState>();

  final _fieldWeight = TextEditingController();
  final _fieldSpeed = TextEditingController();

  bool _agreement = false;

  late int _answer;

  void calculate() {
    int numWeight = int.parse(_fieldWeight.text);
    int numSpeed = int.parse(_fieldSpeed.text);

    _answer = numWeight * (numSpeed * numSpeed) ~/ 2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Введите массу, кг'),
              keyboardType: TextInputType.number,
              controller: _fieldWeight,
              validator: (value) {
                if (value!.isEmpty) return 'Введите массу';
              },
            ),
            SizedBox(height: 20.0),

            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Введите скорость, м/сек'),
              keyboardType: TextInputType.number,
              controller: _fieldSpeed,
              validator: (value) {
                if (value!.isEmpty) return 'Введите скорость';
              },
            ),
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate() && _agreement) {
                  calculate();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CalculateScreen(answer: _answer.toString())));
                } // endif
              }, // onPressed
              child: Text('Расчитать', selectionColor: Colors.blue),
            ),
            SizedBox(height: 30.0),

            CheckboxListTile(
              value: _agreement,
              onChanged: (bool? value) => setState(() => _agreement = value!),
              title: Text(
                  'Я ознакомлен с документом "Согласие на обработку персональных данных" и даю согласие на обработку моих персональных данных в соответствии с требованиями "Федерального закона  О персональных данных" №152-ФЗ". '),
            ),
            SizedBox(height: 30.0),

            ElevatedButton(
              onPressed: () {
                // Обычный Navigator.pop возвращает черный экран
                Navigator.of(context, rootNavigator: true).pop(context);
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
