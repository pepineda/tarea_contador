import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  int _count = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea Contador',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: Wrap(
          direction: Axis.horizontal,
          spacing: 16,
          children: <Widget>[
            FloatingActionButton(
              onPressed: byTwo, // reference only
              backgroundColor: Colors.amber,
              child: const Text('/2'),
            ),
            FloatingActionButton(
              onPressed: timesTwo, // reference only
              backgroundColor: Colors.amber,
              child: const Text('*2'),
            ),
            FloatingActionButton(
              onPressed: substractTwo, // reference only
              backgroundColor: Colors.amber,
              child: const Text('-2'),
            ),
            FloatingActionButton(
              onPressed: addTwo, // reference only
              backgroundColor: Colors.amber,
              child: const Text('+2'),
            ),
          ],
        ),
        // children
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text(
            'Tarea - Contador',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: const Text(
                  'Pulse los botones para modificar el siguiente número:',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Text(
                '$_count',
                style: const TextStyle(
                  fontSize: 44,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addTwo() {
    setState(() {
      _count += 2;
    });
  }

  void substractTwo() {
    setState(() {
      _count -= 2;
    });
  }

  void timesTwo() {
    setState(() {
      _count *= 2;
    });
  }

  void byTwo() {
    setState(() {
      _count ~/= 2;
    });
  }
}
