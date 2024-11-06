import 'package:flutter/material.dart';
import 'package:heritage_harbor/screens/customer_service_chat_page.dart';

class HelpCenterPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Centro de ayuda'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Por favor describe su problema',
              ),
              onChanged: (text) {
                // Lógica para relacionar el texto con las secciones
              },
            ),
            SizedBox(height: 20),
            Text('Secciones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ListTile(title: Text('Noticias'), onTap: () {}),
            ListTile(title: Text('Cuenta'), onTap: () {}),
            ListTile(title: Text('Suscripción'), onTap: () {}),
            ListTile(title: Text('Sincronización de datos'), onTap: () {}),
            ListTile(title: Text('Imagen'), onTap: () {}),
            ListTile(title: Text('Elementos'), onTap: () {}),
            ListTile(title: Text('Guía'), onTap: () {}),
            ListTile(title: Text('Eventos y exploración'), onTap: () {}),
            ListTile(title: Text('Comentarios'), onTap: () {}),
            ListTile(title: Text('Sobre nosotros'), onTap: () {}),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                child: Text('Contactenos'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomerServiceChatPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
