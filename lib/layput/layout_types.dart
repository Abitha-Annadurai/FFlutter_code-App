import 'package:ffluttercode/layput/sizedbox_code.dart';
import 'package:ffluttercode/layput/stack_code.dart';
import 'package:ffluttercode/layput/wrap_code.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'container_code.dart';
import 'expand_code.dart';
import 'fractionalsizedbox_code.dart';

class LayoutTpyes extends StatefulWidget {
  const LayoutTpyes({Key? key}) : super(key: key);

  @override
  State<LayoutTpyes> createState() => _LayoutTpyesState();
}

class _LayoutTpyesState extends State<LayoutTpyes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Layouts', style: TextStyle(color: Colors.black, fontSize: 20 ),),
        leading: Padding(padding: EdgeInsets.only(left: 12), child: Image.asset('assest/icon.jpg')),
        actions: [
          TextButton(onPressed: () async {
            var url = Uri.parse("");
            if(await canLaunchUrl(url) != null){
              await launchUrl(url);
            }else{
              throw "Cannot Load";
            }
          }, child: Text('Code', style: TextStyle(color: Colors.black),))
        ],
      ),
      body: Container(
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WarpCode(),),);
                  }, child: Text('Wrap',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => StackCode(),),);
                  }, child: Text('Stack',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContainerCode(),),);
                  }, child: Text('Container',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExpandCode(),),);
                  }, child: Text('Expanded',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SizedBoxCode(),),);
                  }, child: Text('Sized Box',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SixedBoxFrac(),),);
                  }, child: Text('Fractional Sized Box',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  )),

                ],
              ),
            ),)
      ),

    );
  }
}
