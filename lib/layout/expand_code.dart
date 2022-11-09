import 'package:flutter/material.dart';

class ExpandCode extends StatefulWidget {
  const ExpandCode({Key? key}) : super(key: key);

  @override
  State<ExpandCode> createState() => _ExpandCodeState();
}

class _ExpandCodeState extends State<ExpandCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Expanded'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
         Expanded(
             child: Container(
               color: Colors.red,
               child: Text('Expand 1'),
             )),
            Expanded(
              flex: 2,
                child: Container(
                  color: Colors.green,
                  child: Text('Expand 2'),
                )),
            Expanded(
              flex: 3,
                child: Container(
                  color: Colors.yellow,
                  child: Text('Expand 3'),
                )),
          ],
        ),
      ),
    );
  }
}
