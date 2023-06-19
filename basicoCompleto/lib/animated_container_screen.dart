import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatelessWidget {
  const FutureBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = 0.0;
    return Center(
      child: FutureBuilder(
        future: Future.delayed(Duration(seconds: 1), () => size = 200.0),
        builder: (context, snapshot) => AnimatedContainer(
            width: size,
            height: size,
            color: Colors.red,
            duration: const Duration(milliseconds: 800)),
      ),
    );
  }
}
