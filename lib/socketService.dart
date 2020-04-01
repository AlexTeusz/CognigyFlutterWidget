import 'package:socket_io_client/socket_io_client.dart' as IO;


class SocketService {
  IO.Socket socket;
  bool connected = false;

  sendMessage(String text) {

    if (connected) {
      socket.emit('processInput', {
        'URLToken': '849de509618869b1cf5d14855354b7b81ceb43bd5f5d4a6e72080ddaed9bc3ea',
        'text': text.toString(),
        'userId': '2763456456456456',
        'sessionId': '24234324324234324',
        'channel': 'flutter',
        'data': null,
        'source': 'device',
      });
    } else {
      print('[SocketClient] Unable to directly send your message since we are not connected. Your message will be buffered and sent later on.');
    }
  }

  createSocketConnection() {
    print('calling socket service');
    socket = IO.io('https://endpoint-internal.cognigy.ai/', <String, dynamic>{
      'transports': ['websocket'],
      'extraHeaders': {
        'URLToken': '849de509618869b1cf5d14855354b7b81ceb43bd5f5d4a6e72080ddaed9bc3ea'
      }
    });


    this.socket.on("connect", (_) {
      print("[SocketClient] connection established");
      connected = true;
    });

    this.socket.on("disconnect", (_) => print("[SocketClient] disconnected"));
  }
}