import 'package:flutter/material.dart';
class StackCode extends StatefulWidget {
  const StackCode({Key? key}) : super(key: key);

  @override
  State<StackCode> createState() => _StackCodeState();
}

class _StackCodeState extends State<StackCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Stack'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Divider(),
            Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(width: 300, height: 300, color: Colors.orangeAccent,),
              Container(width: 200, height: 200, color: Colors.lightGreen,),
              Container(width: 50, height: 50, color: Colors.purpleAccent,),
            ],
          ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
              Divider(),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(width: 300, height: 300, color: Colors.orangeAccent,),
                  Container(width: 200, height: 200, color: Colors.lightGreen,),
                  Container(width: 50, height: 50, color: Colors.purpleAccent,),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
