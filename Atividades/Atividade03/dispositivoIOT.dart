// dispositivo_iot.dart
import 'dart:io';
import 'dart:async';
import 'dart:math';

Future<void> main() async {
  final socket = await Socket.connect(InternetAddress.loopbackIPv4, 4040);
  print('Dispositivo conectado ao servidor');

  final random = Random();

  Timer.periodic(Duration(seconds: 10), (timer) {
    // Simula uma temperatura entre 20.0 e 30.0 graus
    double temperatura = 20 + random.nextDouble() * 10;
    String mensagem = temperatura.toStringAsFixed(2);
    
    socket.write('$mensagem\n');
    print('Temperatura enviada: $mensagem ºC');
  });

  // Para manter o programa rodando
  await Future.delayed(Duration(minutes: 10));
  socket.close();
}
