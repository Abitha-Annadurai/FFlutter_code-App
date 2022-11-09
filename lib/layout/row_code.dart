import 'package:flutter/material.dart';

class RowCode extends StatefulWidget {
  const RowCode({Key? key}) : super(key: key);

  @override
  State<RowCode> createState() => _RowCodeState();
}

class _RowCodeState extends State<RowCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Row'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.deepPurpleAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.orangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.indigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.redAccent,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.brown,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.lightGreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.purpleAccent,
              child: Row(
               // crossAxisAlignment: CrossAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.flutter_dash_outlined, size: 50,),
                  Icon(Icons.flutter_dash_outlined, size: 100,),
                  Icon(Icons.flutter_dash_outlined, size: 60,),
                ],
              ),
            ),
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
          ],
        ),
      ),
    );
  }
}
