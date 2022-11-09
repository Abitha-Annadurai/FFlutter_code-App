import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Grid_code.dart';
import 'list_bilder.dart';
import 'list_tile.dart';

class ListTypes extends StatefulWidget {
  const ListTypes({Key? key}) : super(key: key);

  @override
  State<ListTypes> createState() => _ListTypesState();
}

class _ListTypesState extends State<ListTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Lists', style: TextStyle(color: Colors.black, fontSize: 20 ),),
        leading: Padding(padding: EdgeInsets.only(left: 12), child: Image.asset('assest/icon.jpg')),
        actions: [
          TextButton(onPressed: () async {
            var url = Uri.parse("https://github.com/Abitha-Annadurai/Flutter_Widgets.git");
            if(await canLaunchUrl(url) != null){
              await launchUrl(url);
            }else{
              throw "Cannot Load";
            }
          }, child: Text('Code', style: TextStyle(color: Colors.black),))
        ],
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/bg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListTileCode(),),);
                  }, child: Text('ListTile',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),

                  TextButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridCode(),),);
                  }, child: Text('Grid List',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),

                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListBuilder(),),);
                  }, child: Text('ListView.Builder',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),

                  TextButton(onPressed: (){
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DropDownButtonTypes(),),);
                  }, child: Text('Dropdown and Menu Button',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),)
      ),
    );
  }
}
