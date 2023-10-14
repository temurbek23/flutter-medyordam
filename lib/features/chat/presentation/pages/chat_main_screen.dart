import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VideoChatScreen extends StatefulWidget {
  const VideoChatScreen({Key? key}) : super(key: key);

  @override
  State<VideoChatScreen> createState() => _VideoChatScreenState();
}

class _VideoChatScreenState extends State<VideoChatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
