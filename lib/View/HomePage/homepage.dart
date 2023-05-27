import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Password Manager'),
      ),
      body: SafeArea(
          child: Column(
        children: [],
      )),
      floatingActionButton: FloatingActionButton(child: const Text('add details'),
        onPressed: () {},
      ),
    );
  }
}
