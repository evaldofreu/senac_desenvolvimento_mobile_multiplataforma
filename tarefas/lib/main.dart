import 'package:flutter/material.dart';
import 'package:tarefas/screens/tarefas/tarefas_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {'/': (context) => TarefasRouter.route()},
    );
  }
}
