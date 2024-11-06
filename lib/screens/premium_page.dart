import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget {
  @override
  _PremiumPageState createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  String selectedPlan = 'Anual';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obtener Premium'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Pistas ilimitadas'),
                  Text('• Obtenga 200 créditos diarios'),
                  Text('• Eliminar todos los anuncios'),
                  Text('• Desbloquear los viswoa-fotos'),
                  Text('• Quitar marca de agua'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedPlan = 'Anual';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedPlan == 'Anual' ? Colors.blue : Colors.grey,
                  ),
                  child: Column(
                    children: [
                      Text('Anual'),
                      Text('\$99.99 / año'),
                      Text('0.27 / día', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedPlan = 'Mensual';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedPlan == 'Mensual' ? Colors.blue : Colors.grey,
                  ),
                  child: Column(
                    children: [
                      Text('Mensual'),
                      Text('\$9.99 / mes'),
                      Text('0.33 / día', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedPlan = 'Semanal';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedPlan == 'Semanal' ? Colors.blue : Colors.grey,
                  ),
                  child: Column(
                    children: [
                      Text('Semanal'),
                      Text('\$2.99 / semana'),
                      Text('0.43 / día', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                child: Text('Suscríbete'),
                onPressed: () {
                  // Lógica para suscribirse
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: RichText(
                
                text: TextSpan(
                  text: 'El pago se cargará a tu cuenta de Google Play al confirmar la compra o al final del período de prueba (si se ofrece), y puedes cancelar la suscripción antes del final del período de prueba gratis. Tu suscripción se renovará automáticamente por la misma duración del paquete al mismo precio hasta que la canceles en la configuración de la tienda ',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Google Play',
                      style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Redirigir al usuario al apartado de Suscripciones de Google Play
                        },
                    ),
                    TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
