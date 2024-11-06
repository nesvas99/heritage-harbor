import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Política de Confidencialidad'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text('Política de confidencialidad', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('1. Introducción', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('En NESVAStudios 99, nos comprometemos a proteger tu privacidad. Esta Política de Privacidad describe cómo recopilamos, usamos, compartimos y protegemos tu información cuando usas nuestra aplicación Heritage Harbor.'),
            SizedBox(height: 10),
            Text('2. Información que Recopilamos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('• Recopilamos información para ofrecerte una mejor experiencia de usuario. Los tipos de información que podemos recopilar incluyen:'),
            Text('• Información de Uso: Detalles sobre cómo usas nuestra aplicación, incluidas las funciones que utilizas y las preferencias de configuración.'),
            Text('• Información de Dispositivo: Tipo de dispositivo, sistema operativo, identificadores únicos de dispositivo, y datos de conexión de red.'),
            SizedBox(height: 10),
            Text('3. Uso de la Información', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Utilizamos la información que recopilamos para los siguientes fines:'),
            Text('• Proveer y Mejorar el Servicio: Personalizar tu experiencia, ofrecer soporte técnico y mejorar nuestras funcionalidades.'),
            Text('• Comunicación: Enviar notificaciones, actualizaciones y otra información relevante.'),
            Text('• Cumplimiento Legal: Cumplir con las leyes, regulaciones y solicitudes gubernamentales.'),
            SizedBox(height: 10),
            Text('4. Compartición de la Información', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('No compartimos tu información personal con terceros, salvo en las siguientes circunstancias:'),
            Text('Con tu Consentimiento: Cuando has dado tu consentimiento explícito.'),
            Text('Proveedores de Servicios: Con terceros que realizan servicios en nuestro nombre (por ejemplo, servicios de hospedaje y análisis).'),
            Text('Requisitos Legales: Cuando sea necesario para cumplir con la ley o responder a un proceso legal.'),
            SizedBox(height: 10),
            Text('5. Seguridad de la Información', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Implementamos medidas de seguridad razonables para proteger tu información contra acceso no autorizado, alteración, divulgación o destrucción. Sin embargo, ningún método de transmisión por Internet o método de almacenamiento electrónico es 100% seguro.'),
            Text('6. Retención de la Información', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Conservamos tu información personal solo durante el tiempo necesario para cumplir con los propósitos para los cuales se recopiló y para cumplir con nuestras obligaciones legales.'),
            SizedBox(height: 10),
            Text('7. Tus Derechos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Tienes derecho a:'),
            Text('• Acceder y Rectificar: Solicitar acceso y corrección de tu información personal.'),
            Text('• Eliminar: Solicitar la eliminación de tu información personal.'),
            Text('• Oponerse: Oponerte al procesamiento de tu información personal en determinadas circunstancias.'),
            SizedBox(height: 10),
            Text('8. Enlaces a Otros Sitios Web', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Nuestra aplicación puede contener enlaces a otros sitios web. No somos responsables de las prácticas de privacidad o el contenido de esos sitios.'),
            SizedBox(height: 10),
            Text('9. Cambios a Esta Política de Privacidad', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Podemos actualizar esta Política de Privacidad de vez en cuando. Te notificaremos sobre cualquier cambio mediante la publicación de la nueva política en nuestra aplicación. Te recomendamos revisar esta política periódicamente para estar informado sobre cómo protegemos tu información.'),
            SizedBox(height: 10),
            Text('10. Contacto', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Si tienes alguna pregunta o inquietud sobre esta Política de Privacidad, por favor contáctanos en contact@nesvastudios99.com.'),            
          ],
        ),
      ),
    );
  }
}
