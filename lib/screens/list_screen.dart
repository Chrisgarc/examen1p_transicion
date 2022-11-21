import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/tutoria_widget.dart';
import 'detail_screen.dart';
import '../model/tutoria.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var tutorias = Backend().getTutorias();
 

  void showDetail( Tutoria tutoria) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( tutoria: tutoria,);
    }));
    
    setState(() {
 
      tutorias = Backend().getTutorias();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
    
      ),


      
      body: ListView.separated(
        itemCount: tutorias.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EmailWidget(
          tutoria: tutorias[index],
          onTap: showDetail,  
  
        ),
      
          
      ),  

    );  
  }
}
