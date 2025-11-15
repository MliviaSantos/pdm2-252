import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Contador Flutter',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: CounterPage(),
);
}
}


class CounterPage extends StatefulWidget {
@override
State<CounterPage> createState() => _CounterPageState();
}


class _CounterPageState extends State<CounterPage> {
int _count = 0;


void _increment() => setState(() => _count++);
void _decrement() => setState(() => _count--);
void _reset() => setState(() => _count = 0);


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Contador (Dart + Flutter)'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text('Toques no botão:', style: TextStyle(fontSize: 18)),
SizedBox(height: 8),
Text('$_count', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
SizedBox(height: 16),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
ElevatedButton(onPressed: _decrement, child: Icon(Icons.remove)),
SizedBox(width: 12),
ElevatedButton(onPressed: _reset, child: Text('Reset')),
SizedBox(width: 12),
ElevatedButton(onPressed: _increment, child: Icon(Icons.add)),
],
),
],
),
),
);
}
}
