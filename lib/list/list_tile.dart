import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ListTileCode extends StatefulWidget {
  const ListTileCode({Key? key}) : super(key: key);

  @override
  State<ListTileCode> createState() => _ListTileCodeState();
}

class _ListTileCodeState extends State<ListTileCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('ListTile'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: [
             ListTile(
               title: Text('Title 1'),
             ),Divider(),
              ListTile(
                title: Text('Title 2'),
                leading: Icon(Icons.info),
                trailing: Icon(Icons.handshake),
              ),Divider(),
              ListTile(
                title: Text('Title 3'),
                isThreeLine: true,
                subtitle: Text('Subtitle 1'),
              ),Divider(),
              ListTile(
                title: Text('Tile 4'),
                dense: true,
              ),Divider(),
              ListTile(
                title: Text('Title 5'),
                subtitle: Text('Badge'),
                trailing: Badge(
                  badgeContent: Text('2'),
                  child: Icon(Icons.chat),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
