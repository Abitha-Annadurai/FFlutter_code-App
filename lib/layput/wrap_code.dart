import 'package:flutter/material.dart';

class WarpCode extends StatefulWidget {
  const WarpCode({Key? key}) : super(key: key);

  @override
  State<WarpCode> createState() => _WarpCodeState();
}

class _WarpCodeState extends State<WarpCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Warp'),
      ),
      body: Wrap(
        spacing: 10,
        children: [
          'Apple', 'Banana','Call','Drop','Lemon'
        ].map((String name) => Chip(
            avatar: CircleAvatar(
              child: Text(name.substring(0,1)),
            ),
        label: Text(name),
        )
        ).toList()
      ),
    );
  }
}
