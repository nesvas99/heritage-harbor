import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ManageSubscriptionPage extends StatefulWidget {
  @override
  _ManageSubscriptionPageState createState() => _ManageSubscriptionPageState();
}

class _ManageSubscriptionPageState extends State<ManageSubscriptionPage> {
  String activeSubscription = 'sin suscripción';

  @override
  void initState() {
    super.initState();
    _loadSubscription();
  }

  Future<void> _loadSubscription() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      activeSubscription = prefs.getString('activeSubscription') ?? 'sin suscripción';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestionar suscripción'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  activeSubscription,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Redirigir a la gestión de suscripciones en Google Play
                },
                child: Text('Gestionar en Google Play'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
