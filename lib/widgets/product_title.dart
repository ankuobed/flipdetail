import 'package:flutter/material.dart';

class ProductTitle extends StatefulWidget {
  final Animation<double> animation;
  const ProductTitle({Key? key, required this.animation}) : super(key: key);

  @override
  State<ProductTitle> createState() => _ProductTitleState();
}

class _ProductTitleState extends State<ProductTitle> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 50,
      left: 40,
      width: deviceWidth / 2,
      child: AnimatedBuilder(
        animation: widget.animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, (-deviceHeight + 310) * widget.animation.value),
            child: child,
          );
        },
        child: const Text(
          'Fender American Elit Strat',
          style:
              TextStyle(fontSize: 34, fontWeight: FontWeight.bold, height: 1),
        ),
      ),
    );
  }
}
