import 'package:flipdetail/pages/product_detail_page.dart';
import 'package:flipdetail/pages/product_page.dart';
import 'package:flipdetail/widgets/header.dart';
import 'package:flipdetail/widgets/product_title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  );

  late var animation =
      CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onMenuPressed() {
    if (controller.isCompleted) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA59F8F),
      body: Stack(
        children: [
          Product(animation: animation),
          ProductDetail(animation: animation),
          Header(animation: animation, onMenuPressed: onMenuPressed),
          ProductTitle(animation: animation)
        ],
      ),
    );
  }
}
