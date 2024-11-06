import 'package:flutter/material.dart';
import 'settings_page.dart';

class ProgressPage extends StatelessWidget {
  final List<String> inProgressImages = [
    //agregar lógica para imágenes en progreso
  ];

  final List<String> completedImages = [
    //agregar lógica para imágenes completadas
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heritage Harbor'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text('Imágenes en Progreso', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                inProgressImages.isEmpty
                    ? Center(child: Text('Sin imágenes disponibles'))
                    : Expanded(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                          ),
                          itemCount: inProgressImages.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Text('Imagen ${index + 1}'),
                                Image.asset(inProgressImages[index]),
                              ],
                            );
                          },
                        ),
                      ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('Imágenes Completadas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                completedImages.isEmpty
                    ? Center(child: Text('Sin imágenes disponibles'))
                    : Expanded(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                          ),
                          itemCount: completedImages.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Text('Imagen ${index + 1}'),
                                Image.asset(completedImages[index]),
                              ],
                            );
                          },
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
