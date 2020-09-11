import 'package:flutter/material.dart';
import '../screens/filtros_screen.dart';

class InicioDrawer extends StatelessWidget {
  Widget buildListTiles(IconData icono, String texto, Function tapOpcion) {
    return ListTile(
      leading: Icon(
        icono,
        size: 30,
        color: Colors.black,
      ),
      title: Text(
        texto,
        style: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.w700),
      ),
      onTap: tapOpcion,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColorDark,
            child: Text(
              'Bienvenido a ComeNitido!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          buildListTiles(
            Icons.restaurant,
            'Preparaciones',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTiles(
            Icons.settings,
            'Preferencias',
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltrosScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
