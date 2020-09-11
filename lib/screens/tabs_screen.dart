import 'package:flutter/material.dart';
import './categorias_screen.dart';
import './favoritos_screen.dart';
import '../widgets/inicio_drawer.dart';
import '../models/plato.dart';

class TabsScreen extends StatefulWidget {
  final List<Plato> _tusFavoritos;
  TabsScreen(this._tusFavoritos);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>> _paginas;

  int _indexTabActual = 0;

  @override
  void initState() {
    super.initState();
    _paginas = [
      {
        'pagina': CategoriaScreen(),
        'titulo': 'Categorias',
      },
      {
        'pagina': FavoritosScreen(widget._tusFavoritos),
        'titulo': 'Preparaciones favoritas',
      }
    ];
  }

  void _seleccionarTab(int index) {
    setState(() {
      _indexTabActual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_paginas[_indexTabActual]['titulo']),
      ),
      drawer: InicioDrawer(),
      body: _paginas[_indexTabActual]['pagina'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _seleccionarTab,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _indexTabActual,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.category,
            ),
            title: Text('Categorias'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.star,
            ),
            title: Text('Favoritos'),
          ),
        ],
      ),
    );
  }
}
