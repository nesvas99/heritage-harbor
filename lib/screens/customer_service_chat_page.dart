import 'package:flutter/material.dart';

class CustomerServiceChatPage extends StatefulWidget {
  const CustomerServiceChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomerServiceChatPageState createState() => _CustomerServiceChatPageState();
}

class _CustomerServiceChatPageState extends State<CustomerServiceChatPage> {
  final TextEditingController _messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [
    {'sender': 'bot', 'text': '¡Hola! Bienvenido a HH, por favor hágame una pregunta o haga clic en Preguntas frecuentes a continuación.'}
  ];

  void _sendMessage(String message) {
    setState(() {
      messages.add({'sender': 'user', 'text': message});
      messages.add({
        'sender': 'bot',
        'text': _generateBotResponse(message),
      });
    });
    _messageController.clear();
  }

  String _generateBotResponse(String message) {
    // Simulación de respuesta del bot basada en el mensaje del usuario
    if (message.contains('Noticias')) {
      return 'Aquí tienes las últimas noticias.';
    } else if (message.contains('Cuenta')) {
      return 'Puedes gestionar tu cuenta desde la configuración.';
    } else if (message.contains('Suscripción')) {
      return 'Aquí tienes información sobre tu suscripción.';
    } else if (message.contains('Sincronización de datos')) {
      return 'Así es como puedes sincronizar tus datos.';
    } else if (message.contains('Imagen')) {
      return 'Aquí tienes detalles sobre las imágenes.';
    } else if (message.contains('Elementos')) {
      return 'Estos son los elementos disponibles.';
    } else if (message.contains('Guía')) {
      return 'Esta es la guía completa.';
    } else if (message.contains('Eventos y exploración')) {
      return 'Aquí tienes los próximos eventos.';
    } else if (message.contains('Comentarios')) {
      return 'Aquí puedes dejar tus comentarios.';
    } else if (message.contains('Sobre nosotros')) {
      return 'Esta es la información sobre nosotros.';
    } else {
      return 'Lo siento, no entiendo tu consulta. Por favor, selecciona una opción de las siguientes.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicio al cliente'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return Row(
                    mainAxisAlignment: message['sender'] == 'user'
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: <Widget>[
                      if (message['sender'] == 'bot')
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/chatbot_logo.png'),
                        ),
                      Container(
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: message['sender'] == 'user' ? Colors.green : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          message['text'],
                          style: TextStyle(
                            color: message['sender'] == 'user' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      if (message['sender'] == 'user')
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user_logo.png'),
                        ),
                    ],
                  );
                },
              ),
            ),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Escribe tu mensaje aquí...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_messageController.text.trim().isNotEmpty) {
                      _sendMessage(_messageController.text);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
