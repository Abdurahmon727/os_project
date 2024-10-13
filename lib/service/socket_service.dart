import 'dart:io';

void main() async {
  // Connect to the server
  final socket = await Socket.connect('127.0.0.1', 8080);

  // Send data to the server
  socket.write('Hello from Dart client!');

  // Listen for the server's response
  socket.listen((List<int> data) {
    print('Response from server: ${String.fromCharCodes(data)}');
  });

  // Close the connection
  await Future.delayed(const Duration(seconds: 1));
  socket.destroy();
}

class SocketService {
  void connectSocket() {}
}
