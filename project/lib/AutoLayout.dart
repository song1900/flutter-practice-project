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
        child: 
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // width: 200,
                color: Colors.amber,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                // width: 200,
                color: Colors.green,
              ),
            ),
            // Flexible(
            //   flex: 1,
            //   fit: FlexFit.loose,
            //   child: Container(
            //     // width: 200,
            //     color: Colors.amber,
            //   ),
            // ),
            // Flexible(
            //   flex: 2,
            //   child: Container(
            //     // width: 200,
            //     color: Colors.green,
            //   ),
            // ),
          ],
        )
        // Row(
        //   children: [
        //     Flexible(
        //       flex: 1,
        //       fit: FlexFit.loose,
        //       child: Container(
        //         height: 200,
        //         color: Colors.amber,
        //       ),
        //     ),
        //     Flexible(
        //       flex: 2,
        //       child: Container(
        //         height: 200,
        //         color: Colors.green,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}