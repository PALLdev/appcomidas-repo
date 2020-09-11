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
//filtros default para cuando iniciamos la app
  Map<String, bool> _filtros = {
    'gluten': false,
    'lactosa': false,
    'vegano': false,
    'vegetariano': false,
  };

  List<Plato> _platosMostrados = DUMMY_PLATOS;
  List<Plato> _platosFavoritos = [];

  void _filtrar(Map<String, bool> valoresFiltros) {
    setState(() {
      _filtros = valoresFiltros;
      _platosMostrados = DUMMY_PLATOS.where((plato) {
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
      routes: {
        '/': (ctx) => TabsScreen(_platosFavoritos),
        PlatosCategoriaScreen.routeName: (ctx) =>
            PlatosCategoriaScreen(_platosMostrados),
        RecetasScreen.routeName: (ctx) => RecetasScreen(),
        FiltrosScreen.routeName: (ctx) => FiltrosScreen(_filtros, _filtrar),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoriaScreen(),
        );
      },
    );
  }
}
