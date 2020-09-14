import 'package:flutter/material.dart';
import './screens/categorias_screen.dart';
import './screens/platos_categoria_screen.dart';
import './screens/recetas_screen.dart';
import './screens/tabs_screen.dart';
import './screens/filtros_screen.dart';
import './models/plato.dart';
import './dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ////////////////////////////////
//filtros y listas default para cuando iniciamos la app
///////////////////////////////
  ///
  Map<String, bool> _filtros = {
    'gluten': false,
    'lactosa': false,
    'vegano': false,
    'vegetariano': false,
  };

  List<Plato> _platosMostrados = DUMMY_PLATOS;
  List<Plato> _platosFavoritos = [];

  ///////////////////////////////////////////////
//  Este metodo debe ser llamado al apretar el boton, el cual esta en la screen de filtros
///////////////////////////////////////////////////
  ///
  void _aplicarFiltros(Map<String, bool> valoresFiltros) {
    setState(() {
      _filtros = valoresFiltros;
      _platosMostrados = DUMMY_PLATOS.where((plato) {
        ////////////////////////////////////////////////////////////////////////////
        //    si en los filtros actuales gluten only es true y el plato no es libre de gluten,
        ///     no se incluye en los platos mostrados por la app
        ////////////////////////////////////////////////////////////////////////////////
        if (_filtros['gluten'] && !plato.esLibreDeGluten) {
          return false;
        }
        if (_filtros['lactosa'] && !plato.esLibreDeLactosa) {
          return false;
        }
        if (_filtros['vegano'] && !plato.esVegano) {
          return false;
        }
        if (_filtros['vegetariano'] && !plato.esVegetariano) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  //////////////////////////////////////////////////
  ///  Logica para agregar o eliminar elementos a los platos favoritos
  ///   indexwhere retorna -1 si el valor de la condicion es falso, o el index del plato en la lista de ser verdadero
  //////////////////////////////////////////////////
  void _toggleFavorito(String platoId) {
    final idExistente =
        _platosFavoritos.indexWhere((plato) => plato.id == platoId);
    if (idExistente >= 0) {
      setState(() {
        _platosFavoritos.removeAt(idExistente);
      });
    } else {
      setState(() {
        _platosFavoritos.add(
          DUMMY_PLATOS.firstWhere((plato) => plato.id == platoId),
        );
      });
    }
  }
  ///////////////////////////////////////////////////
  ///  any retorna true si un plato (referenciamos por el id) esta en la lista de favoritos
  ///////////////////////////////////////////////

  bool _esPlatoFavorito(String platoId) {
    return _platosFavoritos.any((plato) => plato.id == platoId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppRecetas',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                title: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
      ////////////////////////////////////////////////
      ///  A traves de las namedRoutes pasamos los datos que se necesiten
      ///   con la ayuda de los constructores
      ////////////////////////////////////////////////
      routes: {
        '/': (ctx) => TabsScreen(_platosFavoritos),
        PlatosCategoriaScreen.routeName: (ctx) =>
            PlatosCategoriaScreen(_platosMostrados),
        RecetasScreen.routeName: (ctx) =>
            RecetasScreen(_toggleFavorito, _esPlatoFavorito),
        FiltrosScreen.routeName: (ctx) =>
            FiltrosScreen(_filtros, _aplicarFiltros),
      },
      ///////////////////////////////////////////////////////
      ///   Se usa para llevar al usuario a alguna pantalla
      ///      si es que olvide agregarla a las rutas
      ///////////////////////////////////////////////////////
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoriaScreen(),
        );
      },
    );
  }
}
