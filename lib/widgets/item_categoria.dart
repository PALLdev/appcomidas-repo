import 'package:flutter/material.dart';
import '../screens/platos_categoria_screen.dart';

class ItemCategoria extends StatelessWidget {
  final String id;
  final String titulo;
  final Color color;

  ItemCategoria(this.id, this.titulo, this.color);

  void _seleccionCategoria(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      PlatosCategoriaScreen.routeName,
      arguments: {
        'idCat': id,
        'tituloCat': titulo,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => _seleccionCategoria(context),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: FittedBox(
            child: Text(
              titulo,
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.4),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
