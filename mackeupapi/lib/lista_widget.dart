import 'package:flutter/material.dart';
import 'package:mackeupapi/repo.dart';

class ListaWidget extends StatelessWidget {
  const ListaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Maquiagens")),
      body: FutureBuilder<List<dynamic>>(
        future: Repo().obterMaquiagens(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: snapshot.data!
                      .map((e) => Card(
                            elevation: 5,
                            child: SizedBox(
                              width: 180,
                              height: 222,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Image.network(e.imagem,
                                        fit: BoxFit.contain,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(
                                                  Icons.no_photography_rounded,
                                                  size: 32,
                                                )),
                                  ),
                                  Text(
                                    e.nome ?? "",
                                    style: const TextStyle(fontSize: 24),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(e.marca ?? "")
                                ],
                              ),
                            ),
                          ))
                      .toList()),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).progressIndicatorTheme.color),
              ),
            );
          }
        },
      ),
    );
  }
}
