import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("06tplm002 - 201011400232 - Mahdiaroji"),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(12, (index) {
            final number = index + 1;
            final englishNumber = _getEnglishNumber(number);

            return Container(
              child: Card(
                color: Color.fromARGB(255, 182, 238, 168),
                child: Center(
                  child: Text(
                    englishNumber,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  String _getEnglishNumber(int number) {
    switch (number) {
      case 1:
        return 'One';
      case 2:
        return 'Two';
      case 3:
        return 'Three';
      case 4:
        return 'Four';
      case 5:
        return 'Five';
      case 6:
        return 'Six';
      case 7:
        return 'Seven';
      case 8:
        return 'Eight';
      case 9:
        return 'Nine';
      case 10:
        return 'Ten';
      case 11:
        return 'Eleven';
      case 12:
        return 'Twelve';
      default:
        return '';
    }
  }
}
