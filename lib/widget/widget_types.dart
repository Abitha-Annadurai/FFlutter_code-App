import 'package:ffluttercode/widget/card_code.dart';
import 'package:ffluttercode/widget/iconstype.dart';
import 'package:ffluttercode/widget/inkwell_code.dart';
import 'package:ffluttercode/widget/radio_code.dart';
import 'package:ffluttercode/widget/slider_code.dart';
import 'package:ffluttercode/widget/switch_code.dart';
import 'package:ffluttercode/widget/text_types.dart';
import 'package:ffluttercode/widget/textfield_types.dart';
import 'package:ffluttercode/widget/textformfieldtypes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'button_types.dart';
import 'checkbox_code.dart';
import 'dropdownbutton_types.dart';
import 'gradient_types.dart';
import 'image_types.dart';
import 'imagefilter_code.dart';
import 'indicator_code.dart';

class WidgetTypes extends StatefulWidget {
  const WidgetTypes({Key? key}) : super(key: key);

  @override
  State<WidgetTypes> createState() => _WidgetTypesState();
}

class _WidgetTypesState extends State<WidgetTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Widgets', style: TextStyle(color: Colors.black, fontSize: 20 ),),
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => IconsType(),),);
              }, child: Text('Icon',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TextTypes(),),);
              }, child: Text('Text',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardCode(),),);
              }, child: Text('Card',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SliderCode(),),);
              }, child: Text('Slider',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RadioCode(),),);
              }, child: Text('Radio',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageTypes(),),);
               }, child: Text('Image',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),

              TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ButtonTypes(),),);
              }, child: Text('Button',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SwitchCode(),),);
              }, child: Text('Switch',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => InkwellCode(),),);
              }, child: Text('Inkwell',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GradientCode(),),);
              }, child: Text('Gradient',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TextFieldTypes(),),);
              }, child: Text('TextField',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckboxCode(),),);
              }, child: Text('Check Box',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageFiltering(),),);
              }, child: Text('Image Filter',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),

              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TextFormFieldTypes(),),);
              }, child: Text('TextFormField',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => IndicatorCode(),),);
              }, child: Text('Progress Indicator',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              )),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DropDownButtonTypes(),),);
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
