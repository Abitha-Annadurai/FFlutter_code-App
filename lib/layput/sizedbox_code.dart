import 'package:flutter/material.dart';

class SizedBoxCode extends StatefulWidget {
  const SizedBoxCode({Key? key}) : super(key: key);

  @override
  State<SizedBoxCode> createState() => _SizedBoxCodeState();
}

class _SizedBoxCodeState extends State<SizedBoxCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Sized Box'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Sample 1'),
            SizedBox(height: 20,),
            Text('Sample 2'),
            SizedBox(height: 30,),
            Text('Sample 3'),
            SizedBox(height: 40,),

            Row(
              children: [
                Text('Sample 4'),
                SizedBox(width: 50,),
                Text('Sample 5'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
