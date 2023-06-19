import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'contador_cubit.dart';

class ContadorView extends StatelessWidget {
  const ContadorView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Contador')),
      body: Center(
        child: BlocBuilder<ContadorCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('fabInc'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<ContadorCubit>().incrementar(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('fabDec'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<ContadorCubit>().decrementar(),
          ),
        ],
      ),
    );
  }
}
