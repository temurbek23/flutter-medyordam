// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'package:sdp_transform/sdp_transform.dart';
// import 'package:toolpor_webinar/data/dto/webinar/webinar_dto.dart';
//
// import '../../../../utils/websocket.dart';
//
// class WebinarHostVideoScreen extends StatefulWidget {
//   final WebinarDto webinarDto;
//
//   const WebinarHostVideoScreen({
//     Key? key,
//     required this.webinarDto,
//   }) : super(key: key);
//
//   @override
//   State<WebinarHostVideoScreen> createState() => _WebinarHostVideoScreenState();
// }
//
// class _WebinarHostVideoScreenState extends State<WebinarHostVideoScreen> {
//   Map<dynamic, dynamic>? offer;
//   final _localVideoRenderer = RTCVideoRenderer();
//
//   @override
//   void initState() {
//     super.initState();
//     initRenderers();
//     _initPeers();
//   }
//
//   void initRenderers() async {
//     await _localVideoRenderer.initialize();
//   }
//
//   @override
//   void dispose() async {
//     _stopLocalStream();
//     _localVideoRenderer.dispose();
//     sendOffer(offer: null);
//     _closeSocket();
//     super.dispose();
//   }
//
//   final dio = Dio();
//   List<WebinarDto> webinars = [];
//
//   void sendOffer({
//     Map<dynamic, dynamic>? offer,
//     Map<dynamic, dynamic>? candidate,
//   }) async {
//     final response = await dio.post(
//       'http://192.168.0.192:8000/api/admin/update-offer/${widget.webinarDto.id}',
//       data: {
//         'offer': offer,
//         'candidate': candidate,
//       },
//       options: Options(
//         headers: {
//           'Authorization':
//           'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4wLjE5Mjo4MDAwL2FwaS9hZG1pbi9sb2dpbiIsImlhdCI6MTY5MDQ2ODQ5MiwiZXhwIjoxNzAwODM2NDkyLCJuYmYiOjE2OTA0Njg0OTIsImp0aSI6ImRCaERZRkFaMG1VeUFQQXIiLCJzdWIiOiIyIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.27QbTYIJs0CYJ6fLxqbqCYPmejuSvduc3nCWMf3SelM',
//           'X-Authorization': 'Programmer salom',
//         },
//       ),
//     );
//
//     print(response.data);
//   }
//
//   bool _offer = false;
//   RTCPeerConnection? _peerConnection;
//   MediaStream? _localStream;
//
//   _initPeers() async {
//     print("getting user media");
//     _localStream = await _getUserMedia();
//     print("got user media");
//     print("create peer connection");
//
//     _peerConnection = await _createPeerConnection();
//
//     print("end peer connection");
//
//     checkOffer();
//   }
//
//   late CustomWebsocket socket;
//
//   _connectSocket() {
//     socket = CustomWebsocket.connect(isWeb: true);
//
//     final channelName = "__host__${widget.webinarDto.token}";
//     print("CHANNEL NAME: $channelName");
//     socket.join(channelName);
//
//     socket.getStream().listen((event) {
//       print("EVENT:");
//       _doSocketJob(event);
//     });
//   }
//
//   _doSocketJob(dynamic event) {
//     final eventName = CustomWebsocket.getEvent(event);
//     switch (eventName) {
//       case 'App\\Events\\JoinWebinar':
//         {
//           final json = CustomWebsocket.getJson(event);
//           print("ANSWERCHA");
//           //  print(json['answer']);
//           _setRemoteDescription(json['answer']);
//           break;
//         }
//     }
//   }
//
//   void _setRemoteDescription(answer) async {
//     dynamic session = answer;
//
//     String sdp = write(session, null);
//
//     RTCSessionDescription description = RTCSessionDescription(sdp, 'answer');
//     print(description.toMap());
//
//     await _peerConnection!.setRemoteDescription(description);
//   }
//
//   // void _setRemoteDescription() async {
//   //   String jsonString = sdpController.text;
//   //   dynamic session = await jsonDecode('$jsonString');
//   //
//   //   String sdp = write(session, null);
//   //
//   //   RTCSessionDescription description = RTCSessionDescription(sdp, 'answer');
//   //   print(description.toMap());
//   //
//   //   await _peerConnection!.setRemoteDescription(description);
//   // }
//
//   _closeSocket() {
//     socket.close();
//   }
//
//   void _stopLocalStream() {
//     if (_localStream != null) {
//       _localStream!.getTracks().forEach((track) {
//         track.stop();
//       });
//       _localStream = null;
//     }
//   }