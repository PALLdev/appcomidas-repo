import 'package:flutter/foundation.dart';

enum Dificultad { Simple, Intermedia, Dificil }

enum Costo { Barato, NoTanCaro, Costoso }

class Plato {
  final String id;
  final String nombre;
  final String imagenUrl;
  final List<String> ingredientes;
  final List<String> instrucciones;
  final List<String> categorias;
  final int tiempoPreparacion;
  final Dificultad dificultad;
  final Costo costo;
  final bool esLibreDeGluten;
  final bool esLibreDeLactosa;
  final bool esVegano;
  final bool esVegetariano;

  const Plato({
    @required this.id,
    @required this.nombre,
    @required this.imagenUrl,
    @required this.ingredientes,
    @required this.instrucciones,
    @required this.categorias,
    @required this.tiempoPreparacion,
    @required this.dificultad,
    @required this.costo,
    @required this.esLibreDeGluten,
    @required this.esLibreDeLactosa,
    @required this.esVegano,
    @required this.esVegetariano,
  });
}
