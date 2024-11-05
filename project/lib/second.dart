import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
           icon: const Icon(Icons.arrow_back_ios)
           ),
        title: const Text("Test Title"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blue,
          child: const Text("This is the second view"),
        ),
      )
    );
  }
}