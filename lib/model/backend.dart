import 'package:tutoriasapp_chrithiangarcia_examen/model/tutoria.dart';

import 'tutoria.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _tutorias=[
     Tutoria(id: 1, name: 'Programacion WEB', descripcion: ' Aprenderas Fundamentos de programacion web y los lenguajes de programacion que estan marcando tendecias, las clases se impartiran por modulos y los horarios los escojes tu..', tiempo: '2 meses', profesor: 'Ing. Walter Mera', sueldo: '70'),
      Tutoria(id: 2, name: 'Servidores', descripcion: 'Aprenderas sobres los servidores web y de escritorios y las arquitecturas que estan utilizandos las grandes empresas.', tiempo: '2 meses', profesor: 'Ing. Tito Macias', sueldo: '85'),
      Tutoria(id: 3, name: 'Sistemas Operativo', descripcion: 'Aprende sobre los diversos sistemas operativos desde su instalacion hasta la configuracion correctamente en varios modulos.', tiempo: '1 mes', profesor: 'Ing. Klever Anchundia', sueldo: '70'),
      Tutoria(id: 4, name: 'Inteligencia Artificial', descripcion: 'Estudia algoritmos y desarrolla proyectos de inteligencia artificial que te van a servir para emfrentarte en el ambito profesional.',  tiempo: '1 mes', profesor: 'Ing. Antonio Pincay', sueldo: '80'),
       Tutoria(id: 5, name: 'Sistemas Digitales', descripcion: 'En modulos Faciles aprende sobre el comportamiento de los sistemas digitales, realizaras practicas y proyectos en varios entornos de la electronica.',  tiempo: '2 meses', profesor: 'Ing. Marcos Ayobi', sueldo: '100'),
  ];


 List<Tutoria> getTutorias(){
   return _tutorias;
 }
 


}
