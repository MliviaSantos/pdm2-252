// servidor.dart
import 'dart:io';

Future<void> main() async {
  final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 4040);
  print('Servidor aguardando conexões em ${server.address.address}:${server.port}');

  await for (final socket in server) {
    print('Novo dispositivo conectado: ${socket.remoteAddress.address}:${socket.remotePort}');
    
    socket.listen(
      (data) {
        final mensagem = String.fromCharCodes(data).trim();
        print('Temperatura recebida: $mensagem ºC');
      },
      onDone: () {
        print('Dispositivo desconectado: ${socket.remoteAddress.address}:${socket.remotePort}');
      },
      onError: (err) {
        print('Erro na conexão: $err');
      },
    );
  }
}
