import 'dart:io';

abstract class SocketService {
  static late final Socket socket;

  static Future<void> connect() async {
    socket = await Socket.connect('127.0.0.1', 8080);

    socket.listen((List<int> data) {
      print('SERVER RESPONSE: ${String.fromCharCodes(data)}');
    });
  }

  static void send(String message) {
    socket.write(message);
  }

  static void disconnect() {
    socket.destroy();
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
