// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:dla_bz/features/call/webinar_dto.dart';
// import 'package:dla_bz/features/call/websocket.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
//
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
//
//
//   _getUserMedia() async {
//     final Map<String, dynamic> mediaConstraints = {
//       'audio': true,
//       'video': true
//           ? {
//         'facingMode': 'user',
//       }
//           : false,
//     };
//
//     MediaStream stream =
//     await navigator.mediaDevices.getUserMedia(mediaConstraints);
//     _localVideoRenderer.srcObject = stream;
//     return stream;
//   }
//
//   _createPeerConnection() async {
//     Map<String, dynamic> configuration = {
//       "iceServers": [
//         {"url": "stun:stun.l.google.com:19302"},
//       ]
//     };
//
//     final Map<String, dynamic> offerSdpConstraints = {
//       "mandatory": {
//         "OfferToReceiveAudio": true,
//         "OfferToReceiveVideo": true,
//       },
//       "optional": [],
//     };
//
//     RTCPeerConnection pc =
//     await createPeerConnection(configuration, offerSdpConstraints);
//
//     pc.addStream(_localStream!);
//
//     pc.onIceCandidate = (e) {
//       print('CANDIDATE KELDI');
//
//       if (e.candidate != null) {
//         final can = {
//           'candidate': e.candidate,
//           'sdpMid': e.sdpMid,
//           'sdpMlineIndex': e.sdpMLineIndex
//         };
//         print(jsonEncode(can));
//
//         if (!candidateReceived) {
//           sendOffer(offer: offer, candidate: can);
//           candidateReceived = true;
//         }
//       }
//     };
//
//     pc.onIceConnectionState = (e) {
//       print(e);
//     };
//
//
//     return pc;
//   }
//
//   bool candidateReceived = false;
//
//   void _createOffer() async {
//     print('OFFER IS CREATING');
//     RTCSessionDescription description =
//     await _peerConnection!.createOffer({'offerToReceiveVideo': 1});
//     var session = parse(description.sdp.toString());
//     print(json.encode(session));
//     offer = session; // OFFER OLINAYAPTI
//     _offer = true;
//
//     _peerConnection!.setLocalDescription(description);
//     print('OFFER IS CREATED');
//   }
//
//   // 1. Checking the offer whether it is null or not
//   checkOffer() {
//     print("check offer");
//     print(widget.webinarDto.offer);
//
//     if (widget.webinarDto.offer == null) {
//       _createOffer();
//       _connectSocket();
//     }
//   }
//
//   void _addCandidate() async {
//     String jsonString = sdpController.text;
//     print("\n\nJSONSTRING: $jsonString");
//     dynamic session = await jsonDecode('$jsonString');
//     print(session['candidate']);
//     dynamic candidate = new RTCIceCandidate(
//         session['candidate'], session['sdpMid'], session['sdpMlineIndex']);
//     await _peerConnection!.addCandidate(candidate);
//   }
//
//   final sdpController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Webinar HOST Video Screen - ${widget.webinarDto.token}'),
//         backgroundColor: Colors.orange,
//       ),
//       body: Column(
//         children: [
//           Flexible(
//             child: Container(
//               key: Key('local'),
//               margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
//               decoration: BoxDecoration(color: Colors.black),
//               child: RTCVideoView(_localVideoRenderer),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }