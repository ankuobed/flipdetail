import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final Animation<double> animation;
  const ProductDetail({Key? key, required this.animation}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Positioned(
      left: 0,
      bottom: 0,
      child: AnimatedBuilder(
        animation: widget.animation,
        builder: (context, child) {
          return Transform.scale(
            scaleY: 1 * widget.animation.value,
            origin: Offset(0, deviceHeight * 0.875),
            child: child,
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.875,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xffDCD4C4),
            border: Border(
              top: BorderSide(color: Color(0xffFCFBF3), width: 4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 170),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. sed do eiusmod tempor incididunt.',
                  style: TextStyle(fontSize: 18, height: 1.6),
                ),
                const SizedBox(height: 30),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                        'https://www.luvze.com/wp-content/uploads/2016/12/477085398_19c8d6dcf9_z.jpg'),
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
