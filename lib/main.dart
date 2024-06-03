import 'package:flutter/material.dart';
import 'package:panktikhata/frontpage.dart';
import 'package:panktikhata/panktiapi.dart';
void main() {
	final f = CodeFFI();
	print(f.sum(1, 2));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pankti Khata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Noto Serif Bengali',
      ),
      home: const MyHomePage(title: 'Pankti Khata'),
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
    return const Scaffold(
      body: PanktiFrontPage(),
    );
  }
}
