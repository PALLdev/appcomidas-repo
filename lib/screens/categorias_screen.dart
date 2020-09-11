import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/item_categoria.dart';

class CategoriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((datosCateg) => ItemCategoria(
                datosCateg.id, datosCateg.titulo, datosCateg.bgColor))
            .toList(),
      ),
    );
  }
}
