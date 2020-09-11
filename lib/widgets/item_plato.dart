import 'package:flutter/material.dart';
import '../models/plato.dart';
import '../screens/recetas_screen.dart';

class ItemPlato extends StatelessWidget {
  final String id;
  final String titulo;
  final String urlImagen;
  final int tiempoEstimado;
  final Dificultad dificultad;
  final Costo costo;

  ItemPlato({
    @required this.id,
    @required this.titulo,
    @required this.urlImagen,
    @required this.tiempoEstimado,
    @required this.dificultad,
    @required this.costo,
  });

  String get textoDificultad {
    switch (dificultad) {
      case Dificultad.Simple:
        return 'Simple';
        break;
      case Dificultad.Intermedia:
        return 'Desafiante';
        break;
      case Dificultad.Dificil:
        return 'Dificil';
        break;
      default:
        return 'Error';
    }
  }

  String get textoCosto {
    switch (costo) {
      case Costo.Barato:
        return 'Accesible';
      case Costo.NoTanCaro:
        return 'Intermedio';
      case Costo.Costoso:
        return 'Caro';
      default:
        return 'Error';
    }
  }

  void _mostrarRecetaPlato(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(RecetasScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _mostrarRecetaPlato(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15),
                    topRight: const Radius.circular(15),
                  ),
                  child: Image.network(
                    urlImagen,
                    height: 225,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    width: 250,
                    color: Colors.black54,
                    child: Text(
                      titulo,
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 5),
                      Text('$tiempoEstimado min'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 5),
                      Text('$textoDificultad'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 5),
                      Text('$textoCosto'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
