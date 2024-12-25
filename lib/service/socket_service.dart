import 'dart:io';

import '../assets/constants.dart';

abstract class SocketService {
  static Socket? socket;

  static Future<void> connect() async {
    try {
      socket = await Socket.connect(Constants.base.replaceAll('http://', ''), 9090);

      socket?.listen((List<int> data) {
        print('SERVER RESPONSE: ${String.fromCharCodes(data)}');
      });
    } catch (e) {
      print('ERROR on socket connection $e');
    }
    send('Hello from new client ');
  }

  static void send(String message) {
    socket?.write(message);
  }

  static void disconnect() {
    socket?.destroy();
  }
}
//
// void main() async {
//   // Connect to the server
//   final socket = await Socket.connect('127.0.0.1', 8080);
//
//   // Send data to the server
//   socket.write('Hello from Dart client!');
//
//   // Listen for the server's response
//   socket.listen((List<int> data) {
//     print('Response from server: ${String.fromCharCodes(data)}');
//   });
//
//   // Close the connection
//   await Future.delayed(const Duration(seconds: 1));
//   socket.destroy();
// }
