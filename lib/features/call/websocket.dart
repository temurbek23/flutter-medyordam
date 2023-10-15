import 'dart:convert';
import 'package:dla_bz/features/call/websocket_config.dart';
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/io.dart';

class CustomWebsocket {
  late IOWebSocketChannel channel;
  late HtmlWebSocketChannel channelHtml;
  late bool isWeb;
  CustomWebsocket.connect({required this.isWeb}) {
    print("Connecting");

    final url = WebSocketConfig.getUrl();

    if (isWeb) {
      channelHtml = HtmlWebSocketChannel.connect(url);
    } else {
      channel = IOWebSocketChannel.connect(url);
    }
    // channel = IOWebSocketChannel.connect(url);
    print("Connected");
  }

  join(String channel) {
    print("Joining channel: $channel");
    Map<String, dynamic> data = {
      'event': 'pusher:subscribe',
      'data': {
        'channel': channel,
      }
    };

    if (isWeb) {
      channelHtml.sink.add(jsonEncode(data));
    } else {
      this.channel.sink.add(jsonEncode(data));
    }
    print("Joined");
  }

  Stream<dynamic> getStream() {
    return isWeb ? channelHtml.stream : channel.stream;
  }

  void close() {
    if (isWeb) {
      channelHtml.sink.close();
    } else {
      channel.sink.close();
    }

    print("Socket channel closed");
  }

  static Map<String, dynamic> getJson(String event) {
    return jsonDecode(jsonDecode(event)['data']);
  }

  static String getEvent(String event) {
    return jsonDecode(event)['event'];
  }

  static String getChannel(String event) {
    return jsonDecode(event)['channel'];
  }
}
