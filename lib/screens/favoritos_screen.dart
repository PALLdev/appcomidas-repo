import 'package:flutter/material.dart';
import '../models/plato.dart';

class FavoritosScreen extends StatelessWidget {
  final List<Plato> favoritos;
  FavoritosScreen(this.favoritos);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Aún no agregas contenido a tus favoritos.'),
    );
  }
}
