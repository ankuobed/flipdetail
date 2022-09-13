import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final void Function() onMenuPressed;
  final Animation<double> animation;
  const Header({
    Key? key,
    required this.onMenuPressed,
    required this.animation,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: widget.onMenuPressed,
                icon: AnimatedIcon(
                  progress: widget.animation,
                  icon: AnimatedIcons.menu_close,
                  size: 30,
                ),
              ),
              const Text('PRODUCT DETAIL',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              const SizedBox(width: 50)
            ],
          ),
        ),
      ),
    );
  }
}
