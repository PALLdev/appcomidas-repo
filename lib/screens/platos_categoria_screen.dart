import 'package:flutter/material.dart';
import '../widgets/item_plato.dart';
import '../models/plato.dart';

class PlatosCategoriaScreen extends StatelessWidget {
  static const routeName = '/categorias-platos';

  final List<Plato> platosFiltrados;
  PlatosCategoriaScreen(this.platosFiltrados);

  //se utiliza para hacer la navegacion de la app via constructor, existe un metodo mejor Named Routes
  // final String id_categoria;
  // final String titulo_categoria;
  // PlatosCategoriaScreen(this.id_categoria, this.titulo_categoria);

  @override
  Widget build(BuildContext context) {
    final routeArgum =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final idCategoria = routeArgum['idCat'];
    final tituloCateogoria = routeArgum['tituloCat'];

    final platosCategoria = platosFiltrados.where((plato) {
      return plato.categorias.contains(idCategoria);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(tituloCateogoria),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, posicion) {
          return ItemPlato(
            id: platosCategoria[posicion].id,
            titulo: platosCategoria[posicion].nombre,
            urlImagen: platosCategoria[posicion].imagenUrl,
            tiempoEstimado: platosCategoria[posicion].tiempoPreparacion,
            dificultad: platosCategoria[posicion].dificultad,
            costo: platosCategoria[posicion].costo,
          );
        },
        itemCount: platosCategoria.length,
      ),
    );
  }
}
