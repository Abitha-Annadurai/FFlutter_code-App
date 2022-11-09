import 'package:flutter/material.dart';

class ContainerCode extends StatefulWidget {
  const ContainerCode({Key? key}) : super(key: key);

  @override
  State<ContainerCode> createState() => _ContainerCodeState();
}

class _ContainerCodeState extends State<ContainerCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Container'),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 200, height: 200,
                    color: Colors.yellow,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
                    decoration: BoxDecoration(
                      border: Border.all(width: 5),
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                        right: Radius.circular(20),
                      )
                  ),
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text('Box'),
                    ),),
                  SizedBox(height: 50,),
                  Container(
                    color: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    transform: Matrix4.rotationZ(-0.1),
                  ),


                ],
              ),
            ),
      )
    );
  }
}
