import 'package:corvitakhuwat/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Second());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text('Hello'),
                      ElevatedButton(
                          onPressed: (){},
                          child: Text('Button'),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        child: Text('Button'),
                      ),

                      Text('Second'),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text('Hello'),
                      ElevatedButton(
                        onPressed: (){},
                        child: Text('Button'),
                      ),

                    ],
                  ),
                ],
              ),
              Image.network('https://images.unsplash.com/photo-1601050690597-df0568f70950?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2Ftb3NhfGVufDB8fDB8fHww&w=1000&q=80'),
              Card(
                child: Row(
                  children: [
                    Text('hello'),
                    Text('hello'),
                    Text('hello'),
                  ],
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}


