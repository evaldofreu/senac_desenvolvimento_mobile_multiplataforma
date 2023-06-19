import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'contador_cubit.dart';
import 'contador_view.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContadorCubit(),
      child: const ContadorView(),
    );
  }
}
