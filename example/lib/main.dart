import 'package:flutter/material.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TouchSpin Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter TouchSpin'),
        ),
        body: Center(
          child: Column(
            children: [
              TouchSpin(
                value: 10,
                min: 5,
                max: 100,
                step: 5,
                displayFormat:
                    NumberFormat.currency(locale: 'en_US', symbol: '\$'),
                textStyle: const TextStyle(fontSize: 36),
                iconSize: 48.0,
                addIcon: const Icon(Icons.add_circle_outline),
                subtractIcon: const Icon(Icons.remove_circle_outline),
                iconActiveColor: Colors.green,
                iconDisabledColor: Colors.grey,
                iconPadding: const EdgeInsets.all(20),
                onChanged: (val) {
                  print(val);
                },
                enabled: true,
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: TouchSpin(
                      value: 10,
                      min: 5,
                      max: 100,
                      step: 1,
                      textStyle: const TextStyle(fontSize: 18),
                      iconSize: 24.0,
                      addIcon: const Icon(Icons.arrow_circle_up),
                      subtractIcon: const Icon(Icons.arrow_circle_down),
                      iconActiveColor: Colors.blue,
                      iconDisabledColor: Colors.grey,
                      iconPadding: const EdgeInsets.all(20),
                      onChanged: (val) {
                        print(val);
                      },
                      enabled: true,
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: TouchSpin(
                      value: 10,
                      min: 5,
                      max: 100,
                      step: 5,
                      textStyle: const TextStyle(fontSize: 18),
                      iconSize: 24,
                      addIcon: const Icon(Icons.arrow_forward),
                      subtractIcon: const Icon(Icons.arrow_back),
                      iconActiveColor: Colors.red,
                      iconDisabledColor: Colors.grey,
                      iconPadding: const EdgeInsets.all(20),
                      onChanged: (val) {
                        print(val);
                      },
                      enabled: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
