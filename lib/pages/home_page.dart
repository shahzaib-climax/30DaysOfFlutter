import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Hello $days"),
      ),
      drawer:  MyDrawer(),
    );
  }
}
