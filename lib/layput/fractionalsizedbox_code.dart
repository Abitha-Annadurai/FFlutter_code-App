import 'package:flutter/material.dart';

class SixedBoxFrac extends StatefulWidget {
  const SixedBoxFrac({Key? key}) : super(key: key);

  @override
  State<SixedBoxFrac> createState() => _SixedBoxFracState();
}

class _SixedBoxFracState extends State<SixedBoxFrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Fractionaly Sized Box'),
      ),
      body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
              ),
              Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.2,
                  )),
              Container(
                height: 100,
                width: 100,
              ),
              SizedBox(height: 10,),
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.4,
                  widthFactor: 0.5,
                  child: Placeholder(),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
