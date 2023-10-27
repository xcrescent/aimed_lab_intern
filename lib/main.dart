import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Cards'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Card(
                  color: Color(0xffD18585),
                  margin: const EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Color(0xffC4C4C4),
                          height: 50.0,
                          width: 400,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 88.0),
                          child: FractionallySizedBox(
                            widthFactor: 1, // Adjust as needed
                            child: Container(
                              color: Color(0xffA8D8AD),
                              height: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            LayoutBuilder(
              builder: (ctx, cnt) => Stack(
                children: [
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Card(
                        color: Color(0xffD18585),
                        margin: const EdgeInsets.only(
                            top: 32, left: 16, right: 120.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              FractionallySizedBox(
                                widthFactor: 1, // Adjust as needed
                                child: Container(
                                  color: Color(0xffA8D8AD),
                                  height: 50, // Adjust as needed
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 0,
                    left: (cnt.maxWidth / 2) - 176,
                    child: Container(
                      color: Color(0xffC4C4C4),
                      height: 80.0,
                      width: 240,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
