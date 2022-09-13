import 'package:flutter/material.dart';

import 'dart:math' as math;

class Product extends StatefulWidget {
  final Animation<double> animation;
  const Product({Key? key, required this.animation}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: widget.animation,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(-math.pi / 2 * widget.animation.value),
          origin: Offset(deviceWidth / 2, deviceHeight / 8),
          child: child,
        );
      },
      child: Container(
        color: const Color(0xffDCD4C4),
        height: deviceHeight,
        width: deviceWidth,
        child: Stack(
          children: [
            Positioned(
              top: 320,
              left: -130,
              child: Transform.rotate(
                angle: math.pi / 2,
                child: const Text('FENDER',
                    style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffABA596))),
              ),
            ),
            Positioned(
              top: deviceHeight * 0.7,
              left: deviceWidth * 0.53,
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 100,
                    blurRadius: 100,
                  )
                ]),
              ),
            ),
            Positioned(
              bottom: 150,
              left: 25,
              child: Image.asset(
                'assets/images/guitar.png',
                height: deviceHeight * 0.72,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
