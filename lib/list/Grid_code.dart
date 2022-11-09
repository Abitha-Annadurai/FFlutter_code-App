import 'package:flutter/material.dart';

class GridCode extends StatelessWidget {
  const GridCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('GridList'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
              crossAxisCount: 2,
            children: List.generate(20, (index) {
              return Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Text('Grid $index'),
                ),
              );
            })
        ),
      ),
    );
  }
}
