import 'package:flutter/material.dart';
import 'package:heritage_harbor/screens/help_center_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'profile_page.dart';
import 'premium_page.dart';
import 'manage_subscription_page.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _coloredImages = true;
  bool _colorVibration = true;
  bool _soundEffects = true;
  bool _autoColorChange = true;
  bool _colorEffect = true;
  String selectedEffect = 'Ninguno';

  @override
  void initState() {
    super.initState();
    _loadSelectedEffect();
  }

  Future<void> _loadSelectedEffect() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedEffect = prefs.getString('selectedEffect') ?? 'Ninguno';
    });
  }

  Future<void> _saveSelectedEffect(String effect) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedEffect', effect);
    setState(() {
      selectedEffect = effect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Iniciar sesión para guardar el progreso y no perderlo nunca"),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Inicia sesión para sincronizar datos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        ElevatedButton.icon(
                          icon: Image.asset('assets/images/google_logo.png', height: 24),
                          label: Text("Iniciar sesión con Google"),
                          onPressed: () {
                            // Lógica de inicio de sesión con Google
                          },
                        ),
                        SizedBox(height: 10),
                        ElevatedButton.icon(
                          icon: Image.asset('assets/images/facebook_logo.png', height: 24),
                          label: Text("Iniciar sesión con Facebook"),
                          onPressed: () {
                            // Lógica de inicio de sesión con Facebook
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          ListTile(
            title: Text("Perfiles"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Obtener Premium"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PremiumPage()),
              );
            },
          ),
          ListTile(
            title: Text("Gestionar suscripción"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ManageSubscriptionPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Efectos de sombra"),
            subtitle: Text('Seleccionado: $selectedEffect'),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Efectos de sombra',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _saveSelectedEffect('Estándar');
                                    setState(() {});
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/standard_icon.png', width: 50),
                                      Text('Estándar'),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _saveSelectedEffect('Medio');
                                    setState(() {});
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/medium_icon.png', width: 50),
                                      Text('Medio'),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _saveSelectedEffect('Difícil');
                                    setState(() {});
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/hard_icon.png', width: 50),
                                      Text('Difícil'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _saveSelectedEffect('Desafío');
                                    setState(() {});
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/challenge_icon.png', width: 50),
                                      Text('Desafío'),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _saveSelectedEffect('Huellas');
                                    setState(() {});
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/earth_icon.png', width: 50),
                                      Text('Huellas'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Seleccionado: $selectedEffect',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
          SwitchListTile(
            title: Text("Mostrar imágenes Coloreadas"),
            value: _coloredImages,
            onChanged: (bool value) {
              setState(() {
                _coloredImages = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Vibración de Color Terminada"),
            value: _colorVibration,
            onChanged: (bool value) {
              setState(() {
                _colorVibration = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Efectos de sonido"),
            value: _soundEffects,
            onChanged: (bool value) {
              setState(() {
                _soundEffects = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Cambio de Color Automático"),
            value: _autoColorChange,
            onChanged: (bool value) {
              setState(() {
                _autoColorChange = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Efecto de color"),
            value: _colorEffect,
            onChanged: (bool value) {
              setState(() {
                _colorEffect = value;
              });
            },
          ),
          Divider(),
          ListTile(
            title: Text("Puntúanos"),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Center(
                          child: Column(
                            children: [
                              Image.asset('assets/images/logo.png', height: 80),
                              SizedBox(height: 10),
                              Text(
                                '¿Te Gusta Heritage Harbor?',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Si te gusta Heritage Harbor, ¿podrías calificarnos? ¡Gracias por tu apoyo!',
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                child: Text('Ir a Calificar'),
                                onPressed: () {
                                  // Lógica para redirigir a la página de calificaciones
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          ListTile(
            title: Text("Centro de ayuda"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenterPage()),
              );
            },
          ),
          ListTile(
            title: Text("Limpiar cache"),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return FutureBuilder<double>(
                    future: _getCacheSize(),
                    builder: (context, snapshot) {
                      double cacheSize = snapshot.data ?? 0;
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Limpiar Cache',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Text('Cache'),
                                  SizedBox(height: 10),
                                  Text('${cacheSize.toStringAsFixed(2)} MB'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Caché son los datos temporales generados al colorear imágenes y que pueden obtenerse mediante el servidor. Las animaciones se eliminarán, pero tus obras terminadas se conservarán. Limpiar el caché no afecta al funcionamiento normal de la aplicación.',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              child: Text('Limpiar'),
                              onPressed: cacheSize >= 0.1 ? () {
                                // Lógica para limpiar el caché
                              } : null,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Future<double> _getCacheSize() async {
    // Lógica para obtener el tamaño del caché
    return 0.1; // Ejemplo de valor
  }
}
