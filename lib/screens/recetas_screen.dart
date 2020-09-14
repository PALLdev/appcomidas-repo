import 'package:flutter/material.dart';
import '../dummy_data.dart';

class RecetasScreen extends StatelessWidget {
  final Function marcaFavorito;
  final Function esFavorito;
  RecetasScreen(this.marcaFavorito, this.esFavorito);

  static const routeName = '/receta-plato';

  Widget _buildTitulosSecciones(BuildContext ctx, String texto) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        texto,
        style: Theme.of(ctx).textTheme.title,
      ),
    );
  }

  Widget _buildContainers(Widget child) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 148,
      width: 240,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final idPlato = ModalRoute.of(context).settings.arguments as String;
    final platoSeleccionado =
        DUMMY_PLATOS.firstWhere((plato) => plato.id == idPlato);
    return Scaffold(
      appBar: AppBar(
        title: Text(platoSeleccionado.nombre),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 255,
              width: double.infinity,
              child: Image.network(
                platoSeleccionado.imagenUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildTitulosSecciones(context, 'Ingredientes'),
            _buildContainers(
              ListView.builder(
                itemBuilder: (ctx, posicion) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 5,
                    ),
                    child: Text(
                      platoSeleccionado.ingredientes[posicion],
                    ),
                  ),
                ),
                itemCount: platoSeleccionado.ingredientes.length,
              ),
            ),
            _buildTitulosSecciones(context, 'Preparación'),
            _buildContainers(
              ListView.builder(
                itemBuilder: (ctx, posicion) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${posicion + 1}'),
                      ),
                      title: Text(
                        platoSeleccionado.instrucciones[posicion],
                      ),
                    ),
                    Divider(
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
                itemCount: platoSeleccionado.instrucciones.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => marcaFavorito(idPlato),
        child: Icon(
          esFavorito(idPlato) ? Icons.star : Icons.star_border,
        ),
      ),
    );
  }
}
