import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Condiciones de Uso'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text('Condiciones de Uso', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('1. Aceptación de Términos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Al acceder y usar la aplicación Heritage Harbor, aceptas cumplir con estos términos y condiciones. Si no estás de acuerdo con algún término, por favor no uses nuestra aplicación.'),
            SizedBox(height: 10),
            Text('2. Uso de la Aplicación', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('La aplicación está destinada a usuarios mayores de 13 años. No debes usar la aplicación para ningún propósito ilegal o no autorizado. Esto incluye, pero no se limita a, la violación de cualquier ley local, nacional o internacional.'),
            SizedBox(height: 10),
            Text('3. Propiedad Intelectual', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Todo el contenido, incluidas las imágenes, textos, logotipos, diseños, software y otros materiales (colectivamente "Contenido"), es propiedad de NESVAStudios 99 o sus licenciantes y está protegido por leyes de derechos de autor, marcas registradas y otras leyes de propiedad intelectual. No puedes reproducir, distribuir, modificar, crear obras derivadas, exhibir públicamente, ejecutar públicamente, republicar, descargar, almacenar o transmitir cualquier Contenido sin el consentimiento previo por escrito de NESVAStudios 99.'),
            SizedBox(height: 10),
            Text('4. Registro y Seguridad de la Cuenta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Para acceder a ciertas funciones de la aplicación, es posible que debas registrarte y crear una cuenta. Eres responsable de mantener la confidencialidad de tu información de cuenta y contraseña, así como de todas las actividades que ocurran bajo tu cuenta. Te comprometes a notificar de inmediato a NESVAStudios 99 sobre cualquier uso no autorizado de tu cuenta o cualquier otra violación de seguridad.'),
            Text('5. Política de Privacidad', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Tu privacidad es importante para nosotros. Nuestra Política de Privacidad explica cómo recopilamos, usamos, compartimos y protegemos tu información personal. Al usar la aplicación, aceptas las prácticas de privacidad descritas en nuestra Política de Privacidad.'),
            Text('6. Contenido Generado por el Usuario', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Si envías, publicas o exhibes contenido en la aplicación, otorgas a NESVAStudios 99 una licencia no exclusiva, transferible, sublicenciable, libre de regalías y mundial para usar, reproducir, modificar, adaptar, publicar, traducir, crear obras derivadas, distribuir, exhibir y realizar dicho contenido en cualquier medio. Te comprometes a no publicar contenido que sea ilegal, ofensivo, difamatorio, obsceno o que viole los derechos de terceros.'),
            Text('7. Limitación de Responsabilidad', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('En la medida máxima permitida por la ley, NESVAStudios 99 no será responsable por daños directos, indirectos, incidentales, especiales, consecuentes o punitivos, incluidos, entre otros, la pérdida de ganancias, datos, uso, buena voluntad u otras pérdidas intangibles, resultantes de (i) tu acceso o uso o incapacidad para acceder o usar la aplicación; (ii) cualquier conducta o contenido de cualquier tercero en la aplicación; (iii) cualquier contenido obtenido de la aplicación; y (iv) acceso no autorizado, uso o alteración de tus transmisiones o contenido.'),
            Text('8. Modificaciones de Términos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Nos reservamos el derecho de modificar estos términos en cualquier momento. Las modificaciones serán efectivas al publicarlas en nuestra aplicación. Es tu responsabilidad revisar periódicamente estos términos para estar al tanto de cualquier cambio. El uso continuo de la aplicación después de la publicación de modificaciones constituye tu aceptación de esos cambios.'),
            Text('9. Terminación', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Podemos suspender o terminar tu acceso a la aplicación en cualquier momento y por cualquier motivo, incluida la violación de estos términos. Tras la terminación, las disposiciones de estos términos que por su naturaleza deban seguir en vigor seguirán en vigor.'),
            Text('10. Ley Aplicable', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Estos términos se regirán e interpretarán de acuerdo con las leyes del país donde NESVAStudios 99 tiene su sede, sin referencia a sus principios de conflicto de leyes.'),
            Text('11. Contacto', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Para cualquier consulta sobre estos términos, puedes contactarnos en contact@nesvastudios99.com.'),
          ],
        ),
      ),
    );
  }
}
