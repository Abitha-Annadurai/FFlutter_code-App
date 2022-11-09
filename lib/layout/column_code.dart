import 'package:flutter/material.dart';

class ColumnCode extends StatefulWidget {
  const ColumnCode({Key? key}) : super(key: key);

  @override
  State<ColumnCode> createState() => _ColumnCodeState();
}

class _ColumnCodeState extends State<ColumnCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Column'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.greenAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.amberAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.teal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
          ],
        ),
      ),
    );
  }
}
