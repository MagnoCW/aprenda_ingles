import 'package:aprenda_ingles/screens/bichos.dart';
import 'package:aprenda_ingles/screens/numeros.dart';
import 'package:aprenda_ingles/screens/vogais.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget _tabBar(BuildContext context, String title) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprenda Inglês',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff795548),
        ),
        scaffoldBackgroundColor: const Color(0xfff5e9b9),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Aprenda Inglês',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: ThemeData().appBarTheme.backgroundColor,
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                controller: _tabController,
                tabs: <Widget>[
                  _tabBar(context, 'Bichos'),
                  _tabBar(context, 'Números'),
                  _tabBar(context, 'Vogais'),
                ]),
          ),
          body: TabBarView(controller: _tabController, children: const <Widget>[
            Bichos(),
            Numeros(),
            Vogais(),
          ])),
    );
  }
}
