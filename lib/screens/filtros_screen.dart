import 'package:flutter/material.dart';
import '../widgets/inicio_drawer.dart';

class FiltrosScreen extends StatefulWidget {
  static const routeName = '/filtros';

  final Function _guardarFiltros;
  final Map<String, bool> _filtrosActuales;

  FiltrosScreen(this._filtrosActuales, this._guardarFiltros);

  @override
  _FiltrosScreenState createState() => _FiltrosScreenState();
}

class _FiltrosScreenState extends State<FiltrosScreen> {
  ////////////////////////////////////
  ///   Como default en la app no hay filtros aplicados
  ///////////////////////////////////
  ///
  var _glutenfree = false;
  var _lactosafree = false;
  var _vegano = false;
  var _vegetariano = false;

  ////////////////////////////////////
  ///  Para iniciar el screen con los filtros seleccionados por el usuario
  ///////////////////////////////////
  @override
  initState() {
    super.initState();
    _glutenfree = widget._filtrosActuales['gluten'];
    _lactosafree = widget._filtrosActuales['lactosa'];
    _vegano = widget._filtrosActuales['vegano'];
    _vegetariano = widget._filtrosActuales['vegetariano'];
  }

  ////////////////////////////////////
  ///  Construir una opcion de filtro visualmente
  ///////////////////////////////////
  Widget _buildFiltro(
      bool valor, String titulo, String descripcion, Function cambiarValor) {
    return SwitchListTile(
      value: valor,
      onChanged: cambiarValor,
      title: Text(titulo),
      subtitle: Text(descripcion),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
            ),
            ////////////////////////////////////////////////
            ///  Metodo esta donde se maneja la logica de los filtros en este caso main.dart
            ///  y necesita un map de los valores de filtros que selecciono el usuario
            //////////////////////////////////////////////
            onPressed: () {
              final filtrosSeleccionados = {
                'gluten': _glutenfree,
                'lactosa': _lactosafree,
                'vegano': _vegano,
                'vegetariano': _vegetariano,
              };
              widget._guardarFiltros(filtrosSeleccionados);
            },
          ),
        ],
      ),
      drawer: InicioDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Text(
              'Elige tus preferencias',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView(
              children: [
                _buildFiltro(
                  _glutenfree,
                  'Libre de Gluten',
                  'Mostrar solo preparaciones libres de gluten.',
                  (nuevoValor) {
                    setState(() {
                      _glutenfree = nuevoValor;
                    });
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                _buildFiltro(
                  _lactosafree,
                  'Libre de Lactosa',
                  'Mostrar solo preparaciones libres de lactosa.',
                  (nuevoValor) {
                    setState(() {
                      _lactosafree = nuevoValor;
                    });
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                _buildFiltro(
                  _vegano,
                  'Vegano',
                  'Mostrar solo preparaciones veganas.',
                  (nuevoValor) {
                    setState(() {
                      _vegano = nuevoValor;
                    });
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                _buildFiltro(
                  _vegetariano,
                  'Vegetariano',
                  'Mostrar solo preparaciones vegetarianas.',
                  (nuevoValor) {
                    setState(() {
                      _vegetariano = nuevoValor;
                    });
                  },
                )
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              final filtrosSeleccionados = {
                'gluten': _glutenfree,
                'lactosa': _lactosafree,
                'vegano': _vegano,
                'vegetariano': _vegetariano,
              };
              widget._guardarFiltros(filtrosSeleccionados);
            },
            child: Text('Guardar cambios'),
          ),
        ],
      ),
    );
  }
}
