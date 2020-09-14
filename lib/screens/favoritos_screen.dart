import 'package:flutter/material.dart';
import '../models/plato.dart';
import '../widgets/item_plato.dart';

class FavoritosScreen extends StatelessWidget {
  final List<Plato> favoritos;
  FavoritosScreen(this.favoritos);
  @override
  Widget build(BuildContext context) {
    if (favoritos.isEmpty) {
      return Center(
        child: Text('Aún no agregas contenido a tus favoritos.'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, posicion) {
          return ItemPlato(
            id: favoritos[posicion].id,
            titulo: favoritos[posicion].nombre,
            urlImagen: favoritos[posicion].imagenUrl,
            tiempoEstimado: favoritos[posicion].tiempoPreparacion,
            dificultad: favoritos[posicion].dificultad,
            costo: favoritos[posicion].costo,
          );
        },
        itemCount: favoritos.length,
      );
    }
  }
}
