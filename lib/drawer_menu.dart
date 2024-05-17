import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.location_history,
              text: 'cliente',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.usuarios)}),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'empresa',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.servicios)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.payment,
              text: 'vendedores',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.pagos)}),
          _buildDrawerItem(
              icon: Icons.feed,
              text: 'producto',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.casas)}),
          _buildDrawerItem(
              icon: Icons.receipt,
              text: 'ventas',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.tarifa)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/cfe_Foco.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
