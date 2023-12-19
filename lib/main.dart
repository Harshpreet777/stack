import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              color: Colors.blue,
              child: Stack(clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -30,
                    left: MediaQuery.of(context).size.width * 0.36,
                    child: Container(
                      color: Colors.amber,
                      height: 100,
                      child: Image.network(
                          'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-136-116502.png?f=webp&w=512'),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
