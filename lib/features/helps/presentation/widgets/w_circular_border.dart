import 'dart:math';

import 'package:flutter/material.dart';

class CircularBorder extends StatelessWidget {

  final Color color;
  final double size;
  final double width;
  final double height;
  final Widget icon;

  const CircularBorder({ Key? key, this.color = Colors.blue, this.size = 70, this.width = 7.0,  required this.icon,this.height=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          icon,
          CustomPaint(
            size: Size(size, size),
            foregroundPainter: MyPainter(
                completeColor: color,
                width: width

            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor =  Colors.transparent;
  Color completeColor;
  double width;
  MyPainter(
      { required this.completeColor, required this.width});
  @override
  void paint(Canvas canvas, Size size) {

    Paint complete =  Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.butt
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = width
      ..strokeWidth = 10;



      Offset center =  Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var percent = (size.width *0.000004) / 2;

    double arcAngle = 2 * pi * percent;
    print("$radius - radius");
    print("$arcAngle - arcAngle");
    print("${radius / arcAngle} - divider");

    for (var i = 0; i < 24; i++) {
      var init = (-pi / 4)*(i/2);

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          init, arcAngle, false, complete);
    }


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}