

import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 400,
                width: 300,
                padding: EdgeInsets.only(right: 15),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(10)
                    ),
                  ),
                  elevation: 8.0,
                  child: Column(
                    children: [
                      Image.asset(
                          'assets/images/perfume.png',
                        height: 250,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Shalimar Perfume',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          child: Text('Add to Cart'),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
               right: 0,
                top: 20,
                child: Container(
                  width: 40,
                  height: 360,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 15.0),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'Shalimar Perfume',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
