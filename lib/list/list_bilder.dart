import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  const ListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const items = 10;

    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text('List $idx'),
        trailing: Icon(Icons.call),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('ListView.Builder'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView.builder(
            itemCount: items * 2,
            padding: EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int i){
              if(i.isOdd)
                return Divider();
              final index = i ~/ 2 + 1;
              return _buildRow(index);
            },
          ),
        ),
      ),
    );
  }
}
