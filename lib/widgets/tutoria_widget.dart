import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/tutoria.dart';

class EmailWidget extends StatelessWidget {
  final Tutoria tutoria;
  final Function onTap;


  const EmailWidget(
      {Key? key,
      required this.tutoria,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(tutoria);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Materia: ${tutoria.name}', style: fromTextStyle),
                   Text('Duracion: ${tutoria.tiempo}', style: subjectTextStyle),
                  Text('Costo: ${tutoria.sueldo}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
