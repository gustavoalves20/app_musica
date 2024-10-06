import 'package:nusic/models/parametros/banda.dart';

class BandaLista {
  static List<Banda> get bandaLista => [
    Banda(imagePath: 'assets/linkinpark.jpg', nomeBanda: 'Linkin Park'),
    Banda(imagePath: 'assets/stay.jpg', nomeBanda: '1nonly'),
    Banda(imagePath: 'assets/bon-jovi.jpg', nomeBanda: 'Bon Jovi'),
    Banda(imagePath: 'assets/eminem.jpg', nomeBanda: 'Eminem'),
    Banda(imagePath: 'assets/guns.avif', nomeBanda: 'Guns N Roses'),
  ];
}