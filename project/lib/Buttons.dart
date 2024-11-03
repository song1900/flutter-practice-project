import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic
                  )
                ),
                onPressed: () => print("Elevated Button"),
                child: const Text("ElevatedButton")
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => print("Text Button"),
                child: const Text("TextButton")
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("Outlined Button"),
                child: const Text("OutlinedButton")
              ),
            )
          ],
        ),
      )
    );
  }


}